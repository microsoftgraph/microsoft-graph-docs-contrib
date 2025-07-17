---
title: "Use the Microsoft Search API to search with interleaved results"
description: "Learn how to use the Microsoft Search API in Microsoft Graph to search multiple entities in one request and get interleaved results."
author: "yiwenwang"
ms.localizationpriority: medium
ms.subservice: "search"
ms.date: 11/07/2024
---

# Use the Microsoft Search API to search with interleaved results

The Microsoft Search **searchRequest** resource supports the passing of multiple entity types in a single request, and returns interleaved results with the requested entity types ranked by relevance.

## Supported entity combinations

The following table shows the relationship between different entity types that can be interleaved. The **qna** entity type is only supported in beta.

| Entity type  | acronym | bookmark | message | chatMessage | drive | driveItem | event | externalItem | list | listItem | person | qna  | site |
|--------------|---------|----------|---------|-------------|-------|-----------|-------|--------------|------|----------|--------|------|------|
| acronym      | True    | True     | -       | -           | -     | -         | -     | -            | -    | -        | -      | True | -    |
| bookmark     | True    | True     | -       | -           | -     | -         | -     | -            | -    | -        | -      | True | -    |
| message      | -       | -        | True    | True        | -     | -         | -     | -            | -    | -        | -      | -    | -    |
| chatMessage  | -       | -        | True    | True        | -     | -         | -     | -            | -    | -        | -      | -    | -    |
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

The following example shows a request that searches with SharePoint file types and all combination of connectors.

#### Request

The following example shows a request.

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

The following example shows the interleaving response.

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

The following example shows a request that searches with SharePoint file types and a specific combination of connectors.

#### Request

The following example shows a request.

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

The following example shows the interleaving response.

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

The following example shows a request that searches with bookmark and acronym as entity types.

#### Request

The following example shows a request.

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

The following example shows the interleaving response for bookmark and acronym.

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

### Example 4: Interleave Teams and Outlook content

The following example shows how to interleave Teams chat message and Outlook message content.

#### Request

The following example shows a request.

```http
POST https://graph.microsoft.com/v1.0/search/query
Content-Type: application/json

{
    "requests": [
        {
            "entityTypes": [
                "chatMessage",
                "message"
            ],
            "query": {
                "queryString": "*"
            },
            "from": 0,
            "size": 5
        }
    ]
}
```

#### Response

The following example shows the interleaving response.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "searchTerms": [],
            "hitsContainers": [
                {
                    "hits": [
                        {
                            "hitId": "AQMkAGNhZjFkYzQ3LTc2MDYtNGZiMS04ZGE3LTQ2MjUyZmRlMzA0NgBGAAAD7MLXbKjTeUeUiM62OAqxBAcA/PUmjl3OgEumTcnPoOXsegAAAgFYAAAA/PUmjl3OgEumTcnPoOXsegABBugTfgAAAA==",
                            "rank": 1,
                            "summary": "hi",
                            "resource": {
                                "@odata.type": "microsoft.graph.chatMessage",
                                "id": "1657786709667",
                                "createdDateTime": "2022-07-14T08:18:30Z",
                                "lastModifiedDateTime": "2022-07-14T08:19:07Z",
                                "subject": "",
                                "importance": "normal",
                                "webLink": "https://teams.microsoft.com/l/message/19%3a8b00f92f-63ba-4ad7-822e-862219ba93b3_ba9f3156-32ae-4308-bd33-64a92319b578%40unq.gbl.spaces/1657786709667?context=%7B%22contextType%22:%22chat%22%7D",
                                "from": {
                                    "emailAddress": {
                                        "name": "Tong Zheng",
                                        "address": "Tong.Zheng@microsoft.com"
                                    }
                                },
                                "channelIdentity": {
                                    "channelId": "19:8b00f92f-63ba-4ad7-822e-862219ba93b3_ba9f3156-32ae-4308-bd33-64a92319b578@unq.gbl.spaces"
                                },
                                "etag": "1657786709667",
                                "chatId": "19:8b00f92f-63ba-4ad7-822e-862219ba93b3_ba9f3156-32ae-4308-bd33-64a92319b578@unq.gbl.spaces"
                            }
                        },
                        {
                            "hitId": "AQMkAGNhZjFkYzQ3LTc2MDYtNGZiMS04ZGE3LTQ2MjUyZmRlMzA0NgBGAAAD7MLXbKjTeUeUiM62OAqxBAcA-PUmjl3OgEumTcnPoOXsegAAAgEBAAAAAPz1Jo5dzoBLpk3Jz6Dl7HoAAAIJWgAAAA==",
                            "rank": 2,
                            "summary": "",
                            "resource": {
                                "@odata.type": "#microsoft.graph.message",
                                "createdDateTime": "2021-06-11T23:17:11Z",
                                "lastModifiedDateTime": "2021-06-12T02:58:00Z",
                                "receivedDateTime": "2021-06-11T23:17:11Z",
                                "sentDateTime": "2021-06-11T23:17:11Z",
                                "hasAttachments": false,
                                "internetMessageId": "<DM5PR00MB0406C60478A4456D6B0F83F8D4349@DM5PR00MB0406.namprd00.prod.outlook.com>",
                                "bodyPreview": "",
                                "importance": "normal",
                                "parentFolderId": "AQMkAGNhZjFkYzQ3LTc2MDYtNGZiMS04ZGE3LTQ2MjUyZmRlMzA0NgAuAAAD7MLXbKjTeUeUiM62OAqxBAEA-PUmjl3OgEumTcnPoOXsegAAAgEBAAAAAA==",
                                "conversationId": "AAQkAGNhZjFkYzQ3LTc2MDYtNGZiMS04ZGE3LTQ2MjUyZmRlMzA0NgAQANQdjNmPALIE6YAJmOz4Qn4=",
                                "isRead": true,
                                "isDraft": true,
                                "webLink": "https://outlook.office365.com/owa/?ItemID=AQMkAGNhZjFkYzQ3LTc2MDYtNGZiMS04ZGE3LTQ2MjUyZmRlMzA0NgBGAAAD7MLXbKjTeUeUiM62OAqxBAcA%2FPUmjl3OgEumTcnPoOXsegAAAgEBAAAAAPz1Jo5dzoBLpk3Jz6Dl7HoAAAIJWgAAAA%3D%3D&exvsurl=1&viewmodel=ReadMessageItem",
                                "inferenceClassification": "focused"
                            }
                        }
                    ],
                    "total": 2,
                    "moreResultsAvailable": false
                }
            ]
        }
    ],
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.searchResponse)"
}
```

## Known limitations

- Customized sort isn't supported in interleaving scenarios, all items are ordered by relevance.
- QueryTemplate is only supported for file items in an interleaving query. External item results aren't filtered out in the response. We don't recommend that you use queryTemplate in interleaving requests.
- Collapse isn't supported.
- Speller modification isn't supported. Speller suggestions only are supported.
- Result template isn't supported.
- Aggregation limitations occur if the aggregated field exists in multiple Sharepoint file types (**site**, **drive**, **driveItem**, **list**, **listItem**) and connectors. Aggregation results shows two aggregation buckets with the same name; to bypass the limitation, rename one of them.

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview)
