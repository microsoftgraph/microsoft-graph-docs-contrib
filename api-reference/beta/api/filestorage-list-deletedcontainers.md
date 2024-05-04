---
title: "List deleted fileStoageContainers"
description: "Get a list of deleted fileStorageContainers."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# List deleted fileStoageContainers

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the list of [fileStorageContainer](../resources/filestoragecontainer.md) objects from the deleted container collection.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestorage-list-deletedcontainers-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestorage-list-deletedcontainers-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deletedStorageContainers?$filter=containerTypeId eq {containerTypeId}
```

## Query parameters
This method requires the `containerTypeId` parameter. It supports OData skip-top paging, `$orderBy` and `$filter` query parameters; `$expand` query parameter is not supported.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [fileStorageContainer](../resources/filestoragecontainer.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_deleted_filestoragecontainer"
}
-->
``` http
GET  https://graph.microsoft.com/beta/deletedStorageContainers?$filter=containerTypeId eq e2756c4d-fa33-4452-9c36-2325686e1082
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.fileStorageContainer)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.fileStorageContainer",
      "id": "b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z",
      "displayName": "My File Storage Container",
      "createdDateTime": "2021-11-24T15:41:52.347Z",
      "deletedDateTime": "2022-08-11T12:35:16.300Z"
    }
  ]
}
```

