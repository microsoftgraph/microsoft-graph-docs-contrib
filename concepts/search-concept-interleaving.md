---
title: "Use the Microsoft Search API to search with interleaved results"
description: "Learn how to use the Microsoft Search API in Microsoft Graph to search multiple entities in one request and get interleaved results."
author: "yiwenwang"
ms.localizationpriority: medium
ms.prod: "search"
---

# Use the Microsoft Search API to search with interleaved results

The Microsoft Search **searchRequest** resource supports the passing of multiple entity types in a single request, and returns interleaved results with the requested entity types ranked by relevance.

## Supported entity combinations

The following table shows the relationship between different entity types that can be interleaved. Note that the **qna** entity type is only supported in beta.

| Entity type  | acronym | bookmark | message | chatMessage | drive | driveItem | event | externalItem | list | listItem | person | qna  | site |
|--------------|---------|----------|---------|-------------|-------|-----------|-------|--------------|------|----------|--------|------|------|
| acronym      | True    | True     | -       | -           | -     | -         | -     | -            | -    | -        | -      | True | -    |
| bookmark     | True    | True     | -       | -           | -     | -         | -     | -            | -    | -        | -      | True | -    |
| message      | -       | -        | True    | -           | -     | -         | -     | -            | -    | -        | -      | -    | -    |
| chatMessage  | -       | -        | -       | True        | -     | -         | -     | -            | -    | -        | -      | -    | -    |
| drive        | -       | -        | -       | -           | True  | True      | -     | True         | True | True     | -      | -    | True |
| driveItem    | -       | -        | -       | -           | True  | True      | -     | True         | True | True     | -      | -    | True |
| event        | -       | -        | -       | -           | -     | -         | True  | -            | -    | -        | -      | -    | -    |
| externalItem | -       | -        | -       | -           | True  | True      | -     | True         | True | True     | -      | -    | True |
| list         | -       | -        | -       | -           | True  | True      | -     | True         | True | True     | -      | -    | True |
| listItem     | -       | -        | -       | -           | True  | True      | -     | True         | True | True     | -      | -    | True |
| person       | -       | -        | -       | -           | -     | -         | -     | -            | -    | -        | True   | -    | -    |
| qna          | True    | True     | -       | -           | -     | -         | -     | -            | -    | -        | -      | True | -    |
| site         | -       | -        | -       | -           | True  | True      | -     | True         | True | True     | -      | -    | True |

## Examples

### Example 1: Search with SharePoint file types and all connectors combination

The following shows an example of a request that searches with SharePoint file types and all combination of connectors.

#### Request

The following is an example of the request.

```http
POST https://graph.microsoft.com/beta/search/query
Content-Type: application/json

{
  "requests": [
    {
      "entityTypes": [
        "listItem",
        "site",
        "externalItem"
      ],
      "query": {
        "queryString": "contoso"
      },
      "contentSources": [
        "/external/connections/*"
      ],
      "from": 0,
      "size": 25
    }
  ]
}
```

#### Response

The following is an example of an interleaving response.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#search",
  "value": [
    {
      "searchTerms": [
        "contoso"
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
                "title": "Here is a summary of your messages from last week -   New Feature: Live captions in English-US a"
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
                "title": "Test site summary"
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
                "title": "Test listItem summary 2"
              }
            }
          ]
        }
      ]
    }
  ]
}
```

### Example 2: Search with SharePoint file types and specific connector combination

The following shows an example of a request that searches with SharePoint file types and a specific combination of connectors.

#### Request

The following is an example of a request.

```http
POST https://graph.microsoft.com/beta/search/query
Content-Type: application/json

{
  "requests": [
    {
      "entityTypes": [
        "listItem",
        "site",
        "externalItem"
      ],
      "query": {
        "queryString": "contoso"
      },
      "contentSources": [
        "/external/connections/MicrosoftPowerBI",
        "/external/connections/Learning"
      ],
      "from": 0,
      "size": 25
    }
  ]
}
```

#### Response

The following is an example of an interleaving response.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#search",
  "value": [
    {
      "searchTerms": [
        "contoso"
      ],
      "hitsContainers": [
        {
          "total": 5,
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
                "title": "Here is a summary of your messages from last week -   New Feature: Live captions in English-US a"
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
                "title": "Test site summary"
              }
            },
            {
              "hitId": "adce5789-c324-485a-a8bf-66bb809527ff=",
              "rank": 3,
              "summary": "Test externalItem",
              "contentSource": "MicrosoftPowerBI",
              "resource": {
                "@odata.type": "#microsoft.graph.externalConnectors.externalItem",
                "title": "Test externalItem summary",
              }
            },
            {
              "hitId": "adce5789-c324-485a-a8bf-66bb809527ff=",
              "rank": 4,
              "summary": "Learning externalItem",
              "contentSource": "Learning",
              "resource": {
                "@odata.type": "#microsoft.graph.externalConnectors.externalItem",
                "title": "Test externalItem summary",
              }
            },
            {
              "hitId": "ad60906b-1317-495c-b566-7b8ce1be5555",
              "rank": 5,
              "summary": "Test listItem 2",
              "resource": {
                "@odata.type": "#microsoft.graph.listItem",
                "createdDateTime": "2019-10-07T10:00:08Z",
                "lastModifiedDateTime": "2019-10-07T10:00:11Z",
                "title": "Test listItem summary 2"
              }
            }
          ]
        }
      ]
    }
  ]
}
```

### Example 3: Search with bookmark and acronym combination

The following shows an example of a request that searches with bookmark and acronym as entity types.

#### Request

The following is an example of a request.

```http
POST https://graph.microsoft.com/beta/search/query
Content-Type: application/json

{
  "requests": [
    {
      "entityTypes": [
        "bookmark",
        "acronym"
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

The following is an example of an interleaving response for bookmark and acronym.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#search",
  "value": [
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
    }
  ]
}
```

## Known limitations

- Customized sort is not supported in interleaving scenario, all of them are ordered by relevance.
- QueryTemplate is only supported for file items in interleaving query, it cannot filter out any externalItem results in the response.
  The behavior could be changed in the future and allow queryTemplate filter out the externalItem results, not suggest to use queryTemplate in interleaving request.
- Collapse is not supported.
- Speller modification is not supported, speller suggestion can be used as normal.
- Result template is not supported.
- Aggregation limitation, if same aggregated field both exist in Sharepoint file types (site, drive, driveItem, list, listItem) and connectors. Aggregation result will show two same aggregation buckets with same name, suggest to rename one of its name to bypass the limitation.

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview)
