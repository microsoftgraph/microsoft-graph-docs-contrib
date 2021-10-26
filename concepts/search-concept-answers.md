---
title: "Use the Microsoft Search API in Microsoft Graph to manage administrative search answers"
description: "You can use the Microsoft Search API to manage administrative search answers in your tenant."
author: "jakeost-msft"
ms.localizationpriority: medium
ms.prod: "search"
ms.date: 10/25/2021
doc_type: conceptualPageType
---

# Use the Microsoft Search API in Microsoft Graph to manage administrative search answers (preview)

You can use the Microsoft Search API to manage administrative search answers in your tenant. These answers are displayed in Microsoft Search results when triggered by a keyword or acronym defined in the available search answer resource types: [acronyms](..\api-reference\beta\resources\search-acronym.md), [bookmarks](..\api-reference\beta\resources\search-bookmark.md), and [QnA](..\api-reference\beta\resources\search-qna.md) resources.

When triggered by a defined keyword or acronym, these search answers will appear at the top of the search results page in your tenant.

## Example: Create a new bookmark

The following request creates a new bookmark that will display on the search results page when a user searches for at least one of its keywords.

### Request
<!-- {
  "blockType": "request",
  "name": "create_bookmark_from_bookmarks"
}-->
```http
POST https://graph.microsoft.com/beta/search/bookmarks
Content-Type: application/json

{
  "displayName": "Contoso Install Site",
  "webUrl": "http://www.contoso.com/",
  "description": "Try or buy Contoso for Home or Business and view product information",
  "keywords":  {
    "keywords": ["Contoso", "install"],
    "reservedKeywords": ["Contoso"],
    "matchSimilarKeywords": true
  },
  "state": "published"
}
```

### Response
Here is an example of the response. 
Note: The response object shown here is truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.search.bookmark"
}-->
```http
HTTP/1.1 201 CREATED
Location: /733b26d5-af76-4eea-ac69-1a0ce8716897
Content-Type: application/json

{
  "id": "733b26d5-af76-4eea-ac69-1a0ce8716897"
}
```

## Example: Create a new acronym

The following request creates a new acronym that will display on the search results page when a user searches for it.

### Request
<!-- {
  "blockType": "request",
  "name": "create_acronym_from_acronyms"
}-->
```http
POST https://graph.microsoft.com/beta/search/acronyms
Content-Type: application/json

{
  "displayName": "GDPR",
  "standsFor": "General Data Protection Regulation",
  "description": "A European Union (EU) regulation on data protection and privacy in the EU and the European Economic Area (EEA) that enhances individuals' control and rights over their personal data, simplifies the regulatory environment for international business, and addresses the transfer of personal data outside the EU and EEA areas.",
  "webUrl": "http://contoso.com/GDPR",
  "state": "published"
}
```

### Response
Here is an example of the response.
Note: The response object shown here is truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.search.acronym"
}-->
```http
HTTP/1.1 200 Ok
Content-Type: application/json

{
  "id": "733b26d5-af76-4eea-ac69-1a0ce8716897"
}
```