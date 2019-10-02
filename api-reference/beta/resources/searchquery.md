---
title: "searchQuery resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "resourcePageType"
---

# searchQuery resource type

PROVIDE DESCRIPTION HERE

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|filter|[filterContainer](filtercontainer.md)||
|query_string|[searchQueryString](searchquerystring.md)||

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.searchQuery",
  "baseType": null
}-->

```json
{
  "filter": {"@odata.type": "microsoft.graph.filterContainer"},
  "query_string": {"@odata.type": "microsoft.graph.searchQueryString"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "searchQuery resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->