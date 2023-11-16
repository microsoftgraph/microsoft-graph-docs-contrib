---
title: "Update fileStoreContainer permissions"
description: "Update fileStorageContainer permissions"
author: "tonchan-msft"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: apiPageType
---

# Update fileStoreContainer permissions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update existing permissions for a fileStorageContainer by patching the permissions resource. Only the **roles** property can be updated.  One role per user is supported. A new ID is generated for the updated permissions object.

The application calling this API must have permissions to update fileStorageContainers permissions for the respective container type.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

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
|User|roles|String|Supported roles are reader, writer, manager, and owner. Required.|

## Response

If successful, this action returns a `200 OK` response code.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "filestoragecontainerthis.update-permissions"
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
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.permission",
  "id": "owIy5mfG1lbWJliZXJzaGlwfHiZXJzaGlwfHJvcnlicjExMUBvdXRsb29rLmNvbQ",
  "roles": ["manager"],
  "grantedToV2": {
    "user": {
      "id": "86503198-b81b-43fe-81ee-ad45b8848ac9",
      "userPrincipalName": "jason@gmail.com",
      "displayName": "Jason Harris",
      "email": "jason@gmail.com"
    }
  }
}
```

