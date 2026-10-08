---
title: "fileStorage resource type"
description: "Represents the structure of active and deleted fileStorageContainer objects."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
ms.date: 11/25/2025
---

# fileStorage resource type

Namespace: microsoft.graph

Represents the structure of active and deleted [fileStorageContainer](../resources/filestoragecontainer.md) objects.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List containers](../api/filestorage-list-containers.md)|[fileStorageContainer](../resources/filestoragecontainer.md) collection|Get a list of the [fileStorageContainer](../resources/filestoragecontainer.md) objects and their properties.|
|[Remove deleted containers](../api/filestorage-delete-deletedcontainers.md)|[fileStorage](../resources/filestorage.md) collection|Delete the [fileStorageContainer](../resources/filestoragecontainer.md) objects and their properties.|
|[List container types](../api/filestorage-list-containertypes.md)|[fileStorageContainerType](../resources/filestoragecontainertype.md) collection|Get a list of the [fileStorageContainerType](../resources/filestoragecontainertype.md) objects and their properties for the current tenant.|
|[Create file storage container type](../api/filestorage-post-containertypes.md)|[fileStorageContainerType](../resources/filestoragecontainertype.md)|Create a new [fileStorageContainerType](../resources/filestoragecontainertype.md) in the owning tenant.|
|[List container type registrations](../api/filestorage-list-containertyperegistrations.md)|[fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md) collection|Get a list of the [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md) objects and their properties.|
|[Create file storage container type registration](../api/filestorage-post-containertyperegistrations.md)|[fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md)|Create or replace a [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md) object.|

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|containers|[fileStorageContainer](../resources/filestoragecontainer.md) collection|The collection of active **fileStorageContainer** resources.|
|containerTypeRegistrations|[fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md) collection|The collection of **fileStorageContainerTypeRegistration** resources.|
|containerTypes|[fileStorageContainerType](../resources/filestoragecontainertype.md) collection|The collection of **fileStorageContainerType** resources.|
|deletedContainers|[fileStorageContainer](../resources/filestoragecontainer.md) collection|The collection of deleted **fileStorageContainer** resources.|

## JSON representation

The following JSON representation shows the response. 
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.fileStorage"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.fileStorage"
}
```