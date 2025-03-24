---
title: "Get mailFolderOperation"
description: "Read the properties and relationships of a mailFolderOperation object."
author: "ka-gunase"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 02/25/2025
---

# Get mailFolderOperation

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [mailFolderOperation](../resources/mailfolderoperation.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "mailfolderoperation-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/mailfolderoperation-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/mailFolders/{mailFolderId}/operations/{mailFolderOperationId}
GET /users/{usersId}/mailFolders/{mailFolderId}/operations/{mailFolderOperationId}
```

## Optional query parameters

This method doesn't support [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [mailFolderOperation](../resources/mailfolderoperation.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_mailfolderoperation",
  "sampleKeys": ["AAMkAGVmMDEzM", "a384ae19-4f06-3576-81fc-795707bb498b"]
}
-->
``` http
GET https://graph.microsoft.com/beta/me/mailFolders/AAMkAGVmMDEzM/operations/a384ae19-4f06-3576-81fc-795707bb498b
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mailFolderOperation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.mailFolderOperation",
    "id": "a384ae19-4f06-3576-81fc-795707bb498b",
    "resourceLocation": "https://graph.microsoft.com/beta/users('319eaf3g-c3b8-46f5-9f16-38adf00cbaf3')/mailFolders('AAMkAGU0NTIyOWE0LWYxMmUtNGViMi04ZjMyLTljMjUwYWM3NDI3YQAuAAAAAAA25z0YzVCgR6uHvkjbRp9VAQAretDva7GxQ4Hap0R24JZlAAAAAAEMAAA=')/operations('a384ae19-4f06-3576-81fc-795707bb498b')",
    "status": "succeeded"
  }
}
```
