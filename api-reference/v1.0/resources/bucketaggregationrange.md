---
title: "bucketAggregationRange resource type"
description: "Specifies the lower and upper limit to a range for aggregating search results. Applies only to refiners of the date or numeric type"
localization_priority: Normal
author: "nmoreau"
ms.prod: "search"
doc_type: "resourcePageType"
---

# bucketAggregationRange resource type

Namespace: microsoft.graph

Specifies the lower and upper limit to a range for aggregating search results. Applies only to refiners of the date or numeric type.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|from|String| Defines the lower bound from which to compute the aggregation. This can be a numeric value or a string representation of a date using the `YYYY-MM-DDTHH:mm:ss.sssZ` format. Required.|
|to|String| Defines the upper bound up to which to compute the aggregation. This can be a numeric value or a string representation of a date using the `YYYY-MM-DDTHH:mm:ss.sssZ` format. Required.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bucketAggregationRange",
  "baseType": null
}-->

```json
{
  "from": "String",
  "to": "String"
}
```
