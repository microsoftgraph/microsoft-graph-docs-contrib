---
title: "Use the Microsoft Search API to search questions and answers"
description: "Find out how to use the Microsoft Search API in Microsoft Graph to search Q&As."
author: "njerigrevious"
ms.localizationpriority: medium
ms.prod: "search"
---

# Use the Microsoft Search API to search questions and answers

You can use the Microsoft Search API in Microsoft Graph to search questions and answers (Q&As). The [**qna**](/graph/api/resources/search-qna) resource represents Q&As in Microsoft Search. Administrators can create Q&As in the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home#/MicrosoftSearch/qnas) or via the [Create qna](/graph/api/search-searchentity-post-qnas) API.

[!INCLUDE [search-schema-updated](../includes/search-schema-updated.md)]

After you create your Q&As, you can use the Microsoft Graph Search API to search for them. To do this, specify `qna` as the value in the **entityTypes** property in your search request body and then provide a relevant query string, as shown in the following example.

## Example: Search Q&As

### Request

```HTTP
POST https://graph.microsoft.com/beta/search/query
Content-Type: application/json

{
  "requests": [
    {
      "entityTypes": [
        "qna"
      ],
      "query": {
        "queryString":"what is Microsoft Azure"
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
        "hitId": "2364ebd9-cd11-4f47-b785-fe378c6233f3",
        "rank": 1,
        "resource": {
          "@odata.type": "#microsoft.graph.search.qna",
          "id": "2364ebd9-cd11-4f47-b785-fe378c6233f3",
          "displayName": "what is Microsoft Azure",
          "description": "Microsoft Azure is a cloud computing platform and an online portal that allows you to access and manage cloud services and resources provided by Microsoft.",
          "webUrl": "https://azure.microsoft.com/en-us/resources/cloud-computing-dictionary/what-is-azure/"
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

- Sorting, aggregation, and pagination are not supported for [qna]((/graph/api/resources/search-qna) searches.
- Combination search with non-Answer entityTypes (i.e. driveItem, list) is not supported. Only combination search with the other Answer entityTypes bookmarks, qna and acronym is supported.

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview)
