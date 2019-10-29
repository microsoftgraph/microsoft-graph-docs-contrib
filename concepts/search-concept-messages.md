---
title: "Search messages"
description: "An application can use the search API to retrieve information from the user’s own mailbox and render this in a dedicated search experience"
author: "knightsu"
localization_priority: Normal
ms.prod: "search"
---

# Search messages

People gather and store a lot information in their email conversation. It is very common that some critical and relevance piece of information is embedded in the body of an email, or in an attachment. An application can use the search API to retrieve information from the user’s own mailbox and render this in a dedicated search experience.

Moreover, the search API now let developers retrieve email ranked by relevance.

Message search only applies to user's personal email. You currently cannot search shared or delegated mailboxes using the search API.

## Search messages
You can build a search request to query emails in your mailbox, return the first 25 results.
Results will be ordered by datetime desc.

The search term can include any existing know [filtering capability](https://support.office.com/en-us/article/learn-to-narrow-your-search-criteria-for-better-searches-in-outlook-d824d1e9-a255-4c8a-8553-276fb895a8da) users can enter into the search box in Outlook.

Request

```HTTP
POST /search/query
Content-Type: application/json
Authorization: Bearer AAD_TOKEN
```

```json
{
  "requests": [{
      "entityTypes": ["microsoft.graph.message"],
      "query": {
        "query_string": {
          "query": "contoso"
        }
      },
      "from": 0,
      "size": 25
    }
  ]
}
```

Response 

Here is an example of the response. 

Note: The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

```json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#search",
    "value": [
        {
            "searchTerms": [
                "contoso"
            ],
            "hitsContainers": [
                {
                    "total": 2,
                    "moreResultsAvailable": false,
                    "hits": [
                        {
                            "_id": "ptWLQ4o6HYpQg8xmAAATzOzRAAA=",
                            "_score": 1,
                            "_sortField": "DateTime",
                            "_summary": "Here is a summary of your messages from last week",
                            "_source": {
                                "@odata.type": "#microsoft.graph.message",
                                "createdDateTime": "2019-10-07T10:00:08Z",
                                "lastModifiedDateTime": "2019-10-07T10:00:11Z",
                                "receivedDateTime": "2019-10-07T10:00:09Z",
                                "sentDateTime": "2019-10-07T09:59:52Z",
                                "hasAttachments": false,
                                "subject": "Weekly digest: Office 365 changes",
                                "bodyPreview": "Here is a summary of your messages from last week -   New Feature: Live captions in English-US a",
                                "importance": "normal",
                                "replyTo": [
                                    {
                                        "emailAddress": {
                                            "name": "GCS3 Test"
                                        }
                                    }
                                ],
                                "sender": {
                                    "emailAddress": {
                                        "name": "Office365 Message Center",
                                        "address": "o365mc@microsoft.com"
                                    }
                                },
                                "from": {
                                    "emailAddress": {
                                        "name": "Office365 Message Center",
                                        "address": "o365mc@microsoft.com",
                                    }
                                }
                            }
                        },
                        {
                            //here another search result
                        }
                    ]
                }
            ]
        }
    ]
}
```

## Search top results messages
You can build a search request to retrieve emails sorted by relevance.

Request

```HTTP
POST /search/query
Content-Type: application/json
Authorization: Bearer AAD_TOKEN
```

```json
{
    "requests": [{
        "entityTypes": ["microsoft.graph.message"],
        "query": {
            "query_string": {
                "query": "contoso"
            }
        },
        "from": 0,
        "size": 15,
        "enableTopResults": true
    }]
}
```

## Known limitations

- You can only access user’s own mailbox. Searching delegated mailbox is not supported.

- For Messages, Total in the [searchHitsContainer](/graph/api/resources/searchhitscontainer?view=graph-rest-beta) contains the number of result in the Page, not the number of matching results.

## Next steps

Find out more about:

- The [search API](/graph/api/search-query?view=graph-rest-beta)
