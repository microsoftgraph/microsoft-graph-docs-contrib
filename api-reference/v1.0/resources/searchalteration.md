---
title: "searchAlteration resource type"
description: "Provides the details about the search alteration for spelling correction."
ms.localizationpriority: medium
author: "njerigrevious"
ms.subservice: "search"
doc_type: "resourcePageType"
ms.date: 08/08/2024
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

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

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
