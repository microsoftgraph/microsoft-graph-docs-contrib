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

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see the [permissions reference](/graph/permissions-reference).
The application that calls API must have permission to update permissions in a fileStorageContainer for the respective container type.

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|FileStorageContainer.Selected|
|Delegated (personal Microsoft account)|Not supported.|
|Application|FileStorageContainer.Selected|

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
|Authorization|Bearer {token}. Required.|
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

