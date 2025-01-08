---
title: "List operations of mailFolder"
description: "List the long running folder operations of a mailFolder object."
author: "ka-gunase"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# List operations of mailFolder

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the long running folder operations of a [mailFolder](../resources/mailfolder.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "mailfolder-list-operations-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/mailfolder-list-operations-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /users/{usersId}/mailFolders/{mailFolderId}/operations
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of mailFolderOperation objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_mailfolderoperation"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/{usersId}/mailFolders/{mailFolderId}/operations
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
  "value": [
    {
      "@odata.type": "#microsoft.graph.mailFolderOperation",
      "id": "a384ae19-4f06-3576-81fc-795707bb498b",
      "resourceLocation": "String",
      "status": "String"
    }
  ]
}
```

