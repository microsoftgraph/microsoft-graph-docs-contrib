---
title: "searchAlteration resource type"
description: "Provides the details of search alteration for spelling correction."
ms.localizationpriority: medium
author: "njerigrevious"
ms.subservice: "search"
doc_type: "resourcePageType"
ms.date: 07/25/2024
---

# searchAlteration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides the details of search alteration for spelling correction.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|alteredQueryString|String| Defines the altered query string with spelling correction.|
|alteredHighlightedQueryString|String| Defines the altered highlighted query string with spelling correction. The annotation around the corrected segment is (\ue000, \ue001)|
|alteredQueryTokens|[alteredQueryToken](alteredquerytoken.md) collection| Represents changed segments with respect to original query.|

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
  "alteredQueryString": "String",
  "alteredHighlightedQueryString": "String",
  "alteredQueryTokens": [{"@odata.type": "microsoft.graph.alteredQueryToken"}]
}
```
