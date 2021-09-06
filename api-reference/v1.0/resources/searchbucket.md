---
title: "searchBucket resource type"
description: "Represents a container for one or more search results that share the same value for the entity field that aggregates them"
localization_priority: Normal
author: "nmoreau"
ms.prod: "search"
doc_type: "resourcePageType"
---

# searchBucket resource type

Namespace: microsoft.graph

Represents a container for one or more search results that share the same value for the entity field that aggregates them. 

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|aggregationFilterToken|String| A token containing the encoded filter to aggregate search matches by the specific **key** value. To use the filter, pass the token as part of the **aggregationFilter** property in a **searchRequest** object, in the format **"{field}:\\"{aggregationFilterToken}\\""**. See an [example](/graph/search-concept-aggregation#example-2-apply-an-aggregation-filter-based-on-a-previous-request).|
|count|Int32| The approximate number of search matches that share the same value specified in the **key** property. Note that this number is not the exact number of matches.|
|key|String| The discrete value of the field that an aggregation was computed on.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.searchBucket",
  "baseType": null
}-->

```json
{
  "key": "String",
  "count": "10",  
  "aggregationFilterToken": "String"
}
```
