---
title: "searchEntity resource type"
description: "A top level object that represents the Microsoft Search API endpoint."
ms.localizationpriority: medium
author: "njerigrevious"
ms.subservice: "search"
doc_type: "resourcePageType"
ms.date: 05/23/2024
---

# searchEntity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A top level object that represents the Microsoft Search API endpoint.

The **searchEntity** resource serves as an anchor to the [query](../api/search-query.md) action and search answer relationships with the following resources: [acronym](../resources/search-acronym.md), [bookmark](../resources/search-bookmark.md), and [qna](../resources/search-qna.md).

[!INCLUDE [search-api-preview](../../includes/search-api-preview-signup.md)]

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Query data](../api/search-query.md) |[searchResponse](searchresponse.md) collection | Run a specified search query.   |

## Properties

None.

## Relationships

| Relationship | Type |Description|
|:---------------|:--------|:----------|
| acronyms | [microsoft.graph.search.acronym](../resources/search-acronym.md) collection | Administrative answer in Microsoft Search results to define common acronyms in an organization.  |
| bookmarks | [microsoft.graph.search.bookmark](../resources/search-bookmark.md) collection | Administrative answer in Microsoft Search results for common search queries in an organization. |
| qnas | [microsoft.graph.search.qna](../resources/search-qna.md) collection | Administrative answer in Microsoft Search results that provide answers for specific search keywords in an organization. |


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.searchEntity",
  "baseType": "microsoft.graph.entity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.searchEntity"
}
```


## Related content

[query](../api/search-query.md)


<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "A top level object representing the Microsoft Search API endpoint.",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


