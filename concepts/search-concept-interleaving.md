---
title: "Use the Microsoft Search API to search with interleaved results"
description: "You can use the Microsoft Search API in Microsoft Graph to search multiple entities in one request and get interleaved results."
author: "yiwenwang"
ms.localizationpriority: medium
ms.prod: "search"
---

# Use the Microsoft Search API to search with interleaved results
The searchRequest resource supports passing multiple entity types in a single request, and return interleaved results with requested entity type which is ranked by relevance.

## Supported entity combination

The following table shows the relationship between different entity types that can be interleaved.

| Entity Type |message     | chatMessage| drive       | driveItem  | event      |externalItem | list       | listItem   | person     | site       |
|-------------|------------|------------|-------------|------------|------------|-------------|------------|------------|------------|------------|
|  message    |     True   |     -      |      -      |       -    |      -     |       -     |      -     |       -    |      -     |     -      |
| chatMessage |     -      |     True   |      -      |       -    |      -     |       -     |      -     |       -    |      -     |     -      |
|    drive    |     -      |     -      |      True   |     True   |    -       |   True      |   True     |    True    |      -     |  True      |
|  driveItem  |     -      |     -      |      True   |     True   |    -       |   True      |   True     |    True    |      -     |  True      |
|   event     |     -      |     -      |      -      |       -    |    True    |       -     |      -     |    -       |      -     |     -      |
|externalItem |     -      |     -      |      True   |     True   |    -       |   True      |   True     |    True    |      -     |  True      |
|   list      |     -      |     -      |      True   |     True   |    -       |   True      |   True     |    True    |      -     |  True      |
|  listItem   |     -      |     -      |      True   |     True   |    -       |   True      |   True     |    True    |      -     |  True      |
|   person    |     -      |     -      |      -      |       -    |    -       |       -     |      -     |    -       |     True   |     -      |
|    site     |     -      |     -      |      True   |     True   |    -       |   True      |   True     |    True    |      -     |  True      |



## Examples

### Example 1: Search with SharePoint file types and connector combination

#### Request

```HTTP
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
              "resource": {
                "@odata.type": "#microsoft.graph.externalItem",
                "title": "Test externalItem summary",
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
- Specifying a single connection in content source is not supported, so please only use "/external/connections/*" in contentSource. Note that there is a plan to change the behavior to allow single connection interleaving search in the future.

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview)
