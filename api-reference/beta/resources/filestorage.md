---
title: "fileStorage resource type"
description: "Represents the structure of active and deleted fileStorageContainer objects."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
ms.date: 05/21/2024
---

# fileStorage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


Represents the structure of active and deleted [fileStorageContainer](../resources/filestoragecontainer.md) objects as well as [fileStorageContainerTypes](../resources/filestoragecontainer.md) and [fileStorageContainerTypeRegistrations](../resources/filestoragecontainertyperegistration.md)

## Properties
None.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Remove deleted containers](../api/filestorage-delete-deletedcontainers.md)|[fileStorage](../resources/filestorage.md) collection|Delete the [fileStorageContainer](../resources/filestoragecontainer.md) objects and their properties.|
|[List containerTypes](../api/filestorage-list-containertypes.md)|[fileStorageContainerType](../resources/filestoragecontainertype.md) collection|List fileStorageContainerType objects|
|[Create fileStorageContainerType](../api/filestorage-post-containertypes.md)|[fileStorageContainerType](../resources/filestoragecontainertype.md)|Create a new fileStorageContainerType object.|
|[List containerTypeRegistrations](../api/filestorage-list-containertyperegistrations.md)|[fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md) collection| List containerTypeRegistration objects|
|[Create fileStorageContainerTypeRegistration](../api/filestorage-post-containertyperegistrations.md)|[fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md)|Create a new fileStorageContainerTypeRegistration object.|

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

