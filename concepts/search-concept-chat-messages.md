---
title: "Use the Microsoft Search API to search Teams messages"
description: "You can use the Microsoft Search API in Microsoft Graph to search for information in Teams messages and return messages ranked by relevance."
author: "yiwenwang"
ms.localizationpriority: medium
ms.prod: "search"
---

# Use the Microsoft Search API to search Teams messages

Use the Microsoft Search API in Microsoft Graph to search for information in Teams messages, return messages ranked by relevance, and render a dedicated search experience. The search applies to the body and attachments of messages in the signed-in user's Teams messages.

[!INCLUDE [search-schema-updated](../includes/search-schema-updated.md)]

Teams Message search also looks for attachments. The [supported file types](/SharePoint/technical-reference/default-crawled-file-name-extensions-and-parsed-file-types) for message attachment search are the same as those for SharePoint Online search.

## Examples
### Example 1: Search Teams chat message

#### Request
The following example queries Teams chat message in the signed-in user's Teams chat storage that contain the string "test" in any part of the chat message (the sender name,  message body, or any attachments). The query returns the first 25 results. The search results are ordered by **DateTime** descending.

<!-- {
  "blockType": "request",
  "name": "basicSearchTeamsMessage"
}
-->

```HTTP
POST https://graph.microsoft.com/beta/search/query
Content-Type: application/json

{
  "requests": [
    {
      "entityTypes": [
        "chatMessage"
      ],
      "query": {
        "queryString": "test"
      },
      "from": 0,
      "size": 25
    }
  ]
}
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->

The following is an example of the response, which contains one message that matches the search criterion.

```HTTP
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "searchTerms": [
                "test"
            ],
            "hitsContainers": [
                {
                    "hits": [
                        {
                            "hitId": "AAMkAGIwMDA5MmY0LWY5ZTgtNGY5YS04NzczLWNhNjc0ZGIyZDBjYgBGAAAAAADm35sgHbzESapJ8+BjBlhEBwDAYtphe7dsRbDrOT/HAHoKAAAAAAEpAADAYtphe7dsRbDrOT/HAHoKAAFwxQGaAAA=",
                            "rank": 1,
                            "summary": "...Test with the TDF account",
                            "resource": {
                                "@odata.type": "microsoft.graph.chatMessage",
                                "id": "1657782060227",
                                "createdDateTime": "2022-07-14T07:01:01Z",
                                "lastModifiedDateTime": "2022-07-14T07:01:03Z",
                                "subject": "",
                                "importance": "normal",
                                "webLink": "https://outlook.office365.com/owa/?ItemID=AAMkAGIwMDA5MmY0LWY5ZTgtNGY5YS04NzczLWNhNjc0ZGIyZDBjYgBGAAAAAADm35sgHbzESapJ8%2BBjBlhEBwDAYtphe7dsRbDrOT%2FHAHoKAAAAAAEpAADAYtphe7dsRbDrOT%2FHAHoKAAFwxQGaAAA%3D&exvsurl=1&viewmodel=ReadMessageItem",
                                "from": {
                                    "emailAddress": {
                                        "name": "Goncalo Torres",
                                        "address": "gtorres@contoso.com"
                                    }
                                },
                                "channelIdentity": {},
                                "etag": "1657782060227",
                                "chatId": "19:bdeff6bfed7f4b159cdf7fdd61aeacaa@thread.v2"
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

### Example 2: Search top results messages

<!-- markdownlint-disable MD024 -->
#### Request
The following example uses the search query shown in Example 1, and sorts the results by relevance. 

<!-- {
  "blockType": "request",
  "name": "searchTopTeamsMessage"
}
-->

```HTTP
POST https://graph.microsoft.com/v1.0/search/query
Content-Type: application/json

{
  "requests": [
    {
      "entityTypes": [
        "message"
      ],
      "query": {
        "queryString": "test"
      },
      "from": 0,
      "size": 15,
      "enableTopResults": true
    }
  ]
}
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```HTTP
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "searchTerms": [
                "test"
            ],
            "hitsContainers": [
                {
                    "hits": [
                        {
                            "hitId": "AAMkAGIwMDA5MmY0LWY5ZTgtNGY5YS04NzczLWNhNjc0ZGIyZDBjYgBGAAAAAADm35sgHbzESapJ8+BjBlhEBwDAYtphe7dsRbDrOT/HAHoKAAAAAAEpAADAYtphe7dsRbDrOT/HAHoKAAFwxQGaAAA=",
                            "rank": 1,
                            "summary": "...Test with the TDF account",
                            "resource": {
                                "@odata.type": "microsoft.graph.chatMessage",
                                "id": "1657782060227",
                                "createdDateTime": "2022-07-14T07:01:01Z",
                                "lastModifiedDateTime": "2022-07-14T07:01:03Z",
                                "subject": "",
                                "importance": "normal",
                                "webLink": "https://outlook.office365.com/owa/?ItemID=AAMkAGIwMDA5MmY0LWY5ZTgtNGY5YS04NzczLWNhNjc0ZGIyZDBjYgBGAAAAAADm35sgHbzESapJ8%2BBjBlhEBwDAYtphe7dsRbDrOT%2FHAHoKAAAAAAEpAADAYtphe7dsRbDrOT%2FHAHoKAAFwxQGaAAA%3D&exvsurl=1&viewmodel=ReadMessageItem",
                                "from": {
                                    "emailAddress": {
                                        "name": "Goncalo Torres",
                                        "address": "gtorres@contoso.com"
                                    }
                                },
                                "channelIdentity": {},
                                "etag": "1657782060227",
                                "chatId": "19:bdeff6bfed7f4b159cdf7fdd61aeacaa@thread.v2"
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

### Example 3: Search Teams Message with [KQL](/sharepoint/dev/general-development/keyword-query-language-kql-syntax-reference)

#### Supported Scope Terms
You can use below scope terms in your KQL query.

| Scope Terms                           | Description   | Example   |
|:-----------------------------------|:--------------|:--------------------|
| from | Search only for messages sent by scoped person | from:bob |
| hasAttachment      | Search only for messages which contains attachment or not | hasAttachment:true |
| IsRead       | Search only for messages which were read or not | IsRead:true | 
| IsMentioned        | Search only for messages which mentioned you or not | IsMentioned:true | 
| mentions      | Search only for messages which mentioned somebody | mentions:497b7a2a9e1a48d780e82965d2fc3a81 (This is user id without '-')| 
| sent | Search only for messages sent to scoped date range | sent > 2022-07-14 | 
| to | Search only for messages sent to scoped person, partial supported for the 1 on 1 message | to:bob |




<!-- markdownlint-disable MD024 -->
#### Request
The following example demonstrates how to search a message that contains 'contoso' and Bob sent to Alice after 2022-07-14.

<!-- {
  "blockType": "request",
  "name": "searchTeamsMessageWithKQL"
}
-->

```HTTP
POST https://graph.microsoft.com/v1.0/search/query
Content-Type: application/json

{
  "requests": [
    {
      "entityTypes": [
        "message"
      ],
      "query": {
        "queryString": "contoso from:bob to:alice sent>2022-07-14"
      },
      "from": 0,
      "size": 15,
      "enableTopResults": true
    }
  ]
}
```
#### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```HTTP
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "searchTerms": [
                "test"
            ],
            "hitsContainers": [
                {
                    "hits": [
                        {
                            "hitId": "AAMkAGIwMDA5MmY0LWY5ZTgtNGY5YS04NzczLWNhNjc0ZGIyZDBjYgBGAAAAAADm35sgHbzESapJ8+BjBlhEBwDAYtphe7dsRbDrOT/HAHoKAAAAAAEpAADAYtphe7dsRbDrOT/HAHoKAAFwxQGaAAA=",
                            "rank": 1,
                            "summary": "...Contoso Test with the TDF account",
                            "resource": {
                                "@odata.type": "microsoft.graph.chatMessage",
                                "id": "1657782060227",
                                "createdDateTime": "2022-07-15T07:01:01Z",
                                "lastModifiedDateTime": "2022-07-15T07:01:03Z",
                                "subject": "",
                                "importance": "normal",
                                "webLink": "https://outlook.office365.com/owa/?ItemID=AAMkAGIwMDA5MmY0LWY5ZTgtNGY5YS04NzczLWNhNjc0ZGIyZDBjYgBGAAAAAADm35sgHbzESapJ8%2BBjBlhEBwDAYtphe7dsRbDrOT%2FHAHoKAAAAAAEpAADAYtphe7dsRbDrOT%2FHAHoKAAFwxQGaAAA%3D&exvsurl=1&viewmodel=ReadMessageItem",
                                "from": {
                                    "emailAddress": {
                                        "name": "bob",
                                        "address": "bob@contoso.com"
                                    }
                                },
                                "channelIdentity": {},
                                "etag": "1657782060228",
                                "chatId": "19:bdeff6bee3df4b159bad3fdd61aeacaa@thread.v2"
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

## Known limitations

- You can access only the signed-in user’s Teams message or the message the user is included in.
- Search Teams API does not return full properties which defined in chatMessage, you can use [Teams Graph API](/graph/api/chatmessage-get.md) to retrieve more details of any single message
- For Teams messages, the **total** property of the [searchHitsContainer](/graph/api/resources/searchhitscontainer) type contains the number of results on the page, not the total number of matching results.
- Sorting results is not supported for messages.
- It doesn't allow to interleave with other entity types in current stage.


## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview)
