---
title: "fileStorageContainerCustomPropertyValue resource type"
description: "fileStorageContainerCustomPropertyValue resource type"
author: "tonchan-msft"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# fileStorageContainerCustomPropertyValue resource type

Namespace: microsoft.graph



The **fileStorageContainerCustomPropertyValue** resource contains the custom propety values stored in a [fileStorageContainerCustomPropertyDictionary](../resources/fileStorageContainerCustomPropertyDictionary) resource.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isSearchable|Boolean|Indicator if the custom propety is searchable. Optional. Default False|
|value|String|Value of the custom property. Required.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.fileStorageContainerCustomPropertyValue"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fileStorageContainerCustomPropertyValue",
  "value": "String",
  "isSearchable": "Boolean"
}
```

