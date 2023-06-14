---
title: "Pass multiple search requests in the request body with the Microsoft Search API"
description: "You can use the Microsoft Search API in Microsoft Graph to search results by passing multiple search requests in the request body."
author: "ZChristine"
ms.localizationpriority: medium
ms.prod: "search"
---

# Use the Microsoft Graph Search API to pass multiple search requests
Now you can pass multiple search requests in a request body with the Microsoft Search API. This is currently enabled for OneDrive or SharePoint, external contents ingested and indexed by [Microsoft Graph connectors](/microsoftsearch/connectors-overview) and answers types (bookmark/acronym/qna).


## Supported entity types

The supported entity types for including multiple search requests in a request body are: `site`, `drive`, `driveItem`, `list`,`listItem`,`externalItem`, `bookmark`,`acronym`, `qna`. Entity types within the same request block should adhere to the supported entity type relationships and combinations defined in the [interleaving search](search-concept-interleaving.md) topic.

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

The following is an example of interleaving response.

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

The following is an example of bad request response.

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

The following is an example of bad request response.

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

- Properties **from**, **size** from different [searchRequest](graph/api/resources/searchrequest?view=graph-rest-beta) in the request body should be the same. And properties **queryString** of [searchQuery](graph/api/resources/searchquery?view=graph-rest-beta) from different searchRequest should be the same.
- Duplicate entity types across different search requests in the request body are not allowed. For example, you cannot have a "bookmark" block and another "bookmark" block.".
- The file entity types (`site`, `drive`, `driveItem`, `list`,`listItem`)  can only be present once among different entity requests..
- The speller functionality can only be used once and it should be included in the first entity request.

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview)
