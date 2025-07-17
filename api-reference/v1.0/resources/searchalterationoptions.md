---
title: "searchAlterationOptions resource type"
description: "Provides the search alteration options for spelling correction."
ms.localizationpriority: medium
author: "njerigrevious"
ms.subservice: "search"
doc_type: "resourcePageType"
ms.date: 08/08/2024
---

# searchAlterationOptions resource type

Namespace: microsoft.graph

Provides the search alteration options for spelling correction.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|enableModification|Boolean|Indicates whether spelling modifications are enabled. If enabled, the user gets the search results for the corrected query *if there were no results* for the original query with typos. The [response](/graph/api/resources/searchresponse) will also include the spelling modification information in the **queryAlterationResponse** property. Optional.|
|enableSuggestion|Boolean|Indicates whether spelling suggestions are enabled. If enabled, the user gets the search results for the original search query and suggestions for spelling correction in the **queryAlterationResponse** property of the [response](/graph/api/resources/searchresponse) for the typos in the query. Optional.|

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
