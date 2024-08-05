---
title: "fileStorageContainerCustomPropertyValue resource type"
description: "Contains the custom property values that are stored in a fileStorageContainerCustomPropertyDictionary resource."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# fileStorageContainerCustomPropertyValue resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


Contains the custom property values that are stored in a [fileStorageContainerCustomPropertyDictionary](../resources/filestoragecontainercustompropertydictionary.md) resource. 


## Properties
|Property|Type|Description|
|:---|:---|:---|
|isSearchable|Boolean|Indicates whether the custom property is searchable. Optional. The default value is `false`.|
|value|String|The value of the custom property. Required.|

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

