---
title: "fileStorageContainerViewpoint resource type"
description: "The fileStorageContainerViewpoint resource represents data specific to the current user of a fileStorageContainer"
author: "tonchan-msft"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: resourcePageType
---

# fileStorageContainerViewpoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


The **fileStorageContainerViewpoint** resource contains data specific to the current user.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|effectiveRole|String|The current user's effective role. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.fileStorageContainerViewpoint"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fileStorageContainerViewpoint",
  "effectiveRole": "String"
}
```

