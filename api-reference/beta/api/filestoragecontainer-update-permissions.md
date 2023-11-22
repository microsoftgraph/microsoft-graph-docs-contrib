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

Update an existing [permission](../resources/permission.md) to an existing [fileStorageContainer](../resources/filestoragecontainer.md) by patching the permission resource. Only the **roles** property can be updated.  One role per user is supported. A new ID is generated for the updated permissions object.


The application calling this API must have permissions to update fileStorageContainers permissions for the respective container type.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see the [permissions reference](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|FileStorageContainer.Selected|
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

The following property on these permission types can be modified.

|Permission Type|Property|Type|Description|
|:---|:---|:---|:---|
|User|roles|Collection of String|Supported roles are reader, writer, manager, and owner. Required.|

## Response

If successful, this action returns a `200 OK` response code.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_filestoragecontainer_permissions"
}
-->
``` http
PATCH /storage/fileStorage/containers/{containerId}/permissions/{permissionId}
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

