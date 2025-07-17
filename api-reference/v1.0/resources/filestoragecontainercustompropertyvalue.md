---
title: "fileStorageContainerCustomPropertyValue resource type"
description: "Contains the custom property values stored in a fileStorageContainerCustomPropertyDictionary resource."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
ms.date: 05/24/2024
---

# fileStorageContainerCustomPropertyValue resource type

Namespace: microsoft.graph

Contains the custom property values stored in a [fileStorageContainerCustomPropertyDictionary](../resources/filestoragecontainercustompropertydictionary.md) resource.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|isSearchable|Boolean|Indicates whether the custom property is searchable. Optional. The default value is `false`.|
|value|String|Value of the custom property. Required.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.

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

