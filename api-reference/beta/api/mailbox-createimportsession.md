---
title: "mailbox: createImportSession"
description: "Create a session to import an Exchange mailbox item using its FastTransfer stream (FTS) format."
author: "cparker-msft"
ms.date: 12/06/2024
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# mailbox: createImportSession

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a session to [import an Exchange mailbox item](/graph/import-exchange-mailbox-item) that was exported using the [exportItems](./mailbox-exportitems.md) API.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "mailbox_createimportsession" } -->
[!INCLUDE [permissions-table](../includes/permissions/mailbox-createimportsession-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /admin/exchange/mailboxes/{mailboxId}/createImportSession
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and a [mailboxItemImportSession](../resources/mailboxitemimportsession.md) in the response body.

## Examples

### Request

The following example shows how to create an import session. The opaque URL, returned in the **importUrl** property of the response, is preauthenticated and contains the appropriate authorization token for subsequent POST queries in the https://outlook.office365.com domain. That token expires by **expirationDateTime**. Don't customize this URL for subsequent POST operations.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "mailboxthis.createimportsession",
  "sampleKeys": ["MBX:e0643f21@a7809c93"]
}
-->
```http
POST https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0643f21@a7809c93/createImportSession
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/mailboxthiscreateimportsession-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/mailboxthiscreateimportsession-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/mailboxthiscreateimportsession-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/mailboxthiscreateimportsession-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/mailboxthiscreateimportsession-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/mailboxthiscreateimportsession-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mailboxItemImportSession"
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 232

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.mailboxItemImportSession",
    "importUrl": "https://outlook.office365.com/api/gbeta/Mailboxes('MBX:e0643f21@a7809c93')/importItem?authtoken=eyJhbGciOiJSUzI1NiIsImtpZCI6IjFTeXQ1b",
    "expirationDateTime": "2024-10-17T19:00:48.1052906Z"
}
```
