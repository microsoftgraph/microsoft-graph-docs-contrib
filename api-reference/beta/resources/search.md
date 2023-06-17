---
title: "search resource type"
description: "The top-level object that represents the search endpoint in Microsoft Graph."
ms.localizationpriority: medium
author: "njerigrevious"
ms.prod: "search"
doc_type: "resourcePageType"
---

# search resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The top-level object that represents the search endpoint. It serves as an anchor to the [query](../api/search-query.md) action.

This resource is not called. Any request that calls this the resource will result in an HTTP `400 Bad Request` response.

[!INCLUDE [search-api-preview](../../includes/search-api-preview-signup.md)]

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [query](../api/search-query.md) | [searchResponse](searchresponse.md) collection| Run a specified search query. |

## Properties

None.

## Relationships

None.

## JSON representation

None.

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get search",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


