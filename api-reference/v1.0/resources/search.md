---
title: "Search"
description: "Retrieve the search resource used to execute queries"
ms.localizationpriority: medium
author: "njerigrevious"
ms.subservice: "search"
doc_type: "resourcePageType"
ms.date: 05/23/2024
---

# search resource type

Namespace: microsoft.graph

The search resource is the top level object representing the search endpoint. It serves as an anchor to the [query](../api/search-query.md) action.

This resource isn't expected to be called as such. Any request on the resource incurs a Bad Request.

[!INCLUDE [search-api-preview](../../includes/search-api-preview-signup.md)]

## JSON representation

None

## Properties

None

## Relationships

None

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Query data](../api/search-query.md) | [searchResponse](searchresponse.md) Collection| Executes the query specified in the [searchRequest](../resources/searchrequest.md) |

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get search",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


