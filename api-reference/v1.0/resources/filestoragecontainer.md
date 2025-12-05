---
title: "fileStorageContainer resource type"
description: "Represents a location where multiple users or a group of users can store files and access them via an application."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
ms.date: 11/14/2024
---

# fileStorageContainer resource type

Namespace: microsoft.graph

Represents a location where multiple users or a group of users can store files and access them via an application. All file system objects in a **fileStorageContainer** are returned as [driveItem](../resources/driveitem.md) resources. 


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/filestorage-list-containers.md)|[fileStorageContainer](../resources/filestoragecontainer.md)|Get a list of [fileStorageContainer](../resources/filestoragecontainer.md) objects that are accessible to a caller.|
|[Create](../api/filestoragecontainer-post.md)|[fileStorageContainer](../resources/filestoragecontainer.md)|Create a new [fileStorageContainer](../resources/filestoragecontainer.md) object.|
|[Get](../api/filestoragecontainer-get.md)|[fileStorageContainer](../resources/filestoragecontainer.md)|Read the properties and relationships of a [fileStorageContainer](../resources/filestoragecontainer.md) object.|
|[Update](../api/filestoragecontainer-update.md)|[fileStorageContainer](../resources/filestoragecontainer.md)|Update the properties of a [fileStorageContainer](../resources/filestoragecontainer.md) object.|
|[Delete](../api/filestorage-delete-containers.md)|None|Delete a [fileStorageContainer](../resources/filestoragecontainer.md) object.|
|[Activate](../api/filestoragecontainer-activate.md)|None|Activate a [fileStorageContainer](../resources/filestoragecontainer.md) object.|
|[Restore deleted container](../api/filestoragecontainer-restore.md)|[fileStorageContainer](../resources/filestoragecontainer.md)|Restore a deleted [fileStorageContainer](../resources/filestoragecontainer.md) object.|
|[Remove deleted containers](../api/filestorage-delete-deletedcontainers.md)|None|Remove a deleted [fileStorageContainer](../resources/filestoragecontainer.md) object.|
|[Permanently delete](../api/filestoragecontainer-permanentdelete.md)|None|Permanently delete a [fileStorageContainer](../resources/filestoragecontainer.md) object.|
|[Get drive](../api/filestoragecontainer-get-drive.md)|[drive](../resources/drive.md)|Get the drive resource from a [fileStorageContainer](../resources/filestoragecontainer.md) object.|
|[List permissions](../api/filestoragecontainer-list-permissions.md)|[permission](../resources/permission.md)| List permissions on a fileStorageContainer.|
|[Add permissions](../api/filestoragecontainer-post-permissions.md)|[permission](../resources/permission.md)|Add permission to a fileStorageContainer.|
|[Update permissions](../api/filestoragecontainer-update-permissions.md)|[permission](../resources/permission.md)|Update permission on a fileStorageContainer.|
|[Delete permissions](../api/filestoragecontainer-delete-permissions.md)|[permission](../resources/permission.md)|Delete permission from a fileStorageContainer.|
|[List custom property](../api/filestoragecontainer-list-customproperty.md)|[filestoragecontainercustompropertyvalue](../resources/filestoragecontainercustompropertyvalue.md)|List custom properties of the fileStorageContainer.|
|[Add custom property](../api/filestoragecontainer-post-customproperty.md)|[filestoragecontainercustompropertyvalue](../resources/filestoragecontainercustompropertyvalue.md)|Add custom property to the fileStorageContainer.|
|[List columns](../api/filestoragecontainer-list-columns.md)|[columnDefinition](../resources/columndefinition.md) collection|List columns in a fileStorageContainer.|
|[Update custom property](../api/filestoragecontainer-update-customproperty.md)|[filestoragecontainercustompropertyvalue](../resources/filestoragecontainercustompropertyvalue.md)|Update custom property on a fileStorageContainer.|
|[Delete custom property](../api/filestoragecontainer-delete-customproperty.md)|[filestoragecontainercustompropertyvalue](../resources/filestoragecontainercustompropertyvalue.md)|Delete custom property from a fileStorageContainer.|
|[Update recycle bin settings](../api/filestoragecontainer-update-recyclebinsettings.md)|[recyclebinsettings](../resources/recyclebinsettings.md)|Update recycleBin settings for a fileStorageContainer.|
|[Delete recycle bin items](../api/filestoragecontainer-delete-recyclebinitem.md)|None|Delete recycle bin items from a fileStorageContainer.|
|[Restore recycle bin items](../api/filestoragecontainer-restore-recyclebinitem.md)|[recycleBinItem](../resources/recyclebinitem.md) collection|Restore recycle bin items in a fileStorageContainer.|
|[Get recycle bin items](../api/filestoragecontainer-list-recyclebinitem.md)|[recycleBinItem](../resources/recyclebinitem.md) collection|List recycle bin items in a fileStorageContainer.|
|[Lock](../api/filestoragecontainer-lock.md)|None|Lock a [fileStorageContainer](../resources/filestoragecontainer.md).|
|[Unlock](../api/filestoragecontainer-unlock.md)|None|Unlock a [fileStorageContainer](../resources/filestoragecontainer.md).|
|[Create migration job](../api/filestoragecontainer-post-migrationjobs.md)|[sharePointMigrationJob](../resources/sharepointmigrationjob.md)|Create a new [sharePointMigrationJob](../resources/sharepointmigrationjob.md) object that is scheduled to run at a later time to migrate content from an intermediary storage to the target [fileStorageContainer](../resources/filestoragecontainer.md).|
|[Provision migration containers](../api/filestoragecontainer-provisionmigrationcontainers.md)|[sharePointMigrationContainerInfo](../resources/sharepointmigrationcontainerinfo.md)|Provision SharePoint-managed Azure blob containers as temporary storage for migration content and metadata.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|containerTypeId|Guid|Container type ID of the **fileStorageContainer**. For details about container types, see [Container Types](/sharepoint/dev/embedded/concepts/app-concepts/containertypes). Each container must have only one container type. Read-only.|
|createdDateTime|DateTimeOffset|Date and time of the **fileStorageContainer** creation. Read-only.|
|customProperties|[fileStorageContainerCustomPropertyDictionary](../resources/filestoragecontainercustompropertydictionary.md)|Custom property collection for the **fileStorageContainer**. Read-write.|
|description|String|Provides a user-visible description of the **fileStorageContainer**. Read-write.|
|displayName|String|The display name of the **fileStorageContainer**. Read-write.|
|id|String|The unique stable identifier of the **filerStorageContainer**. Read-only.|
|lockState|siteLockState|Indicates the lock state of the **fileStorageContainer**. The possible values are `unlocked` and `lockedReadOnly`. Read-only.|
|settings|[fileStorageContainerSettings](../resources/filestoragecontainersettings.md)|Settings associated with a **fileStorageContainer**. Read-write.|
|status|fileStorageContainerStatus|Status of the **fileStorageContainer**. Containers are created as inactive and require activation. Inactive containers are subjected to automatic deletion in 24 hours. The possible values are: `inactive `, `active `. Read-only.|
|viewpoint|[fileStorageContainerViewpoint](../resources/filestoragecontainerviewpoint.md)|Data specific to the current user. Read-only.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|drive|[drive](../resources/drive.md)|The drive of the resource **fileStorageContainer**. Read-only.|
|permissions|[permission](../resources/permission.md) collection|The set of permissions for users in the **fileStorageContainer**. Permission for each user is set by the **roles** property. The possible values are: `reader`, `writer`, `manager`, and `owner`. Read-write.|
|recycleBin|[recycleBin](../resources/recyclebin.md)|Recycle bin of the **fileStorageContainer**. Read-only.|
|migrationJobs|[sharePointMigrationJob](../resources/sharepointmigrationjob.md) collection|The collection of **sharePointMigrationJob** objects local to the container. Read-write.|

### roles property values

|Value|Description|
|:---|:---|
|reader|Readers can read **fileStorageContainer** metadata and the contents inside.|
|writer|Writers can read and modify **fileStorageContainer** metadata and contents inside.|
|manager|Managers can read and modify **fileStorageContainer** metadata and contents inside and manage the permissions to the container.|
|owner|Owners can read and modify **fileStorageContainer** metadata and contents inside, manage container permissions, and delete and restore containers.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.fileStorageContainer",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fileStorageContainer",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "containerTypeId": "Guid",
  "customProperties": {
    "@odata.type": "microsoft.graph.fileStorageContainerCustomPropertyDictionary"
  },
  "viewpoint": {
    "@odata.type": "microsoft.graph.fileStorageContainerViewpoint"
  },
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "settings": { "@odata.type": "microsoft.graph.fileStorageContainerSettings" }
}
```

