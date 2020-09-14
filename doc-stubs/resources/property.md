---
title: "property resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# property resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|aliases|String collection|**TODO: Add Description**|
|isContent|Boolean|**TODO: Add Description**|
|isQueryable|Boolean|**TODO: Add Description**|
|isRefinable|Boolean|**TODO: Add Description**|
|isRetrievable|Boolean|**TODO: Add Description**|
|isSearchable|Boolean|**TODO: Add Description**|
|labels|label collection|**TODO: Add Description**|
|name|String|**TODO: Add Description**|
|type|propertyType|**TODO: Add Description**. Possible values are: `String`, `Int64`, `Double`, `DateTime`, `Boolean`, `StringCollection`, `Int64Collection`, `DoubleCollection`, `DateTimeCollection`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.property"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.property",
  "name": "String",
  "type": "String",
  "isSearchable": "Boolean",
  "isRetrievable": "Boolean",
  "isQueryable": "Boolean",
  "isContent": "Boolean",
  "isRefinable": "Boolean",
  "aliases": [
    "String"
  ],
  "labels": [
    "String"
  ]
}
```

