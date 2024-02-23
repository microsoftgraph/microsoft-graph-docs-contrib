---
title: "Use Postman to try the Microsoft Graph connectors API"
description: "Follow the steps in this guide to try creating a Microsoft Graph connector."
author: mecampos
ms.localizationpriority: high
doc_type: conceptualPageType
ms.prod: search
---

# Use Postman to try the Microsoft Graph connectors API

The [Microsoft Graph Postman collection](use-postman.md) includes sample requests for the connectors API. Developers can use Postman to try the API without writing any code.

## Prerequisites

- Fork the [Microsoft Graph Postman collection](use-postman.md).
- Add the `ExternalConnection.ReadWrite.OwnedBy` and `ExternalItem.ReadWrite.OwnedBy` permissions to the app registration created for Postman.
- [Use Postman to authenticate with app-only authentication](use-postman-with-app-only-authentication.md).

Connectors API requests are located in the **Application** -> **Graph Connectors** folder.

:::image type="content" source="images/connectors-images/18-postman.png" alt-text="Screenshot of the My Workspace section in Postman, showing the Microsoft Graph collection forked":::

## Create a new connection

Find the **Create connection** sample request in the **Connection setup** folder. Use this sample request to create a new connection. The **Connection setup** folder also contains other sample requests for [managing connections](connecting-external-content-manage-connections.md).

## Register connection schema

Find the **Register schema** sample request in the **Connection setup** -> **Manage schema** folder. Use this sample request to register a schema for the connection you created. This request returns a response that looks like the following.

```http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/v1.0/external/connections/sampleConnectionId/operations/616bfeed-666f-4ce0-8cd9-058939010bfc
```

Registering a schema is an asynchronous operation. The URL returned in the `Location` header should be polled for the status of this operation until the status is `completed`. Find the **Get operation status** sample request in the **Connection setup** folder. Replace the request URL with the value in the `Location` header and send the request to check status. This request returns a response that looks like the following.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "id": "616bfeed-666f-4ce0-8cd9-058939010bfc",
    "name": "Sample connection",
    "status": "inprogress",
    "error": null
}
```

Resend the request until the `status` property is set to `completed`. Wait at least one minute between resending this request.

The **Manage schema** folder also contains other sample requests for [managing connections](connecting-external-content-manage-schema.md).

## Add external group member (optional)

If your external service uses non-Microsoft Entra ID access control lists (ACLs), sync those permissions. External groups (along with Microsoft Entra ID users and groups) are used to set permissions on `externalItems` added to a Microsoft Graph connection. For details, see [externalGroup](/graph/api/resources/externalconnectors-externalgroup).

Sample requests for creating external groups and adding members are located in the **Identity Sync** folder.

## Ingest items

> [!NOTE]
> Do not ingest items into the connection until the connection schema is in the `completed` state.

Find the **Put item** sample request in the **Content sync** folder. Use this sample request to ingest an item. The **Content sync** folder also contains other sample requests for [managing items](connecting-external-content-manage-items.md).

## Error handling

For details about how to resolve errors, see [Resolve Microsoft Graph authorization errors](/graph/resolve-auth-errors).

## Related content

- [Use Postman with the Microsoft Graph API](use-postman.md)
