---
title: "fileStorageContainerCustomPropertyValue resource type"
description: "Contains the custom property values stored in a fileStorageContainerCustomPropertyDictionary".
author: "tonchan-msft"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: resourcePageType
---
# fileStorageContainerCustomPropertyValue resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


The **fileStorageContainerCustomPropertyValue** resource contains the custom property values stored in a [fileStorageContainerCustomPropertyDictionary](../resources/filestoragecontainercustompropertydictionary.md) resource.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isSearchable|Boolean|Indicates if the custom property is searchable. Optional. The default value is False.|
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

