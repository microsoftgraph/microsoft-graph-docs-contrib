---
title: "searchalterationoptions resource type"
description: "Specifies the searchalterationoptions entity"
localization_priority: Normal
author: "nmoreau"
ms.prod: "search"
doc_type: "resourcePageType"
---

# searchalterationoptions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the types of search alteration for spelling correction to be applied to the query

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|enableSuggestion|Boolean|This gets the search results for original user query and suggesting spelling correction in **queryAlterationResponse** property of the [response](/graph/api/resources/searchresponse?view=graph-rest-beta&preserve-view=true) for typos in query. Optional.|
|enableModification|Boolean|This gets the search results for corrected query **when there are no results** for the original query with typos and get the spelling modification information in **queryAlterationResponse** property of the [response](/graph/api/resources/searchresponse?view=graph-rest-beta&preserve-view=true). Optional.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.searchalterationoptions",
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
  "description": "searchalterationoptions resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->