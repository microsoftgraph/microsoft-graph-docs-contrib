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
A language tag of a [bookmark](search-bookmark.md) or [qna](search-qna.md) represents a geographically specific language in which that search answer (**bookmark** or **qna**) can be viewed. A language tag follows the pattern {language}-{REGION}. For more information on the pattern, see [RFC 4646](https://datatracker.ietf.org/doc/html/rfc4646).

The following table lists the language tags, locales, and the corresponding country or region that you can set in the [Microsoft 365 admin center](https://admin.microsoft.com/) to publish a search answer. The **Locale** column describes the language as used in that country or region.

| Supported language tag | Locale | Choice of country or region in Microsoft 365 admin center  |
| ----------- | ----------  | ----------  |
|`es-AR`| Spanish (Argentina) | Argentina | 
|`en-AU`| English (Australia) | Australia |
|`de-AT`| German (Austria) |Austria | 
|`fr-BE`| French (Belgium) |Belgium - French | 
|`nl-BE`| Dutch (Belgium) | Belgium - Dutch | 
|`en-CA`| English (Canada) | Canada - English | 
|`fr-CA`| French (Canada) | Canada - French | 
|`fr-FR`| French (France) | France | 
|`de-DE`| German (Germany) | Germany | 
|`zh-HK`| Chinese (Hong Kong) | Hong Kong |
|`en-IN`| English (India) | India |
|`it-IT`| Italian (Italy) | Italy |
|`pt-BR`| Portuguese (Brazil) | Brazil |
|`en-ID`| English (Indonesia) | Indonesia |
|`ja-JP`| Japanese (Japan) | Japan |
|`ko-KR`| Korean (South Korea) | Korea |
|`en-MY`| English (Malaysia) | Malaysia |
|`es-MX`| Spanish (Mexico) | Mexico |
|`nl-NL`| Dutch (Netherlands) | Netherlands |
|`nb-NO`| Norwegian Bokmål (Norway) | Norway |
|`zh-CN`| Chinese (China) | People's Republic of China |
|`pl-PL`| Polish (Poland) | Poland |
|`ru-RU`| Russian (Russia) | Russia |
|`ar-SA`| Arabic (Saudi Arabia) | Saudi Arabia |
|`sv-SE`| Swedish (Sweden) | Sweden |
|`es-ES`| Spanish (Spain) | Spain |
|`fr-CH`| French (Switzerland) | Switzerland - French |
|`de-CH`| German (Switzerland) | Switzerland - German |
|`en-ZA`| English (South Africa) | South Africa |
|`zh-TW`| Chinese (Taiwan) | Taiwan |
|`tr-TR`| Turkish (Turkey) | Turkey |
|`en-GB`| English (United Kingdom) | United Kingdom |
|`en-US`| English (United States) | United States - English |
|`es-US`| Spanish (United States) | United States - Spanish |

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.

## Next steps

- See the [Microsoft Search API overview](/graph/search-concept-overview).
- Drill down on the methods, properties, and relationships of the answer type resources: [bookmarks](search-bookmark.md), [acronyms](search-acronym.md), and [QnAs](search-qna.md).

