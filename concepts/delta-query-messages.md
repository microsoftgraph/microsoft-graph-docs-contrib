---
title: "Get incremental changes to messages in a folder"
description: "Use delta query to track changes of messages in a folder hierarchy by tracking each folder individually. Example shows how to synchronize messages in a folder."
author: "SuryaLashmiS"
ms.subservice: change-notifications
ms.localizationpriority: high
ms.custom: graphiamtop20
ms.date: 11/07/2024
---

# Get incremental changes to messages in a folder

Delta query lets you query for additions, deletions, or updates to messages in a folder by way of a series of
[delta](/graph/api/message-delta) function calls. Delta data enables you to maintain
and synchronize a local store of a user's messages without having to fetch the entire set of the user's messages from the server every time.

Synchronizing message items in a local store can use the **delta** query for the initial full synchronization and subsequent incremental synchronizations. Typically, you would do an initial full synchronization of all the messages in a folder (for example, the user's Inbox), and then, get incremental changes to that folder periodically.

To get incremental changes of only a certain type - messages that are created, updated, or deleted since the initial sync - do an initial round of synchronization of all the messages in the folder, and then get incremental changes of a specific desired type in subsequent rounds. Specify the desired change type as a query option in the initial **delta** request; Microsoft Graph automatically encodes any OData and custom query options into the @odata.nextLink or @odata.deltaLink provided in the response.

## Track message changes in a folder

Delta query is a per-folder operation. To track the changes of the messages in a folder hierarchy, you need to track each folder individually.

Tracking message changes in a mail folder typically is a round of one or more GET requests with the **delta** function. The initial GET
request is very much like the way you [get messages](/graph/api/user-list-messages),
except that you include the **delta** function:

```http
GET https://graph.microsoft.com/v1.0/me/mailFolders/{id}/messages/delta
```

A GET request with the **delta** function returns either:

- A `@odata.nextLink` (that contains a URL with a **delta** function call and a _skipToken_), or
- A `@odata.deltaLink` (that contains a URL with a **delta** function call and _deltaToken_).

These tokens are [state tokens](delta-query-overview.md#state-tokens) that are opaque to the client.
To proceed with a round of change tracking, copy and apply the URL returned from the last GET
request to the next **delta** function call for the same folder. A `@odata.deltaLink` returned in a response
signifies that the current round of change tracking is complete. You can save and use the `@odata.deltaLink` URL
when you begin the next round.

The rest of this article includes 2 examples:
- See [example 1](#example-1-synchronize-messages-in-a-folder) to learn how to use the `@odata.nextLink` and `@odata.deltaLink` URLs.
- See [example 2](#example-2-synchronize-messages-in-a-folder-based-on-change-type) to learn how to incrementally get only messages created since the initial round.

### Use query parameters in a delta query for messages

- You can use a `$select` query parameter as in any GET request to specify only the properties your need for best performance. The `id` property is always returned.
- Delta query support `$select`, `$top`, and `$expand` for messages.
- There is limited support for `$filter` and `$orderby`:
  - The only supported `$filter` expressions are `$filter=receivedDateTime+ge+{value}`
  or `$filter=receivedDateTime+gt+{value}`.
  - Applying `$filter` in a delta query returns only up to 5,000 messages.
  - The only supported `$orderby` expression is `$orderby=receivedDateTime+desc`. If you don't include an `$orderby` expression, the return order isn't guaranteed.
- There is no support for `$search`.

Additionally, to return only certain type of changes (created, updated or deleted) in the delta query's response, you can optionally filter the desired type of change using a custom query option `changeType`. Possible values are `created`, `updated` or `deleted`.
<!-- { "blockType": "ignored" } -->
```http
GET /me/mailfolders/{id}/messages/delta?changeType=created
GET /me/mailfolders/{id}/messages/delta?changeType=updated
GET /me/mailfolders/{id}/messages/delta?changeType=deleted
```

### Optional request header

Each delta query GET request returns a collection of one or more messages in the response. You can optionally specify
the request header, `Prefer: odata.maxpagesize={x}`, to set the maximum number of messages in a response.

<!--
### Iterative process

A typical round to track message changes goes like this:

1. Make the initial GET request with the mandatory _Prefer: odata.track-changes_ header. If this is your very first delta query
for messages in that folder, don't provide any state token. If the messages support tracking changes, following the iterative
process (steps 2-6) described below will return the entire set of messages in that folder.

2. Check if the first response returns the _Preference-Applied: odata.track-changes_ header,
which confirms your resource supports tracking changes. Stop if you don't receive the response header.

3. If you receive a _skipToken_ (in an _@odata.nextLink_ response header) in the response, you should continue to track the
   additional messages that have changed (added, deleted, or updated). Make a second GET request, using the URL returned
   in _@odata.nextLink_, which includes a _skipToken_.

4. The second request will return additional messages that have changed, and either a _skipToken_ if there are more changed messages,
  or a _deltaToken_ if all the changed messages have been returned.

5. If you receive a _skipToken_ from the last GET request, continue getting the changes by sending a next GET call, similar to step 3.

6. When you eventually receive a _deltaToken (in an _@odata.deltaLink_ response header) in the response from a GET, stop. This
round of change tracking is complete.

7. Save the _deltaToken_. The next time you track changes for the same folder, make a GET request
similar to step 1, except that now you can use this _deltaToken_ to get just the delta data (messages that have been added, deleted or updated)
since the completion of the very first round.

-->

## Example 1: synchronize messages in a folder

The following example shows 2 rounds of synchronization of a specific folder that initially contains 5 messages.

The first round involves a series of 3 requests to synchronize all 5 messages in the folder:

- [Sample initial request](#sample-initial-request) and [response](#sample-initial-response)
- [Sample second request](#sample-second-request) and [response](#sample-second-response)
- [Sample third request](#sample-third-request) and [final response](#sample-third-and-final-response)

After the first round, one of the messages is deleted, and another is marked as read. The [second round](#synchronize-messages-in-the-same-folder-in-the-next-round) of synchronization returns only the delta (the deletion and update), without returning the other messages that have remained the same.

### Sample initial request

In this example, the specified folder is being synchronized for the first time, so the initial sync request doesn't include any state token.
This round returns all the messages in that folder.

The first request specifies the following:

- A `$select` parameter to return the `subject`, `sender`, and `isRead` properties for each message in the response.
- The [optional request header](#optional-request-header), _odata.maxpagesize_, returning 2 messages at a time.

<!-- {
  "blockType": "ignored",
  "sampleKeys": ["AQMkADNkNAAAgEMAAAA"],
  "name": "get_messages_delta_1"
}-->

```http
GET https://graph.microsoft.com/v1.0/me/mailfolders/AQMkADNkNAAAgEMAAAA/messages/delta?$select=subject,sender,isRead HTTP/1.1
Prefer: odata.maxpagesize=2
```

### Sample initial response

The response includes two messages and an `@odata.nextLink` response header.
The `@odata.nextLink` URL indicates there are more messages in the folder to get.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message",
  "isCollection": true
} -->

```json
{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(message)",
  "@odata.nextLink": "https://graph.microsoft.com/v1.0/me/mailfolders('AQMkADNkNAAAgEMAAAA')/messages/delta?$skiptoken=GwcBoTmPuoTQWfcsAbkYM",
  "value": [
    {
      "@odata.type": "#microsoft.graph.message",
      "@odata.etag": "W/\"CQAAABYAAAARn2vdzPFjSbaPPxzjlzOTAAASsKZz\"",
      "subject": "Holiday hours update",
      "isRead": false,
      "sender": {
        "emailAddress": {
          "name": "Dana Swope",
          "address": "danas@contoso.com"
        }
      },
      "id": "AAMkADNkNAAASq35xAAA="
    },
    {
      "@odata.type": "#microsoft.graph.message",
      "@odata.etag": "W/\"CQAAABYAAAARn2vdzPFjSbaPPxzjlzOTAAAEfYB/\"",
      "subject": "Holiday promotion sale",
      "isRead": true,
      "sender": {
        "emailAddress": {
          "name": "Samantha Booth",
          "address": "samanthab@contoso.com"
        }
      },
      "id": "AQMkADNkNAAAVRMKAAAAA=="
    }
  ]
}
```

### Sample second request

The second request specifies the `@odata.nextLink` URL returned from the previous response. Notice that it no longer has to specify
the same `$select` parameter as in the initial request, as the `skipToken` in the `@odata.nextLink` URL encodes and includes it.

<!-- {
  "blockType": "ignored",
  "sampleKeys": ["AQMkADNkNAAAgEMAAAA"],
  "name": "get_messages_delta_2"
}-->

```http
GET https://graph.microsoft.com/v1.0/me/mailfolders/AQMkADNkNAAAgEMAAAA/messages/delta?$skiptoken=GwcBoTmPuoTQWfcsAbkYM HTTP/1.1
Prefer: odata.maxpagesize=2
```

### Sample second response

The second response returns the next 2 messages in the folder and another `@odata.nextLink`, indicating there are
more messages to get from the folder.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message",
  "isCollection": true
} -->

```json
{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(message)",
  "@odata.nextLink": "https://graph.microsoft.com/v1.0/me/mailfolders('AQMkADNkNAAAgEMAAAA')/messages/delta?$skiptoken=GwcBoTmPKILK4jLH7mAd1lLU",
  "value": [
    {
      "@odata.type": "#microsoft.graph.message",
      "@odata.etag": "W/\"CQAAABYAAAARn2vdzPFjSbaPPxzjlqfdAAAEfYB+\"",
      "subject": "Microsoft Virtual Academy at Contoso",
      "isRead": true,
      "sender": {
        "emailAddress": {
          "name": "Elliot Hyde",
          "address": "elliot-hyde@tailspintoys.com"
        }
      },
      "id": "AQMkADNkNAAAgWkAAAA"
    },
    {
      "@odata.type": "#microsoft.graph.message",
      "@odata.etag": "W/\"CQAAABYAAAARn2vdzPFjSbaPPxzjlzOTAAAEfYB+\"",
      "subject": "New or modified user account information",
      "isRead": true,
      "sender": {
        "emailAddress": {
          "name": "Randi Welch",
          "address": "randiw@contoso.com"
        }
      },
      "id": "AQMkADNkNAAAgWJAAAA"
    }
  ]
}
```

### Sample third request

The third request continues to use the latest `@odata.nextLink` URL returned from the last sync request.

<!-- {
  "blockType": "ignored",
  "sampleKeys": ["AQMkADNkNAAAgEMAAAA"],
  "name": "get_messages_delta_3"
}-->
```
GET https://graph.microsoft.com/v1.0/me/mailFolders/AQMkADNkNAAAgEMAAAA/messages/delta?$skiptoken=GwcBoTmPKILK4jLH7mAd1lLU HTTP/1.1
Prefer: odata.maxpagesize=2
```

### Sample third and final response

The third response returns the only remaining message in the folder, and a `@odata.deltaLink` URL that indicates
synchronization is complete for the time being for this folder. Save and use the `@odata.deltaLink` URL to
[synchronize the same folder in the next round](#synchronize-messages-in-the-same-folder-in-the-next-round).

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message",
  "isCollection": true
} -->

```json
{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(message)",
  "@odata.deltaLink": "https://graph.microsoft.com/v1.0/me/mailfolders('AQMkADNkNAAAgEMAAAA')/messages/delta?$deltatoken=GwcBoTmPuoGNlgXgF1nyUNMXY",
  "value": [
    {
      "@odata.type": "#microsoft.graph.message",
      "@odata.etag": "W/\"CQAAABYAAAARn2vdzFPjSbaPPxzjlzOTAAAEfYB+\"",
      "subject": "Fabric CDN now available",
      "isRead": true,
      "sender": {
        "emailAddress": {
          "name": "Jodie Sharp",
          "address": "Jodie.Sharp@contoso.com"
        }
      },
      "id": "AAMkADk0MGFkODE3LWEAAA="
    }
  ]
}
```

### Synchronize messages in the same folder in the next round

Using the `@odata.deltaLink` from the [last request](#sample-third-request) in the last round,
you are able to get only those messages that have changed (by being added, deleted, or updated) in that folder since then.
Your first request in the next round will look like the following, assuming you prefer to keep the same maximum page size in the response:

<!-- {
  "blockType": "ignored",
  "sampleKeys": ["AQMkADNkNAAAgEMAAAA"],
  "name": "get_messages_delta_next"
}-->

```http
GET https://graph.microsoft.com/v1.0/me/mailfolders/AQMkADNkNAAAgEMAAAA/messages/delta?$deltatoken=GwcBoTmPuoGNlgXgF1nyUNMXY HTTP/1.1
Prefer: odata.maxpagesize=2
```

The response contains a `@odata.deltaLink`. This indicates that all changes in the remote mail folder are now synchronized. One message was deleted and the other message was changed.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message",
  "isCollection": true
} -->

```json
{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(message)",
  "@odata.deltaLink": "https://graph.microsoft.com/v1.0/me/mailfolders('AQMkADNkNAAAgEMAAAA')/messages/delta?$deltatoken=GwcBoTmPuoGNlgXgF1nyUNMXY",
  "value": [
    {
      "@odata.type": "#microsoft.graph.message",
      "id": "AAMkADk0MGFkODE3LWE4MmYtNDRhOS0Dh_6qB-pB2Sa2pUum19a6YAAKnLuxoAAA=",
      "@removed": {
        "reason": "deleted"
      }
    },
    {
      "@odata.type": "#microsoft.graph.message",
      "@odata.etag": "W/\"CQAAABYAAAARn2vdzPFjSbaPPxzjlzOTAAASsKZz\"",
      "subject": "Holiday hours update",
      "isRead": "true",
      "sender": {
        "emailAddress": {
          "name": "Dana Swope",
          "address": "danas@contoso.com"
        }
      },
      "id": "AAMkADNkNAAASq35xAAA="
    }
  ]
}
```

## Example 2: Synchronize messages in a folder based on change type
The following example shows getting only messages that are created in a specific folder since the initial sync. The example involves 2 rounds of synchronization of that folder that initially contains 4 messages.

The first round involves a series of 2 requests to synchronize all 4 messages in the folder:

- [Sample initial request with specified change type](#sample-initial-request-with-specified-change-type) and [response](#sample-initial-response-with-specified-change-type)
- [Sample second request with specified change type](#sample-second-request-with-specified-change-type) and [response](#sample-second-response-with-specified-change-type)

After the first round, two more messages are created, one message is deleted, and another is marked as read.

The second round of synchronization returns only the changes in the folder of the `created` change type (the two new messages created), without returning the other messages that have remained the same, deleted, or updated since the last sync.

### Sample initial request with specified change type

In this example, the specified folder is being synchronized for the first time, so the initial sync request doesn't include any state token.
This round returns all the messages in that folder.

The first request specifies the following:

- A `changeType` parameter to return only the _created_ messages in the subsequent delta response.
- A `$select` parameter to return the `subject`, `sender`, and `isRead` properties for each message in the response.
- The [optional request header](#optional-request-header), _odata.maxpagesize_, returning 2 messages at a time.

<!-- {
  "blockType": "ignored",
  "sampleKeys": ["AAMkAGUwNc4LTMzAAA="],
  "name": "get_messages_delta_4"
}-->

```http
GET https://graph.microsoft.com/v1.0/me/mailFolders/AAMkAGUwNc4LTMzAAA=/messages/delta?changeType=created&$select=subject,sender,isRead HTTP/1.1
Prefer: odata.maxpagesize=2
```

### Sample initial response with specified change type

The response includes two messages and an `@odata.nextLink` response header.
The `@odata.nextLink` URL indicates there are more messages in the folder to get.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message",
  "isCollection": true
} -->

```json
{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(message)",
    "@odata.nextLink": "https://graph.microsoft.com/v1.0/me/mailFolders/AAMkAGUwNc4LTMzAAA=/messages/delta?$skiptoken=P4lmXpjPRrjB6haAQzSkpK89jYTVD2kVtOeXNRnfYzPbCs",
    "value": [
        {
            "@odata.type": "#microsoft.graph.message",
            "@odata.etag": "W/\"CQAAABYAAACQ2fKdhq8oSKEDSVrdi3lRAAId0MBP\"",
            "subject": "Inline Attachments Again",
            "isRead": true,
            "id": "AAMkAGUwNjQ4ZjIxLTQ3Y2YtNDViMi1iZjc4LT2fKdhq8oSKEDSVrdi3lRAAIei5gdAAA=",
            "sender": {
                "emailAddress": {
                    "name": "Megan Brown",
                    "address": "Megan.Brown@contoso.com"
                }
            }
        },
        {
            "@odata.type": "#microsoft.graph.message",
            "@odata.etag": "W/\"CQAAABYAAACQ2fKdhq8oSKEDSVrdi3lRAAId0MBR\"",
            "subject": "RE: Test Outlook TimeZone",
            "isRead": true,
            "id": "AAMkAGUwNjQ4ZjIxLTQ3Y2YtNDViMi1iZjc4LTMKdhq8oSKEDSVrdi3lRAAIei5geAAA=",
            "sender": {
                "emailAddress": {
                    "name": "Megan Brown",
                    "address": "Megan.Brown@contoso.com"
                }
            }
        }
    ]
}
```

### Sample second request with specified change type

The second request specifies the `@odata.nextLink` URL returned from the previous response. Notice that it no longer has to specify
the same `$select` or the `changeType` parameter as in the initial request, as the `skipToken` in the `@odata.nextLink` URL encodes and includes it.

<!-- {
  "blockType": "ignored",
  "sampleKeys": ["AAMkAGUwNc4LTMzAAA="],
  "name": "get_messages_delta_5"
}-->

```http
GET https://graph.microsoft.com/v1.0/me/mailFolders/AAMkAGUwNc4LTMzAAA=/messages/delta?$skiptoken=P4lmXpjPRrjB6haAQzSkpK89jYTVD2kVtOeXNRnfYzPbCs HTTP/1.1
Prefer: odata.maxpagesize=2
```

### Sample second response with specified change type

The second response returns the next 2 messages in the folder and `@odata.deltaLink` URL that indicates
synchronization is complete for the time being for this folder. Save and use the `@odata.deltaLink` URL to
[synchronize the same folder in the next round](#synchronize-messages-in-the-same-folder-in-the-next-round-based-on-specified-change-type).

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message",
  "isCollection": true
} -->

```json
{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(message)",
    "@odata.deltaLink": "https://graph.microsoft.com/v1.0/me/mailFolders/AAMkAGUwNc4LTMzAAA=/messages/delta?$deltatoken=P4lmXpjPRrjB6haAQ_37roqIbjXe66KoV7SMlLH--Jgi8",
    "value": [
        {
            "@odata.type": "#microsoft.graph.message",
            "@odata.etag": "W/\"CQAAABYAAACQ2fKdhq8oSKEDSVrdi3lRAAId0MBu\"",
            "subject": "Your preview of the new Briefing email",
            "isRead": true,
            "id": "AAMkAGUwNjQ4ZjIxLTQ3Y2YtNDViMi1iZjc4LTMzNjMwNWM0ZGE2YQBGAAAAAADbrwBIJ",
            "sender": {
                "emailAddress": {
                    "name": "Cortana",
                    "address": "cortana@contoso.com"
                }
            }
        },
        {
            "@odata.type": "#microsoft.graph.message",
            "@odata.etag": "W/\"CQAAABYAAACQ2fKdhq8oSKEDSVrdi3lRAAId0MBw\"",
            "subject": "Char Coding HTML",
            "isRead": true,
            "id": "AAMkAGUwNjQ4ZjIxLTQ3Y2YtNDViMi1iZjc4LTMzNjMwNWM0ZGE2YQBGAAAAAADbrwBA=",
            "sender": {
                "emailAddress": {
                    "name": "John Doe",
                    "address": "John.Doe@contoso.com"
                }
            }
        }
    ]
}
```

### Synchronize messages in the same folder in the next round based on specified change type

Using the `@odata.deltaLink` from the [last response](#sample-second-response-with-specified-change-type) in the last round,
you are able to get only those messages that have been added in that folder since then.
Your first request in the next round will look like the following, assuming you prefer to keep the same maximum page size in the response:

<!-- {
  "blockType": "ignored",
  "sampleKeys": ["AAMkAGUwNc4LTMzAAA"],
  "name": "get_messages_delta_next_2"
}-->

```http
GET https://graph.microsoft.com/v1.0/me/mailFolders/AAMkAGUwNc4LTMzAAA=/messages/delta?$deltatoken=P4lmXpjPRrjB6haAQ_37roqIbjXe66KoV7SMlLH--Jgi8 HTTP/1.1
Prefer: odata.maxpagesize=2
```

The response contains a `@odata.deltaLink`. This indicates that all changes in the remote mail folder are now synchronized. Two messages were added since the last sync. The messages updated & deleted since the last sync aren't returned in this delta response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message",
  "isCollection": true
} -->

```json
{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(message)",
    "@odata.deltaLink": "https://graph.microsoft.com/v1.0/me/mailFolders/AAMkAGUwNc4LTMzAAA=/messages/delta?$skiptoken=EPuhZPRDHo-r3EBfscYE444fuGSBRV1eXex3JZkLzT9fRM",
    "value": [
        {
            "@odata.type": "#microsoft.graph.message",
            "@odata.etag": "W/\"CQAAABYAAACQ2fKdhq8oSKEDSVrdi3lRAAId0MCP\"",
            "subject": "Nested Attachment",
            "isRead": true,
            "id": "AAMkAGUwNjQ4ZjIxLTQ3Y2YtNDViMi1iZjc4LTMzNjMwNWM0ZGE2YQBGAAAAAADbrwBIJ",
            "sender": {
                "emailAddress": {
                    "name": "Patti Fernandez",
                    "address": "PattiF@contoso.com"
                }
            }
        },
        {
            "@odata.type": "#microsoft.graph.message",
            "@odata.etag": "W/\"CQAAABYAAACQ2fKdhq8oSKEDSVrdi3lRAAId0MCN\"",
            "subject": "Attachment Testing",
            "isRead": true,
            "id": "AAMkAGUwNjQ4ZjIxLTQ3Y2YtNDViMi1iZjc4LTMzNjMwNWM0ZGE2YQBGAAAAAADbrwZA=",
            "sender": {
                "emailAddress": {
                    "name": "Patti Fernandez",
                    "address": "PattiF@contoso.com"
                }
            }
        }
    ]
}
```
## Related content

- [Microsoft Graph delta query](delta-query-overview.md)
- [Get incremental changes to events in a calendar view](delta-query-events.md)
- [Get incremental changes to groups](delta-query-groups.md)
- [Get incremental changes to users](delta-query-users.md)
