---
title: "searchAlterationOptions resource type"
description: "Provides the search alteration options for spelling correction."
ms.localizationpriority: medium
author: "njerigrevious"
ms.subservice: "search"
doc_type: "resourcePageType"
ms.date: 07/25/2024
---

# searchAlterationOptions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides the search alteration options for spelling correction.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|enableModification|Boolean|Indicates whether spelling modifications are enabled. If enabled, user will get the search results for corrected query **when there are no results** for the original query with typos and get the spelling modification information in **queryAlterationResponse** property of the [response](/graph/api/resources/searchresponse?view=graph-rest-beta&preserve-view=true). Optional.|
|enableSuggestion|Boolean|Indicates whether spelling suggestions are enabled. If enabled, the user will get the search results for the original search query and suggestions for spelling correction in the **queryAlterationResponse** property of the [response](/graph/api/resources/searchresponse?view=graph-rest-beta&preserve-view=true) for the typos in the query. Optional.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.searchAlterationOptions",
  "baseType": null
}-->

```json
{
  "enableModification": "Boolean",
  "enableSuggestion": "Boolean"
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
