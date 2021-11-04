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
| Create, update, or delete a search answer        | [acronym](search-acronym.md), [bookmark](search-bookmark.md), [qna](search-qna.md) |

## Supported language tags
The language tags of a [bookmark](search-bookmark.md) or [qna](search-qna.md) list the locales (languages and countries or regions) in which that search answer (**bookmark** or **qna**) can be viewed in.

A locale name follows the pattern {language}-{REGION}. For more information, see [RFC 4646](https://datatracker.ietf.org/doc/html/rfc4646).

| Value       | Description |
| ----------- | ----------  |
|`es-AR`| Argentina |
|`en-AU`| Australia |
|`de-AT`| Austria |
|`fr-BE`| Belgium - French |
|`nl-BE`| Belgium - Dutch |
|`en-CA`| Canada - English |
|`fr-CA`| Canada - French |
|`fr-FR`| France |
|`de-DE`| Germany |
|`zh-HK`| Hong Kong - Simplified Chinese |
|`en-IN`| India |
|`it-IT`| Italy |
|`pt-BR`| Brazil |
|`en-ID`| Indonesia |
|`ja-JP`| Japan |
|`ko-KR`| Korea |
|`en-MY`| Malaysia |
|`es-MX`| Mexico |
|`nl-NL`| Netherlands |
|`nb-NO`| Norway |
|`zh-CN`| People's Republic of China |
|`pl-PL`| Poland |
|`ru-RU`| Russia |
|`ar-SA`| Saudi Arabia |
|`sv-SE`| Sweden |
|`es-ES`| Spain |
|`fr-CH`| Switzerland - French |
|`de-CH`| Switzerland - German |
|`en-ZA`| South Africa |
|`zh-TW`| Taiwan |
|`tr-TR`| Turkey |
|`en-GB`| United Kingdom |
|`en-US`| United States - English |
|`es-US`| United States - Spanish |

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.

## Next steps

- See the [Microsoft Search API overview](/graph/search-concept-overview).
- Drill down on the methods, properties, and relationships of the answer type resources: [bookmarks](search-bookmark.md), [acronyms](search-acronym.md), and [QnAs](search-qna.md).

