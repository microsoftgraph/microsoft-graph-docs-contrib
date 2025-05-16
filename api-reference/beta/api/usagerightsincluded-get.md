---
title: "Get usageRightsIncluded"
description: "Get the usage rights granted to the calling user for a specific sensitivity label that has admin-defined permissions."
author: "ArunGedela"
ms.date: 04/21/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get usageRightsIncluded

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the usage rights granted to the calling user for a specific sensitivity label that has admin-defined permissions.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "purviewecosystem-sensitivitylabels-getrightsforlabelid-permissions"
} -->
[!INCLUDE [permissions-table](../includes/permissions/usagerightsincluded-get-permissions.md)]

## HTTP request

```http
GET /security/dataSecurityAndGovernance/sensitivityLabels/{labelId}/rights
```

## Request headers

| Name                | Description                                                                                                                                 |
| :------------------ | :------------------------------------------------------------------------------------------------------------------------------------------ |
| Authorization       | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
| Client-Request-Id   | Optional. A client-generated GUID to trace the request. Recommended for troubleshooting.                                                  |

## Query parameters

| Parameter  | Type   | Description                                                                                                                                                               |
| :--------- | :----- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| ownerEmail | String | Optional. The email address of the content owner. This parameter is sometimes required by the underlying Rights Management service depending on the protection template. |
| userEmail  | String | Optional. The email address of the user for whom the rights are being requested. This parameter is sometimes required by the underlying Rights Management service.          |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [usageRight](../resources/usageright.md) enum values in the response body, representing the rights granted to the user for the specified label.

If the label is not found, doesn't have admin-defined protection, or the user doesn't have the `VIEW` right, the API might return an error response (for example, `403 Forbidden` or `404 Not Found`) with details in an [error object](/graph/errors).

## Examples

### Example 1: Request to get the rights for a specific sensitivity label for the user `4e4234dd-377b-42a3-935b-0e42f138fa23`

#### Request

<!-- {
  "blockType": "request",
  "name": "get_rights_for_sensitivitylabel",
  "sampleKeys": ["4e4234dd-377b-42a3-935b-0e42f138fa23"]
} -->
```http
GET https://graph.microsoft.com/beta/security/dataSecurityAndGovernance/sensitivityLabels/4e4234dd-377b-42a3-935b-0e42f138fa23/rights?ownerEmail=bob@contoso.com
Authorization: Bearer {token}
Client-Request-Id: 7c9b1b4c-5b5a-4e3e-9f1b-2d9b0b4a9a0a
```

#### Response

The following example shows the response containing the usage rights granted to the user.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.usageRight)"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.usageRight)",
  "id": "f306e677-4c14-4136-b2c3-d9c7dd448cc1",
  "ownerEmail": "bob@contoso.com",
  "value": "docEdit, edit, forward, print, reply, replyAll, view, extract, viewRightsData, objModel"
}
```

### Example 2: error response

#### Request

<!-- {
  "blockType": "request",
  "name": "get_rights_for_sensitivitylabel",
  "sampleKeys": ["4e4234dd-377b-42a3-935b-0e42f138fa23"]
} -->
```http
GET https://graph.microsoft.com/beta/security/dataSecurityAndGovernance/sensitivityLabels/4e4234dd-377b-42a3-935b-0e42f138fa23/rights?ownerEmail=bob@contoso.com
Authorization: Bearer {token}
Client-Request-Id: 7c9b1b4c-5b5a-4e3e-9f1b-2d9b0b4a9a0a
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "name": "get_rights_for_sensitivitylabel_error"
} -->
```http
HTTP/1.1 403 Forbidden
Content-Type: application/json

{
  "error": {
    "code": "AccessDenied",
    "message": "The user does not have sufficient rights for the specified label, or the label was not found.",
    "innerError": {
      "date": "2025-04-21T18:30:00",
      "request-id": "7c9b1b4c-5b5a-4e3e-9f1b-2d9b0b4a9a0a",
      "client-request-id": "7c9b1b4c-5b5a-4e3e-9f1b-2d9b0b4a9a0a"
    }
  }
}
```
