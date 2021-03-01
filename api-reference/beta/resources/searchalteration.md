---
title: "searchAlteration resource type"
description: "Provides the details of spelling correction information in the alteration response."
localization_priority: Normal
author: "nmoreau"
ms.prod: "search"
doc_type: "resourcePageType"
---

# searchAlteration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides the details of spelling correction information in the alteration response.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|alteredQueryString|String| Defines the altered query string with spelling correction.|
|alteredHighlightedQueryString|String| Defines the altered highlighted query string with spelling correction. the annotation around the corrected segment is (\ue000, \ue001)|
|alteredQueryTokens|Collection of [alteredQueryToken](alteredquerytoken.md)| Represents changed segments with respect to original query.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.searchAlteration",
  "baseType": null
}-->

```json
{
  "alteredQueryString": "String",
  "alteredHighlightedQueryString": "String",
  "alteredQueryTokens": [{"@odata.type": "microsoft.graph.alteredQueryToken"}]
}
```