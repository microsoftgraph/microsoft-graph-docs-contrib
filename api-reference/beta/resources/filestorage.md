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

