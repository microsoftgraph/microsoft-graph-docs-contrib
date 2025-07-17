---
title: "searchResponse resource type"
description: "Description of the searchResponse"
ms.localizationpriority: medium
author: "njerigrevious"
ms.subservice: "search"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# searchResponse resource type

Namespace: microsoft.graph

Represents results from a search query, and the terms used for the query. 

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|hitsContainers|[searchHitsContainer](searchhitscontainer.md) collection|A collection of search results.|
|queryAlterationResponse|[alterationResponse](alterationresponse.md)|Provides information related to spelling corrections in the alteration response.|
|resultTemplates|[resultTemplate](resulttemplate.md) collection|A dictionary of **resultTemplateIds** and associated values, which include the name and JSON schema of the result templates.|
|searchTerms|String collection|Contains the search terms sent in the initial search query.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.searchResponse",
  "baseType": null
}-->

```json
{
  "hitsContainers": [{"@odata.type": "microsoft.graph.searchHitsContainer"}],
  "queryAlterationResponse": {"@odata.type": "microsoft.graph.alterationResponse"},
  "resultTemplates": [{"@odata.type":"microsoft.graph.resultTemplateDictionary"}],
  "searchTerms": ["String"]
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

