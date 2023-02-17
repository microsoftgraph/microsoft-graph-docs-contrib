---
title: "searchResponse resource type"
description: "Represents results from a search query, and the terms used for the query. "
ms.localizationpriority: medium
author: "njerigrevious"
ms.prod: "search"
doc_type: "resourcePageType"
---

# searchResponse resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents results from a search query, and the terms used for the query. 

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|hitsContainers|[searchHitsContainer](searchhitscontainer.md) collection|A collection of search results.|
|searchTerms|String collection|Contains the search terms sent in the initial search query.|
|resultTemplates|[resultTemplate](resultTemplate.md) collection|A dictionary of resultTemplateIds and associated values, which include the name and JSON schema of the result templates.
|queryAlterationResponse|[alterationResponse](alterationResponse.md)|Provides details of query alteration response for spelling correction.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.searchResponse",
  "baseType": null
}-->

```json
{
  "queryAlterationResponse": {"@odata.type": "microsoft.graph.alterationResponse"},
  "hitsContainers": [{"@odata.type": "microsoft.graph.searchHitsContainer"}],
  "searchTerms": ["String"],
  "resultTemplates": [{"@odata.type":"microsoft.graph.resultTemplateDictionary"}]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "searchResponse resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

