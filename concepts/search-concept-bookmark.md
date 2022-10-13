---
title: "Use the Microsoft Search API to search bookmarks"
description: "Find out how to use the Microsoft Search API in Microsoft Graph to search bookmarks."
author: "njerigrevious"
ms.localizationpriority: medium
ms.prod: "search"
---

# Use the Microsoft Search API to search bookmarks

You can use the Microsoft Search API in Microsoft Graph to search bookmarks. Administrators can create bookmarks in the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home#/MicrosoftSearch/bookmarks) or via the [Create bookmark](/graph/api/search-searchentity-post-bookmarks) API.

[!INCLUDE [search-schema-updated](../includes/search-schema-updated.md)]

After bookmarks are created, to search for them, in the [searchRequest](/graph/api/resources/searchrequest), in the **entityTypes** property, specify `bookmark` as the  value.

## Example: Search bookmarks

### Request

```HTTP
POST https://graph.microsoft.com/beta/search/query
Content-Type: application/json

{
  "requests": [
    {
      "entityTypes": [
        "bookmark"
      ],
      "query": {
        "queryString":"Yammer"
      }
    }
  ]
}
```

### Response

```HTTP
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#search",
  "value": [
  {
   "@odata.type": "#microsoft.graph.searchResponse",
   "hitsContainers": [
    {
     "@odata.type": "#microsoft.graph.searchHitsContainer",
     "hits": [
      {
       "@odata.type": "#microsoft.graph.searchHit",
       "hitId": "AAMkADEwODY2NzllLTQ3MmEtNGRlMC05ZTUyLTE4ZDRhYmU1ZGM3NABGAAAAAAA3+iYQBnJnQabRVDelNhnzBwAejhWkAOAxQ6M4c1c9NwfrAAAAAAENAAAejhWkAOAxQ6M4c1c9NwfrAABbUZLJAAA=",
       "rank": 1,
       "resource": {
          "@odata.type": "#microsoft.graph.search.bookmark",
          "id": "a9f59c69-f4a1-42ac-820e-0f35114300f8",
          "displayName": "Yammer",
          "description": "Yammer is a collaboration tool that helps you connect and engage across the company. Start conversations, share knowledge, and build communities.",
          "webUrl": "https://www.yammer.com/office365",
        }
       }
      }
     ],
     "total": 1,
     "moreResultsAvailable": false
    }
   ]
  }
 ]
}
```

## Known issues

Sorting, aggregation, and pagination are not supported for bookmark searches.

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview)
