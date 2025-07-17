---
title: "searchQuery resource type"
description: "Represents a search query that contains search terms and optional filters."
ms.localizationpriority: medium
author: "njerigrevious"
ms.subservice: "search"
doc_type: "resourcePageType"
ms.date: 11/08/2024
---

# searchQuery resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [search-api-deprecation](../../includes/search-api-deprecation.md)]

Represents a search query that contains search terms and optional filters.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|queryString|String|The search query containing the search terms. Required.|
|queryTemplate|String|Provides a way to decorate the query string. Supports both KQL and query variables. Optional.|
|query_string (deprecated)|[searchQueryString](searchquerystring.md)|This is now replaced by the **queryString** property. The search query containing the search terms.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.searchQuery",
  "baseType": null
}-->

```json
{
  "queryString": "String",
  "queryTemplate": "String",
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

