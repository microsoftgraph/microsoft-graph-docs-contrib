---
title: "aggregationOption resource type"
description: "Specifies which aggregations should be returned alongside the search results."
ms.localizationpriority: medium
author: "njerigrevious"
ms.subservice: "search"
doc_type: "resourcePageType"
---

# aggregationOption resource type

Namespace: microsoft.graph

Specifies which aggregations should be returned alongside the search results. The maximum returned value is 100 buckets.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|bucketDefinition|[bucketAggregationDefinition](bucketaggregationdefinition.md)|Specifies the criteria to compute an aggregation. Optional.|
|field|String|Computes aggregation on the field while the field exists in the current entity type. Required.|
|size|Int32|The number of [searchBucket](searchBucket.md) resources to be returned. This isn't required when the range is provided manually in the search request. The minimum accepted size is 1, and the maximum is 65535. Optional.|

## JSON representation

The following example shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.aggregationOption",
  "baseType": null
}-->

```json
{
  "bucketDefinition": {"@odata.type": "microsoft.graph.bucketAggregationDefinition"},
  "field": "String",
  "size": 1024
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
