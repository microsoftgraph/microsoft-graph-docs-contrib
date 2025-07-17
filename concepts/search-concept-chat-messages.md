---
title: "Use the Microsoft Search API to search Teams messages"
description: "You can use the Microsoft Search API in Microsoft Graph to search for information in Teams messages and return messages ranked by relevance."
author: "yiwenwang"
ms.localizationpriority: medium
ms.subservice: "search"
ms.date: 11/07/2024
---

# Use the Microsoft Search API to search Teams messages

Use the Microsoft Search API in Microsoft Graph to search for information in Teams messages, return messages ranked by relevance, and render a dedicated search experience. The search applies to the body and attachments of messages in the signed-in user's Teams messages.

[!INCLUDE [search-schema-updated](../includes/search-schema-updated.md)]

Teams message search also looks for attachments. The [supported file types](/SharePoint/technical-reference/default-crawled-file-name-extensions-and-parsed-file-types) for message attachment search are the same as those for SharePoint Online search.

## Examples
### Example 1: Search Teams chat message

#### Request
The following example queries Teams chat messages in the signed-in user's Teams chat storage that contains the string "test" in any part of the chat message (the sender name,  message body, or any attachments). The query returns the first 25 results. The search results are ordered by descending **dateTime**.


# [HTTP](#tab/http)
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/basicsearchteamsmessage-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/beta/basicsearchteamsmessage-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/basicsearchteamsmessage-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/basicsearchteamsmessage-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/basicsearchteamsmessage-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/basicsearchteamsmessage-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/basicsearchteamsmessage-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/basicsearchteamsmessage-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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


# [HTTP](#tab/http)
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
        "chatMessage"
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/searchtopteamsmessage-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/searchtopteamsmessage-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/searchtopteamsmessage-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/searchtopteamsmessage-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/searchtopteamsmessage-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/searchtopteamsmessage-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/searchtopteamsmessage-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/searchtopteamsmessage-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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

### Example 3: Search Teams Message with KQL

#### Supported scope terms
You can use the following  scope terms in your [Keyword Query Language (KQL)](/sharepoint/dev/general-development/keyword-query-language-kql-syntax-reference) query.

| Scope Terms                           | Description   | Example   |
|:-----------------------------------|:--------------|:--------------------|
| from | Search only for messages sent by scoped person. | from:bob |
| hasAttachment      | Search only for messages that contain or don't contain attachments. | hasAttachment:true |
| IsRead       | Search only for messages that were or weren't read. | IsRead:true | 
| IsMentioned        | Search only for messages that did or didn't mention you. | IsMentioned:true | 
| mentions      | Search only for messages that mentioned somebody. | mentions:497b7a2a9e1a48d780e82965d2fc3a81 (This is user ID without '-')| 
| sent | Search only for messages sent to the scoped date range. | sent > 2022-07-14 | 
| to | Search only for messages sent to the scoped person, partially supported for the one-on-one message. | to:bob |




<!-- markdownlint-disable MD024 -->
#### Request
The following example shows how to search a message that contains Contoso that Bob sent to Alice after 2022-07-14.


# [HTTP](#tab/http)
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
        "chatMessage"
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/searchteamsmessagewithkql-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/searchteamsmessagewithkql-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/searchteamsmessagewithkql-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/searchteamsmessagewithkql-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/searchteamsmessagewithkql-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/searchteamsmessagewithkql-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/searchteamsmessagewithkql-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/searchteamsmessagewithkql-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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

- You can access only the signed-in user's Teams message or the message the user is included in.
- The search Teams API doesn't return all properties defined in [chatMessage](/graph/api/resources/chatmessage). You can use the [Teams API](/graph/api/chatmessage-get) to retrieve more details about any single message.
- For Teams messages, the **total** property of the [searchHitsContainer](/graph/api/resources/searchhitscontainer) type contains the number of results on the page, not the total number of matching results.
- Sorting results isn't supported for messages.
- You can't use this API with other entity types at this time.

## JSON representation

Here's a JSON representation of all retrievable properties currently available for [chatMessage](/graph/api/resources/chatmessage) search.

```json
{
  "channelIdentity": {"@odata.type": "microsoft.graph.channelIdentity"},
  "chatId": "string",
  "createdDateTime": "string (timestamp)",
  "etag": "string",
  "from": {"@odata.type": "microsoft.graph.chatMessageFromIdentitySet"},
  "id": "string (identifier)",
  "importance": "string",
  "lastModifiedDateTime": "string (timestamp)",
  "subject": "string",
  "webUrl": "string"
}
```

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview)
