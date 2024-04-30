---
title: "fileStorageContainer resource type"
description: "Represents a location where multiple users or a group of users can store files and access them via an application."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# fileStorageContainer resource type

Namespace: microsoft.graph

Represents a location where multiple users or a group of users can store files and access them via an application. All file system objects in a **fileStorageContainer** are returned as [driveItem](../resources/driveitem.md) resources. 


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List fileStorageContainers](../api/filestorage-list-containers.md)|[fileStorageContainer](../resources/filestoragecontainer.md)|Get a list of the [fileStorageContainer](../resources/filestoragecontainer.md) objects and their properties.|
|[Create fileStorageContainer](../api/filestoragecontainer-post.md)|[fileStorageContainer](../resources/filestoragecontainer.md)|Create a new [fileStorageContainer](../resources/filestoragecontainer.md) object.|
|[Get fileStorageContainer](../api/filestoragecontainer-get.md)|[fileStorageContainer](../resources/filestoragecontainer.md)|Read the properties and relationships of a [fileStorageContainer](../resources/filestoragecontainer.md) object.|
|[Update fileStorageContainer](../api/filestoragecontainer-update.md)|[fileStorageContainer](../resources/filestoragecontainer.md)|Update the properties of a [fileStorageContainer](../resources/filestoragecontainer.md) object.|
|[Delete fileStorageContainer](../api/filestorage-delete-containers.md)|None|Delete a [fileStorageContainer](../resources/filestoragecontainer.md) object.|
|[Activate fileStorageContainer](../api/filestoragecontainer-activate.md)|None|Activate a [fileStorageContainer](../resources/filestoragecontainer.md) object.|
|[Get drive](../api/filestoragecontainer-get-drive.md)|[drive](../resources/drive.md)|Get the drive resource from a [fileStorageContainer](../resources/filestoragecontainer.md) object.|
|[List permissions](../api/filestoragecontainer-list-permissions.md)|[permission](../resources/permission.md)| List permissions on a fileStorageContainer.|
|[Create permissions](../api/filestoragecontainer-post-permissions.md)|[permission](../resources/permission.md)|Add permission to a fileStorageContainer.|
|[Update permissions](../api/filestoragecontainer-update-permissions.md)|[permission](../resources/permission.md)|Update permission on a fileStorageContainer.|
|[Delete permissions](../api/filestoragecontainer-delete-permissions.md)|[permission](../resources/permission.md)|Delete permission from a fileStorageContainer.|
|[List fileStorageContainer custom property](../api/filestoragecontainer-list-customproperty.md)|[filestoragecontainercustompropertyvalue](../resources/filestoragecontainercustompropertyvalue.md)|List custom properties of the fileStorageContainer.|
|[Create fileStorageContainer custom property](../api/filestoragecontainer-post-customproperty.md)|[filestoragecontainercustompropertyvalue](../resources/filestoragecontainercustompropertyvalue.md)|Create custom property to the fileStorageContainer.|
|[Update fileStorageContainer custom property](../api/filestoragecontainer-update-customproperty.md)|[filestoragecontainercustompropertyvalue](../resources/filestoragecontainercustompropertyvalue.md)|Update custom property on a fileStorageContainer.|
|[Delete fileStorageContainer custom property](../api/filestoragecontainer-delete-customproperty.md)|[filestoragecontainercustompropertyvalue](../resources/filestoragecontainercustompropertyvalue.md)|Delete custom property from a fileStorageContainer.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|containerTypeId|Guid|Container type ID of the fileStorageContainer. Each container must have only one container type. Read-only.|
|createdDateTime|DateTimeOffset|Date and time of the fileStorageContainer creation. Read-only.|
|customProperties|[fileStorageContainerCustomPropertyDictionary](../resources/filestoragecontainercustompropertydictionary.md)|Custom property collection for the **fileStorageContainer**. Read-write.|
|description|String|Provides a user-visible description of the **fileStorageContainer**. Read-write.|
|displayName|String|The display name of the **fileStorageContainer**. Read-write.|
|id|String|The unique stable identifier of the **filerStorageContainer**. Read-only.|
|status|fileStorageContainerStatus|Status of the **fileStorageContainer**. Containers are created as inactive and require activation. Inactive containers are subjected to automatic deletion in 24 hours. The possible values are: `inactive `,  `active `. Read-only.|
|viewpoint|[fileStorageContainerViewpoint](../resources/filestoragecontainerviewpoint.md)|Data specific to the current user. Read-only.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|drive|[drive](../resources/drive.md)|The drive of the resource fileStorageContainer. Read-only.|
|permissions|[permission](../resources/permission.md) collection|The set of permissions for users in the fileStorageContainer. Permission for each user is set by the **roles** property. The possible values are 'reader', 'writer', 'manager', and 'owner'. Read-write.|

### roles property values

|Value|Description|
|:---|:---|
|reader|Readers can read **fileStorageContainer** metadata and the content inside.|
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
  "createdDateTime": "String (timestamp)"
}
```

