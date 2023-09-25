---
title: "fileStorageContainerViewpoint resource type"
description: "fileStorageContainerViewpoint resource type"
author: "tonchan-msft"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# fileStorageContainerViewpoint resource type

Namespace: microsoft.graph



The **fileStorageContainerVierwpoint** resource contains data that is specifc to the current user.

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

