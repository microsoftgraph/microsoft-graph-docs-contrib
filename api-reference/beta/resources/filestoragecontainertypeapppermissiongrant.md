---
title: "fileStorageContainerTypeAppPermissionGrant resource type"
description: "Permissions granted to an app."
author: "javieralvarezchiang"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# fileStorageContainerTypeAppPermissionGrant resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains the permissions granted to an app when accessed with delegated permissions and application only permissions.


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/filestoragecontainertyperegistration-list-applicationpermissiongrants.md)|[fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md) collection|Get a list of the fileStorageContainerTypeAppPermissionGrant objects and their properties.|
|[Create](../api/filestoragecontainertyperegistration-post-applicationpermissiongrants.md)|[fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md)|Create a new fileStorageContainerTypeAppPermissionGrant object.|
|[Get](../api/filestoragecontainertypeapppermissiongrant-get.md)|[fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md)|Read the properties and relationships of a fileStorageContainerTypeAppPermissionGrant object.|
|[Update](../api/filestoragecontainertypeapppermissiongrant-update.md)|[fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md)|Update the properties of a fileStorageContainerTypeAppPermissionGrant object.|
|[Delete](../api/filestoragecontainertyperegistration-delete-applicationpermissiongrants.md)|None|Delete a fileStorageContainerTypeAppPermissionGrant object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appId|String|Application ID to set permissions to.|
|applicationPermissions|fileStorageContainerTypeAppPermission collection|Allowed [fileStorageContainerTypeAppPermissions][] when using delegated tokens.|
|delegatedPermissions|fileStorageContainerTypeAppPermission collection|
Allowed [fileStorageContainerTypeAppPermissions][] when using application tokens.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "appId",
  "@odata.type": "microsoft.graph.fileStorageContainerTypeAppPermissionGrant",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fileStorageContainerTypeAppPermissionGrant",
  "appId": "String (identifier)",
  "delegatedPermissions": [
    "String"
  ],
  "applicationPermissions": [
    "String"
  ]
}
```

