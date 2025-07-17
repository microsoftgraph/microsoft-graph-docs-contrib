---
title: "Get bookmark"
description: "Read the properties and relationships of a bookmark object."
author: "jakeost-msft"
ms.localizationpriority: medium
ms.subservice: "search"
doc_type: apiPageType
ms.date: 06/21/2024
---

# Get bookmark

Namespace: microsoft.graph.search

Read the properties and relationships of a [bookmark](../resources/search-bookmark.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "search_bookmark_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/search-bookmark-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /search/bookmarks/{bookmarksId}
```

## Optional query parameters

This method supports the `select`, `expand`, `filter`, `orderBy`, `maxTop`, and `count` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.search.bookmark](../resources/search-bookmark.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_bookmark"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/search/bookmarks/733b26d5-af76-4eea-ac69-1a0ce8716897
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-bookmark-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-bookmark-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-bookmark-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-bookmark-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-bookmark-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-bookmark-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-bookmark-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-bookmark-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.search.bookmark"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "733b26d5-af76-4eea-ac69-1a0ce8716897",
  "displayName": "Italy Holiday",
  "webUrl": "http://www.margiestravel.com/",
  "description": "Book a fancy vacation in Tuscany or browse museums in Florence.",
  "lastModifiedDateTime": "2016-03-21T20:01:37Z",
  "lastModifiedBy": {
    "user": {
        "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
        "displayName": "Amalie Larsen"
    }
  },
  "keywords":  {
    "keywords": ["Vacation in Europe", "Holiday in Europe"],
    "reservedKeywords": ["Vacation in Italy"],
    "matchSimilarKeywords": true
  },
  "categories": ["HR"],
  "availabilityStartDateTime": "2020-09-21T20:01:37Z",
  "availabilityEndDateTime": "2020-11-21T20:01:37Z",
  "languageTags": ["en-us"],
  "platforms": ["ios"],
  "groupIds": ["groupId"],
  "targetedVariations": null,
  "powerAppIds": ["powerAppId"],
  "state": "published",
  "isSuggested": false
}
```
