---
title: "Use the Microsoft Search API to manage administrative answers"
description: "Use Microsoft Graph to manage administrative search answers in the Microsoft Search experience."
ms.localizationpriority: high
author: "jakeost-msft"
ms.prod: "search"
ms.date: 10/25/2021
doc_type: conceptualPageType
---

# Use the Microsoft Search API to manage administrative answers

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

You can use Microsoft Graph to manage administrative search answer results in the [Microsoft Search](/microsoftsearch/overview-microsoft-search) experience.

Requests to manage administrative search answers are performed by global administrators, search administrators, search editors, or are performed on behalf of an application without the presence of a signed-in user, identified using an [access token with application permission](/graph/auth-v2-service).

## Common use cases

The use cases for the APIs in this section involve managing administrative answers such as acronyms, bookmarks, and QnAs for an organization.

| Use cases                                        | REST resources                              |
|:-------------------------------------------------|:--------------------------------------------|
| **Search answer actions**                        |                                             |
| Create, update, or delete a search answer        | [acronym](search-acronym.md), [bookmark](search-bookmark.md), [QnA](search-qna.md) |

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.

## Next steps

- See the [Microsoft Search API overview](/graph/search-concept-overview).
- Drill down on the methods, properties, and relationships of the answer type resources: [bookmarks](search-bookmark.md), [acronyms](search-acronym.md), and [QnAs](search-qna.md).