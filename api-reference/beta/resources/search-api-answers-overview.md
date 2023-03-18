---
title: "Use the Microsoft Search API to manage administrative answers"
description: "Use Microsoft Graph to manage administrative search answers in the Microsoft Search experience."
ms.localizationpriority: high
author: "jakeost-msft"
ms.prod: "search"
doc_type: conceptualPageType
---

# Use the Microsoft Search API to manage administrative answers

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

You can use Microsoft Graph to [manage administrative search answer results](/graph/search-concept-answers) in the [Microsoft Search](/microsoftsearch/overview-microsoft-search) experience.

Requests to manage administrative search answers are performed by global administrators, search administrators, search editors, or are performed on behalf of an application without the presence of a signed-in user, identified using an [access token with application permission](/graph/auth-v2-service).

## Common use cases

The use cases for the APIs in this section involve managing administrative answers such as acronyms, bookmarks, and QnAs for an organization.

| Use cases                                        | REST resources                              |
|:-------------------------------------------------|:--------------------------------------------|
| **Search answer actions**                        |                                             |
| Create, update, or delete a search answer        | [acronym](search-acronym.md), [bookmark](search-bookmark.md), [qna](search-qna.md) |

## Supported language tags
A language tag of a [bookmark](search-bookmark.md) or [qna](search-qna.md) represents a geographically specific language in which that search answer (**bookmark** or **qna**) can be viewed. A language tag follows the pattern {language}-{region}. For information on the supported values for {language} and {region}, see [RFC 4646](https://datatracker.ietf.org/doc/html/rfc4646).

> [!IMPORTANT]
> You must specify values for {language} and {region} in lower case.

The following table lists the language tags, locales, and the corresponding country or region that you can set in the [Microsoft 365 admin center](https://admin.microsoft.com/) to publish a search answer. The **Locale** column describes the language as used in that country or region.

| Supported language tag | Locale | Choice of country or region in Microsoft 365 admin center  |
| ----------- | ----------  | ----------  |
|`es-ar`| Spanish (Argentina) | Argentina | 
|`en-au`| English (Australia) | Australia |
|`de-at`| German (Austria) |Austria | 
|`fr-be`| French (Belgium) |Belgium - French | 
|`nl-be`| Dutch (Belgium) | Belgium - Dutch | 
|`en-ca`| English (Canada) | Canada - English | 
|`fr-ca`| French (Canada) | Canada - French | 
|`fr-fr`| French (France) | France | 
|`de-de`| German (Germany) | Germany | 
|`zh-hk`| Chinese (Hong Kong) | Hong Kong |
|`en-in`| English (India) | India |
|`it-it`| Italian (Italy) | Italy |
|`pt-br`| Portuguese (Brazil) | Brazil |
|`en-id`| English (Indonesia) | Indonesia |
|`ja-jp`| Japanese (Japan) | Japan |
|`ko-kr`| Korean (South Korea) | Korea |
|`en-my`| English (Malaysia) | Malaysia |
|`es-mx`| Spanish (Mexico) | Mexico |
|`nl-nl`| Dutch (Netherlands) | Netherlands |
|`nb-no`| Norwegian Bokmål (Norway) | Norway |
|`zh-cn`| Chinese (China) | People's Republic of China |
|`pl-pl`| Polish (Poland) | Poland |
|`ru-ru`| Russian (Russia) | Russia |
|`ar-sa`| Arabic (Saudi Arabia) | Saudi Arabia |
|`sv-se`| Swedish (Sweden) | Sweden |
|`es-es`| Spanish (Spain) | Spain |
|`fr-ch`| French (Switzerland) | Switzerland - French |
|`de-ch`| German (Switzerland) | Switzerland - German |
|`en-za`| English (South Africa) | South Africa |
|`zh-tw`| Chinese (Taiwan) | Taiwan |
|`tr-tr`| Turkish (Turkey) | Turkey |
|`en-gb`| English (United Kingdom) | United Kingdom |
|`en-us`| English (United States) | United States - English |
|`es-us`| Spanish (United States) | United States - Spanish |

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.

## Next steps

- Learn about [setting up administrative search answers for users in an organization](/graph/search-concept-answers).
- Drill down on the methods, properties, and relationships of the answer type resources: [bookmarks](search-bookmark.md), [acronyms](search-acronym.md), and [QnAs](search-qna.md).
- See the [Microsoft Search API overview](/graph/search-concept-overview).
