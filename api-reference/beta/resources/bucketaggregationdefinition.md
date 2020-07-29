---
title: "search: bucketaggregationdefinition"
description: "Provides the details on how the agregations should be generated in the results"
localization_priority: Normal
author: "nmoreau"
ms.prod: "search"
doc_type: "resourcePageType"
---

# bucketAggregationRange resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides the details on how the agregations should be generated in the results.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|sortBy|`bucketAggregationSortProperty`| The possible values are `count` to sort by the number of matches in the aggregation, `keyAsString`to sort alphabeticaly based on the key in the aggregation, `keyAsNumber` for numerical sorting based on the key in the aggregation.
|isDescending|Boolean|Specifies that the sort order is descending. The default sort order is ascending|
|prefixFilter|String|A filter to define a matching criteria. The key should start with the specified prefix to be returned in the response.|
|ranges|[bucketAggregationRange](bucketaggregationdefinition.md) collection|Specifies the manual ranges to compute the aggregations. This is only valid for non string refiners : dates and numeric.|

## JSON representation

The following is a JSON representation of the resource.

```json
{
  "sortBy": "String",
  "isDescending": "false",
  "size": "5",
  "prefixFilter": "String",
  "ranges": [{"@odata.type": "microsoft.graph.bucketAggregationDefinition"}]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "sortProperty resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->