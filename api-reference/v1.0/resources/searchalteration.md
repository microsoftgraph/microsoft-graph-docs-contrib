---
title: "searchAlteration resource type"
description: "Provides the details about the search alteration for spelling correction."
ms.localizationpriority: medium
author: "njerigrevious"
ms.prod: "search"
doc_type: "resourcePageType"
---

# searchAlteration resource type

Namespace: microsoft.graph

Provides the details about the search alteration for spelling correction.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|alteredHighlightedQueryString|String| Defines the altered highlighted query string with spelling correction. The annotation around the corrected segment is: `\ue000, \ue001`.|
|alteredQueryString|String| Defines the altered query string with spelling correction.|
|alteredQueryTokens|[alteredQueryToken](alteredquerytoken.md) collection| Represents changed segments related to an original user query.|

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
  "alteredHighlightedQueryString": "String",
  "alteredQueryString": "String",
  "alteredQueryTokens": [{"@odata.type": "microsoft.graph.alteredQueryToken"}]
}
```
