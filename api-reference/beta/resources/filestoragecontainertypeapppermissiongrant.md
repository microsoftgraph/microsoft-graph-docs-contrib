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

Defines the user-delegated or app-only permissions on a container type granted to an application.


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
|applicationPermissions|fileStorageContainerTypeAppPermission collection|Allowed [permissions](https://learn.microsoft.com/sharepoint/dev/embedded/development/auth#container-type-application-permissions) when using delegated tokens. Allowed values: none, readContent, writeContent, manageContent, create, delete, read, write, enumeratePermissions, addPermissions, updatePermissions, deletePermissions, deleteOwnPermission, managePermissions, full|
|delegatedPermissions|fileStorageContainerTypeAppPermission collection|Allowed [permissions](https://learn.microsoft.com/sharepoint/dev/embedded/development/auth#container-type-application-permissions) when using application tokens. Allowed values: none, readContent, writeContent, manageContent, create, delete, read, write, enumeratePermissions, addPermissions, updatePermissions, deletePermissions, deleteOwnPermission, managePermissions, full|

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
