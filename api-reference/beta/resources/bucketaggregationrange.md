---
title: "bucketAggregationRange resource type"
description: "Specifies the lower and upper limit to a range for aggregating search results. Applies only to refiners of the date or numeric type"
ms.localizationpriority: medium
author: "njerigrevious"
ms.subservice: "search"
doc_type: "resourcePageType"
ms.date: 07/25/2024
---

# bucketAggregationRange resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the lower and upper limit to a range for aggregating search results. Applies only to refiners of the date or numeric type.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|from|String| Defines the lower bound from which to compute the aggregation. This can be a numeric value or a string representation of a date using the `YYYY-MM-DDTHH:mm:ss.sssZ` format. Required.|
|to|String| Defines the upper bound up to which to compute the aggregation. This can be a numeric value or a string representation of a date using the `YYYY-MM-DDTHH:mm:ss.sssZ` format. Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

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
