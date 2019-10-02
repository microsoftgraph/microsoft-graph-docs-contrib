---
title: "filterContainer resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "resourcePageType"
---

# filterContainer resource type

The filters to be applied on the search results. The filters can be used in a bool query for more flexibility.  

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|bool|[filterContainer](filtercontainer.md) collection||
|range|[rangeFilter](rangefilter.md)||
|should|[filterContainer](filtercontainer.md) collection||
|term|[termFilter](termfilter.md)||

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.filterContainer",
  "baseType": null
}-->

```json
{
  "bool": [{"@odata.type": "microsoft.graph.filterContainer"}],
  "range": {"@odata.type": "microsoft.graph.rangeFilter"},
  "should": [{"@odata.type": "microsoft.graph.filterContainer"}],
  "term": {"@odata.type": "microsoft.graph.termFilter"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "filterContainer resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->