---
author: JeremyKelley
title: searchResult resource type
ms.localizationpriority: medium
description: "The searchResult resource indicates than an item is the response to a search query."
ms.prod: files
doc_type: resourcePageType
---

# searchResult resource type

Namespace: microsoft.graph

The **searchResult** resource indicates than an item is the response to a search query.

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ "onClickTelemtryUrl" ],
  "@odata.type": "microsoft.graph.searchResult"
}-->

```json
{
  "onClickTelemetryUrl": "url"
}
```

## Properties

| Property            | Type   | Description
|:--------------------|:-------|:----------------------------------------------
| onClickTelemetryUrl | String | A callback URL that can be used to record telemetry information. The application should issue a GET on this URL if the user interacts with this item to improve the quality of results.

## Remarks 

For more information about the facets on a DriveItem, see [driveItem](driveitem.md).

<!-- {
  "type": "#page.annotation",
  "description": "The search result facet indicates an item is from a search.",
  "keywords": "search result facet",
  "section": "documentation",
  "tocPath": "Facets/SearchResult"
} -->

