---
title: "Use the Microsoft Search API to search acronyms"
description: "Find out how to use the Microsoft Search API in Microsoft Graph to search acronyms."
author: "njerigrevious"
ms.localizationpriority: medium
ms.prod: "search"
---

# Use the Microsoft Search API to search acronyms

You can use the Microsoft Search API in Microsoft Graph to search acronyms. Administrators can create acronyms in the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home#/MicrosoftSearch/acronyms) or via the [Create acronym](/graph/api/search-searchentity-post-acronyms) API.

[!INCLUDE [search-schema-updated](../includes/search-schema-updated.md)]

After acronyms are created, to search for them, in the [searchRequest](/graph/api/resources/searchrequest), in the **entityTypes** property, specify `acronym` as the value.

## Example 1: Search acronyms

### Request

```HTTP
POST https://graph.microsoft.com/beta/search/query
Content-Type: application/json

{
  "requests": [
    {
      "entityTypes": [
        "acronym"
      ],
      "query": {
        "queryString":"what is KQL"
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
          "@odata.type": "#microsoft.graph.search.acronym",
          "id": "a9f59c69-f4a1-42ac-820e-0f35114300f8",
          "displayName": "KQL",
          "description": "Kusto Query Language is a powerful tool to explore your data and discover patterns, identify anomalies and outliers, create statistical modeling, and more.",
          "webUrl": "https://docs.microsoft.com/en-us/azure/data-explorer/kusto/query",
          "standsFor": "Kusto Query Language"
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

Sorting, aggregation, and pagination are not supported for acronym searches.

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview)
