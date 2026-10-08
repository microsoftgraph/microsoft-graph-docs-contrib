---
title: "fileStorageContainerTypeAppPermissionGrant resource type"
description: "Defines the user-delegated or app-only permissions on a container type granted to an application."
author: "javieralvarezchiang"
ms.date: 11/12/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# fileStorageContainerTypeAppPermissionGrant resource type

Namespace: microsoft.graph

Defines the user-delegated or app-only permissions on a container type granted to an application.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/filestoragecontainertyperegistration-list-applicationpermissiongrants.md)|[fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md) collection|List all [app permission grants](../resources/filestoragecontainertypeapppermissiongrant.md) in a [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md).|
|[Create](../api/filestoragecontainertyperegistration-post-applicationpermissiongrants.md)|[fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md)|Create a new [fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md) object in a [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md).|
|[Get](../api/filestoragecontainertypeapppermissiongrant-get.md)|[fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md)|Read a specific app permission grant in a [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md).|
|[Update](../api/filestoragecontainertypeapppermissiongrant-update.md)|[fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md)|Update the properties of a [fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md) object.|
|[Delete](../api/filestoragecontainertyperegistration-delete-applicationpermissiongrants.md)|None|Delete a [fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md) object in a [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appId|String|Application ID to which to set permissions.|
|applicationPermissions|fileStorageContainerTypeAppPermission collection|Allowed [permissions](/sharepoint/dev/embedded/development/auth#container-type-application-permissions) when you use delegated tokens. The possible values are: `none`, `readContent`, `writeContent`, `manageContent`, `create`, `delete`, `read`, `write`, `enumeratePermissions`, `addPermissions`, `updatePermissions`, `deletePermissions`, `deleteOwnPermission`, `managePermissions`, `full`, `unknownFutureValue`.|
|delegatedPermissions|fileStorageContainerTypeAppPermission collection|Allowed [permissions](/sharepoint/dev/embedded/development/auth#container-type-application-permissions) when you use application tokens. The possible values are: `none`, `readContent`, `writeContent`, `manageContent`, `create`, `delete`, `read`, `write`, `enumeratePermissions`, `addPermissions`, `updatePermissions`, `deletePermissions`, `deleteOwnPermission`, `managePermissions`, `full`, `unknownFutureValue`.|

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
  "applicationPermissions": ["fileStorageContainerTypeAppPermission"],
  "delegatedPermissions": ["fileStorageContainerTypeAppPermission"]
}
```
