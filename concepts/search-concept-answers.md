---
title: "Set up administrative search answers for users in an organization"
description: "Microsoft Search lets administrators associate search terms with meanings or web pages specific to their organizations and include these as search answers."
author: "jakeost-msft"
ms.localizationpriority: medium
ms.subservice: "search"
doc_type: conceptualPageType
---

# Set up administrative search answers for users in an organization

Microsoft Search lets administrators associate search terms with meanings or web pages that are specific to their organizations and include these associations as search answers. For example, users in an organization may run into an unfamiliar acronym that represents an internal project name, or a team name that is associated with a team web page. Administrators can set up [acronyms](/microsoftsearch/manage-acronyms), [bookmarks](/microsoftsearch/manage-bookmarks), or [QnAs](/microsoftsearch/manage-qas) in the [Microsoft 365 admin center](https://admin.microsoft.com/), under **Search & intelligence**. This enables users to use search to navigate and get familiarized with their work.

Administrators can also use the Microsoft Search API in Microsoft Graph to [programmatically manage administrative search answers](/graph/api/resources/search-api-answers-overview) in the organization. These answers are displayed in Microsoft Search results when triggered by an acronym or keyword defined in the available search answer resource types: [acronym](/graph/api/resources/search-acronym), [bookmark](/graph/api/resources/search-bookmark), and [qna](/graph/api/resources/search-qna) resources.

When triggered by a defined acronym or keyword, these search answers appear at the top of the search results page in your organization.

## Example 1: Create a new acronym

The following request creates a new acronym that displays on the search results page when a user searches for it.

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_acronym_from_acronyms"
}-->
```http
POST https://graph.microsoft.com/v1.0/search/acronyms
Content-Type: application/json

{
  "displayName": "GDPR",
  "standsFor": "General Data Protection Regulation",
  "description": "A European Union (EU) regulation on data protection and privacy in the EU and the European Economic Area (EEA) that enhances individuals' control and rights over their personal data, simplifies the regulatory environment for international business, and addresses the transfer of personal data outside the EU and EEA areas.",
  "webUrl": "http://contoso.com/GDPR",
  "state": "published"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/create-acronym-from-acronyms-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/create-acronym-from-acronyms-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/create-acronym-from-acronyms-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/create-acronym-from-acronyms-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/create-acronym-from-acronyms-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/create-acronym-from-acronyms-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/create-acronym-from-acronyms-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.search.acronym"
}-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "733b26d5-af76-4eea-ac69-1a0ce8716897"
}
```

## Example 2: Create a new bookmark

The following request creates a new bookmark that displays on the search results page when a user searches for at least one of its keywords.

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_bookmark_from_bookmarks"
}-->
```http
POST https://graph.microsoft.com/v1.0/search/bookmarks
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/create-bookmark-from-bookmarks-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/create-bookmark-from-bookmarks-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/create-bookmark-from-bookmarks-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/create-bookmark-from-bookmarks-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/create-bookmark-from-bookmarks-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/create-bookmark-from-bookmarks-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/create-bookmark-from-bookmarks-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.search.bookmark"
}-->
```http
HTTP/1.1 201 Created
Location: /733b26d5-af76-4eea-ac69-1a0ce8716897
Content-Type: application/json

{
  "id": "733b26d5-af76-4eea-ac69-1a0ce8716897"
}
```

## Next steps

- Be familiar with the Search API scenarios and capabilities: [Microsoft Search API overview](/graph/search-concept-overview).
- Explore the search APIs in [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
- [Use the Microsoft Search API to manage administrative answers](/graph/api/resources/search-api-answers-overview).
