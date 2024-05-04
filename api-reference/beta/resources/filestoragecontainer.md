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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a location where multiple users or a group of users can store files and access them via an application. All file system objects in a **fileStorageContainer** are returned as [driveItem](../resources/driveitem.md) resources. 

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List fileStorageContainers](../api/filestorage-list-containers.md)|[fileStorageContainer](../resources/filestoragecontainer.md) collection|Get a list of the [fileStorageContainer](../resources/filestoragecontainer.md) objects and their properties.|
|[Create fileStorageContainer](../api/filestoragecontainer-post-filestoragecontainers.md)|[fileStorageContainer](../resources/filestoragecontainer.md)|Create a new [fileStorageContainer](../resources/filestoragecontainer.md) object.|
|[Get fileStorageContainer](../api/filestoragecontainer-get.md)|[fileStorageContainer](../resources/filestoragecontainer.md)|Read the properties and relationships of a [fileStorageContainer](../resources/filestoragecontainer.md) object.|
|[Update fileStorageContainer](../api/filestoragecontainer-update.md)|[fileStorageContainer](../resources/filestoragecontainer.md)|Update the properties of a [fileStorageContainer](../resources/filestoragecontainer.md) object.|
|[Delete fileStorageContainer](../api/filestorage-delete-containers.md)|None|Delete a [fileStorageContainer](../resources/filestoragecontainer.md) object.|
|[Activate fileStorageContainer](../api/filestoragecontainer-activate.md)|None|Activate a [fileStorageContainer](../resources/filestoragecontainer.md) object.|
|[Restore fileStorageContainer](../api/filestoragecontainer-restore.md)|[fileStorageContainer](../resources/filestoragecontainer.md)|Restored a deleted [fileStorageContainer](../resources/filestoragecontainer.md) object.|
|[Permanent Delete fileStorageContainer](../api/filestoragecontainer-permanentdelete.md)|None|Permanently delete a [fileStorageContainer](../resources/filestoragecontainer.md) object.|
|[List columns](../api/filestoragecontainer-list-columns.md)|[columnDefinition](../resources/columndefinition.md) collection|Get the columnDefinition resources from the columns navigation property.|
|[Create columnDefinition](../api/filestoragecontainer-post-columns.md)|[columnDefinition](../resources/columndefinition.md)|Create a new columnDefinition object.|
|[List drive](../api/filestoragecontainer-list-drive.md)|[drive](../resources/drive.md) collection|Get the drive resources from the drive navigation property.|
|[Create drive](../api/filestoragecontainer-post-drive.md)|[drive](../resources/drive.md)|Create a new drive object.|
|[List permissions](../api/filestoragecontainer-list-permissions.md)|[permission](../resources/permission.md) collection|Get the permission resources from the permissions navigation property on a [fileStorageContainer](../resources/filestoragecontainer.md)..|
|[Create permission](../api/filestoragecontainer-post-permissions.md)|[permission](../resources/permission.md)|Create a new permission object on a [fileStorageContainer](../resources/filestoragecontainer.md)..|
|[List recycleBin](../api/filestoragecontainer-list-recyclebin.md)|[recycleBin](../resources/recyclebin.md) collection|Get the recycleBin resources from the recycleBin navigation property.|
|[Create recycleBin](../api/filestoragecontainer-post-recyclebin.md)|[recycleBin](../resources/recyclebin.md)|Create a new recycleBin object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedSensitivityLabel|[assignedLabel](../resources/assignedlabel.md)|Sensitivity label assigned to the **fileStorageContainer**. Read-write.|
|containerTypeId|Guid|Container type ID of the **fileStorageContainer**. Each container must have only one container type. Read-only.|
|createdDateTime|DateTimeOffset|Date and time of the **fileStorageContainer** creation. Read-only.|
|customProperties|[fileStorageContainerCustomPropertyDictionary](../resources/filestoragecontainercustompropertydictionary.md)|Custom property collection for the **fileStorageContainer**. Read-write.|
|description|String|Provides a user-visible description of the **fileStorageContainer**. Read-write.|
|displayName|String|The display name of the **fileStorageContainer**. Read-write.|
|id|String|The unique stable identifier of the **filerStorageContainer**. Read-only.|
|isItemVersioningEnabled|Boolean|This indicates whether versioning is enabled for the **fileStorageContainer**. The setting is applicable to all items in the **fileStorageContainer**. Read-Write|
|itemMajorVersionLimit|Int32|Maximum number of major versions allowed for items in the **fileStorageContainer**. Read-write.|
|owners|[userIdentity](../resources/useridentity.md) collection|List of users who own the **fileStorageContainer**. Read-only.|
|ownershipType|fileStorageContainerOwnershipType|Ownership type of the **fileStorageContainer**.The possible values are: `tenantOwned`, `userOwned`.|
|status|fileStorageContainerStatus|Status of the **fileStorageContainer**. Containers are created as inactive and require activation. Inactive containers are subjected to automatic deletion in 24 hours.The possible values are: `inactive`, `active`.|
|storageUsedInBytes|Int64|Storage used in the **fileStorageContainer**. In bytes. Read-only.||
|viewpoint|[fileStorageContainerViewpoint](../resources/filestoragecontainerviewpoint.md)|Data specific to the current user. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|columns|[columnDefinition](../resources/columndefinition.md) collection|The set of custom metadata supported by the **fileStorageContainer**. Read-write.|
|drive|[drive](../resources/drive.md)|The drive of the resource **fileStorageContainer**. Read-only.|
|permissions|[permission](../resources/permission.md) collection|The set of permissions for users in the **fileStorageContainer**. Permission for each user is set by the **roles** property. The possible values are 'reader', 'writer', 'manager', and 'owner'. Read-write.|
|recycleBin|[recycleBin](../resources/recyclebin.md)|Recycle bin of the **fileStorageContainer**. Read-only.|

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
  {
  "id": "string (identifier)",
  "displayName": "string",
  "description": "string",
  "containerTypeId": "string",
  "containerTypeDisplayName": "string",
  "permissions": [ { "@odata.type": "microsoft.graph.permission" } ],
  "customProperties": "Dictionary(Edm.String, microsoft.graph.fileStorageContainerCustomPropertyValue)",
  "viewpoint": {"@odata.type": "microsoft.graph.fileStorageContainerViewpoint" },
  "drive": {"@odata.type": "microsoft.graph.drive"},
  "recycleBin": {"@odata.type": "microsoft.graph.recycleBin"},
  "status": {"@odata.type": "microsoft.graph.fileStorageContainerStatus"},
  "columns": [ {"@odata.type": "microsoft.graph.columnDefinition" } ],
  "createdDateTime": {"@odata.type": "microsoft.graph.dateTimeOffset"},
  "storageUsedInBytes": "int64",
  "assignedSensitivityLabel": {"@odata.type": "microsoft.graph.assignedLabel"},
  "owners":  [ { "@odata.type": "microsoft.graph.userIdentity" } ],
  "ownershipType": {"@odata.type": "microsoft.graph.fileStorageContainerOwnershipType"},
  "expiryDateTime": "string (timestamp)",
  "itemMajorVersionLimit": "int64",
  "isItemVersioningEnabled": "boolean",
  "lockState": {"@odata.type": "microsoft.graph.siteLockState"}
}
```

