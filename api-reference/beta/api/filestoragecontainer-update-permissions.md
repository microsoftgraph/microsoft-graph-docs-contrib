---
title: "Update fileStoreContainer permission"
description: "Update fileStorageContainer permission."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: apiPageType
---

# Update fileStoreContainer permission


Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update an existing [permission](../resources/permission.md) on a [fileStorageContainer](../resources/filestoragecontainer.md) by making a PATCH request on the permission resource. Only the **roles** property can be updated.  One role per user is supported. A new ID is generated for the updated permissions object.


## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "filestoragecontainer_update_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-update-permissions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /storage/fileStorage/containers/{containerId}/permissions/{permissionId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply the new value for the **roles** property.

|Permission type|Property|Type|Description|
|:---|:---|:---|:---|
|User|roles|Collection of String|Supported roles are `reader`, `writer`, `manager`, and `owner`. Required.|


## Response

If successful, this method returns a `200 OK` response code.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_filestoragecontainer_permissions"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/storage/fileStorage/containers/{containerId}/permissions/{permissionId}
Content-Type: application/json

{
  "roles": ["manager"]
}
```
### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
```

