---
title: "Use the Microsoft Search API to search results by passing multiple search requests in the request body"
description: "You can use the Microsoft Search API in Microsoft Graph to search results by passing multiple search requests in the request body."
author: "ZChristine"
ms.localizationpriority: medium
ms.prod: "search"
---

# Use the Microsoft Search API to search results by passing multiple search requests in the request body
Use the Microsoft Search API in Microsoft Graph to search contents stored in OneDrive or SharePoint or external contents ingested and indexed by [Microsoft Graph connectors](/microsoftsearch/connectors-overview) or bookmark/acronym/qna in your organization by passing multiple search requests in the request body.


## Supported entity combination

Entity types in every search request in the request body should be contained in the entity types list: `site`, `drive`, `driveItem`, `list`,`listItem`,`externalItem`, `bookmark`,`acronym`, `qna`. And Entity types in every search request should follow the relationships defined in [interleaving search](search-concept-interleaving.md).

`site`, `drive`, `driveItem`, `list`,`listItem` can only be set in the same search request. 

## Examples

### Example 1: Search with SharePoint file types and bookmark/acornym combination

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
        "site",
        "externalItem"
      ],
      "query": {
        "queryString": "POC"
      },
      "contentSources":[
        "/external/connections/*"
      ],
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
          "total": 4,
          "moreResultsAvailable": false,
          "hits": [
            {
              "hitId": "adce5789-c324-485a-a8bf-66bb809527ff",
              "rank": 1,
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
              "rank": 2,
              "summary": "Test site",
              "resource": {
                "@odata.type": "#microsoft.graph.site",
                "createdDateTime": "2019-10-07T10:00:08Z",
                "lastModifiedDateTime": "2019-10-07T10:00:11Z",
                "title": "Test site summary POC"
              }
            },
            {
              "hitId": "adce5789-c324-485a-a8bf-66bb809527ff=",
              "rank": 3,
              "summary": "Test externalItem",
              "resource": {
                "@odata.type": "#microsoft.graph.externalItem",
                "title": "Test externalItem summary POC",
              }
            },
            {
              "hitId": "ad60906b-1317-495c-b566-7b8ce1be5555",
              "rank": 4,
              "summary": "Test listItem 2",
              "resource": {
                "@odata.type": "#microsoft.graph.listItem",
                "createdDateTime": "2019-10-07T10:00:08Z",
                "lastModifiedDateTime": "2019-10-07T10:00:11Z",
                "title": "Test listItem summary 2 POC"
              }
            }
          ]
        }
      ]
    }
  ]
}
```

## Known limitations

- Properties **from**, **szie** from different [searchRequest](graph/api/resources/searchrequest?view=graph-rest-beta) in the request body should be the same. And properties **queryString** of [searchQuery](graph/api/resources/searchquery?view=graph-rest-beta) from different searchRequest should be the same.
- Duplicate entitytype across different search requests in the request body is not allowed.
- File entity type can only occur once across different entity requests.
- Speller should only appear one time and in the first entity request.

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview)
