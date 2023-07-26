---
title: "Use the Microsoft Graph Search API to pass multiple search requests"
description: "You can use the Microsoft Search API in Microsoft Graph to search results by passing multiple search requests in the request body."
author: "ZChristine"
ms.localizationpriority: medium
ms.prod: "search"
---

# Use the Microsoft Graph Search API to pass multiple search requests
The Microsoft Search API allows you to include multiple search requests in a single request body. This capability is currently available for OneDrive and SharePoint, as well as for external content that is ingested and indexed by [Microsoft Graph connectors](/microsoftsearch/connectors-overview) and answer resource types, including bookmarks, acronyms, and Q&A.


## Supported entity types

The supported entity types for including multiple search requests in a request body are: **site**, **drive**, **driveItem**, **list**,**listItem**,**externalItem**, **bookmark**,**acronym**, and **qna**. Entity types within the same request block should adhere to the supported entity type relationships and combinations defined in the [interleaving search](search-concept-interleaving.md) topic.

## Examples

### Example 1: Search with SharePoint file types and bookmark/acronym combinations

#### Request

```HTTP
POST https://graph.microsoft.com/beta/search/query
Content-Type: application/json

{
  "requests": [
    {
      "entityTypes": [
        "bookmark", "acronym"
      ],
      "query": {
        "queryString": "POC"
      },
      "from": 0,
      "size": 25
    },
    {
      "entityTypes": [
        "listItem",
        "site"
      ],
      "query": {
        "queryString": "POC"
      },
      "from": 0,
      "size": 25
    }
  ]
}
```

#### Response

The following shows a response that searches with SharePoint file types and bookmark/acronym combinations.

```HTTP
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#search",
  "value": [
    {
      "searchTerms": [
        "POC"
      ],
      "hitsContainers": [
        {
          "total": 1,
          "moreResultsAvailable": false,
          "hits": [
            {
              "hitId": "adce5789-c324-485a-a8bf-66bb809527ff",
              "rank": 1,
              "summary": "",
              "resource": {
                "@odata.type": "#microsoft.graph.search.acronym",
                "id": "adce5789-c324-485a-a8bf-66bb809527ff",
                "displayName": "POC",
                "description": "Acronym in Spanish",
                "webUrl": "",
                "standsFor": "prueba de concepto"
              }
            },
            {
              "hitId": "1c0599db-2e89-4327-827a-3935c999f6cc",
              "rank": 2,
              "summary": "",
              "resource": {
                "@odata.type": "#microsoft.graph.search.bookmark",
                "id": "1c0599db-2e89-4327-827a-3935c999f6cc",
                "displayName": "POC",
                "description": "A proof of concept (POC) is an exercise in which work is focused on determining whether an idea can be turned into a reality. ",
                "webUrl": "https://en.wikipedia.org/wiki/POC"
              }
            }
          ]
        }
      ]
    },
    {
      "searchTerms": [
        "POC"
      ],
      "hitsContainers": [
        {
          "total": 2,
          "moreResultsAvailable": false,
          "hits": [
            {
              "hitId": "adce5789-c324-485a-a8bf-66bb809527ff",
              "rank": 3,
              "summary": "Test listItem 1",
              "resource": {
                "@odata.type": "#microsoft.graph.listItem",
                "createdDateTime": "2019-10-07T10:00:08Z",
                "lastModifiedDateTime": "2019-10-07T10:00:11Z",
                "title": "Here is a summary of your messages from last week -   New Feature: Live captions in English-US a POC"
              }
            },
            {
              "hitId": "microsoft.sharepoint.com,9fb3f597-167e-4c3d-b5e6-1ddc18d22d48,c53cd46e-9033-4b42-af94-0ad76ab75fd0",
              "rank": 4,
              "summary": "Test site",
              "resource": {
                "@odata.type": "#microsoft.graph.site",
                "createdDateTime": "2019-10-07T10:00:08Z",
                "lastModifiedDateTime": "2019-10-07T10:00:11Z",
                "title": "Test site summary POC"
              }
            }
          ]
        }
      ]
    }
  ]
}
```

## Bad request examples

The following examples show requests that result in a bad request error response. For details about limitations with search requests, see [Known limitations(#known-limitations).

### Example 1: Search with the same entity types in separate request blocks in the request body

#### Request

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
        "queryString": "POC"
      },
      "from": 0,
      "size": 25
    },
    {
      "entityTypes": [
        "bookmark",
      ],
      "query": {
        "queryString": "POC"
      },
      "from": 0,
      "size": 25
    }
  ]
}
```

#### Response

The following is an example of a bad request response.

```HTTP
HTTP/1.1 200 OK
Content-type: application/json

{
    "error": {
        "code": "BadRequest",
        "message": "SearchRequest Invalid (Entity types must not be duplicates in multiple entity requests)",
        "target": "",
        "details": [
            {
                "code": "Microsoft.SubstrateSearch.Api.ErrorReporting.ResourceBasedExceptions.BadRequestException",
                "message": "Entity types must not be duplicates in multiple entity requests",
                "target": "",
                "httpCode": 400
            }
        ],
        "httpCode": 400
    }
}
```

### Example 2: Search with the file entity types in separate request blocks in the request body

#### Request

```HTTP
POST https://graph.microsoft.com/beta/search/query
Content-Type: application/json

{
  "requests": [
    {
      "entityTypes": [
        "site"
      ],
      "query": {
        "queryString": "POC"
      },
      "from": 0,
      "size": 25
    },
    {
      "entityTypes": [
        "drive",
      ],
      "query": {
        "queryString": "POC"
      },
      "from": 0,
      "size": 25
    }
  ]
}
```

#### Response

The following is an example of a bad request response.

```HTTP
HTTP/1.1 200 OK
Content-type: application/json

{
    "error": {
        "code": "BadRequest",
        "message": "SearchRequest Invalid (Entity types must not be duplicates in multiple entity requests)",
        "target": "",
        "details": [
            {
                "code": "Microsoft.SubstrateSearch.Api.ErrorReporting.ResourceBasedExceptions.BadRequestException",
                "message": "File entity types can only appear in one entity request",
                "target": "",
                "httpCode": 400
            }
        ],
        "httpCode": 400
    }
}
```

## Known limitations

- The values used for the **from** and **size** properties in different [searchRequest](/graph/api/resources/searchRequest) instances in the request body should be the same. The value used for the **queryString** property in different [searchQuery](/graph/api/resources/searchquery) instances in different **searchRequest** instances should be the same.
- Duplicate entity types across different search requests in the request body are not allowed. For example, you cannot have a **bookmark** [searchRequest](/graph/api/resources/searchRequest) and another **bookmark** [searchRequest](/graph/api/resources/searchRequest) in a request body.
- The file entity types (**site**, **drive**, **driveItem**, **list**, and **listItem**) can only be present in the same search request of a request body. For example, you can't include a **site** entity in one [searchRequest](/graph/api/resources/searchRequest) and a **drive** entity in a different [searchRequest](/graph/api/resources/searchRequest) in the request body. 
- The [speller](search-concept-speller.md) functionality can only be used once and it should be included in the first [searchRequest](/graph/api/resources/searchRequest) in the request body.

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview)
