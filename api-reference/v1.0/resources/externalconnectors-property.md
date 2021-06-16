---
title: "property resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# property resource type

Namespace: microsoft.graph.externalConnectors



**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|aliases|String collection|**TODO: Add Description**|
|isQueryable|Boolean|**TODO: Add Description**|
|isRefinable|Boolean|**TODO: Add Description**|
|isRetrievable|Boolean|**TODO: Add Description**|
|isSearchable|Boolean|**TODO: Add Description**|
|labels|label collection|**TODO: Add Description**|
|name|String|**TODO: Add Description**|
|type|propertyType|**TODO: Add Description**. Possible values are: `string`, `int64`, `double`, `dateTime`, `boolean`, `stringCollection`, `int64Collection`, `doubleCollection`, `dateTimeCollection`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.externalConnectors.property"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalConnectors.property",
  "name": "String",
  "type": "String",
  "isSearchable": "Boolean",
  "isRetrievable": "Boolean",
  "isQueryable": "Boolean",
  "isRefinable": "Boolean",
  "aliases": [
    "String"
  ],
  "labels": [
    "String"
  ]
}
```

