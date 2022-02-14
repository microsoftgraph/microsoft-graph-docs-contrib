---
title: "searchAlterationOptions resource type"
description: "Provides the search alteration options for spelling correction."
ms.localizationpriority: medium
author: "nmoreau"
ms.prod: "search"
doc_type: "resourcePageType"
---

# searchAlterationOptions resource type

Namespace: microsoft.graph

Provides the search alteration options for spelling correction.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|enableSuggestion|Boolean|Indicates whether spelling suggestions are enabled. If enabled, user will get the search results for original search query and suggestions for spelling correction in [queryAlterationResponse](/graph/api/resources/alterationresponse?view=graph-rest-v1.0) for typos in query. Optional.|
|enableModification|Boolean|Indicates whether spelling modifications are enabled. If enabled, user will get the search results for corrected query **when there are no results** for the original query with typos and get the spelling modification information in **queryAlterationResponse** property of the [response](/graph/api/resources/searchresponse?view=graph-rest-beta&preserve-view=true). Optional.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.searchAlterationOptions",
  "baseType": null
}-->

```json
{
  "enableSuggestion": true,
  "enableModification": true
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "searchAlterationOptions resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
