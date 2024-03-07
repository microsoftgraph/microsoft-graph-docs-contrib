---
title: "List bookmarks"
description: "Get a list of bookmark objects and their properties."
author: "jakeost-msft"
ms.localizationpriority: medium
ms.subservice: "search"
doc_type: apiPageType
---

# List bookmarks

Namespace: microsoft.graph.search

Get a list of [bookmark](../resources/search-bookmark.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "search_searchentity_list_bookmarks" } -->
[!INCLUDE [permissions-table](../includes/permissions/search-searchentity-list-bookmarks-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /search/bookmarks
```

## Optional query parameters

This method supports the `select`, `expand`, `filter`, `orderBy`, `maxTop`, and `count` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.search.bookmark](../resources/search-bookmark.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_bookmark"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/search/bookmarks
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.search.bookmark)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

[
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
]
```
