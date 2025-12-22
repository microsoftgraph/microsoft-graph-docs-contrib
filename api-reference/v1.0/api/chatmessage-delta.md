---
title: "chats-getAllMessages: delta"
description: "Get the list of messages from all chats in which a user is a participant, including one-on-one chats, group chats, and meeting chats."
ms.localizationpriority: high
doc_type: apiPageType
author: "bkeerthivasa"
ms.subservice: "teams"
ms.date: 10/08/2024
---

# chatMessage: delta

Namespace: microsoft.graph

Get the list of [messages](../resources/chatmessage.md) from all [chats](../resources/chat.md) in which a user is a participant, including one-on-one chats, group chats, and meeting chats. When you use delta query, you can get new or updated messages.

> **Note:** Delta only returns messages within the last eight months. You can use [GET /users/{id | user-principal-name}/chats/getAllMessages](chats-getallmessages.md) to retrieve older messages.
Delta query supports both full synchronization that gets all the messages from all chats in which a user is a participant, and incremental synchronization that gets messages added or changed since the last synchronization. Typically, you do an initial full synchronization, and then get incremental changes to that messages view periodically.

To get the replies for a message, use the [list message replies](chatmessage-list-replies.md) or the [get message reply](chatmessage-get.md) operations.

A GET request with the delta function returns one of the following:

- An **@odata.nextLink** that contains a URL with a **delta** function call and a `skipToken`.
- An **@odata.deltaLink** that contains a URL with a **delta** function call and a `deltaToken`.

State tokens are opaque to the client. To proceed with a round of change tracking, copy and apply the **@odata.nextLink** or **@odata.deltaLink** URL returned from the last GET request to the next **delta** function call. An **@odata.deltaLink** returned in a response signifies that the current round of change tracking is complete. You can save and use the **@odata.deltaLink** URL when you begin to retrieve more changes (messages changed or posted after you acquire **@odata.deltaLink**).

For more information, see the [delta query](/graph/delta-query-overview) documentation.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "chatmessage_delta" } -->
[!INCLUDE [permissions-table](../includes/permissions/chatmessage-delta-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /users/{id | user-principal-name}/chats/getAllMessages/delta
```

## Query parameters

Tracking changes in messages incurs a round of one or more **delta** function calls. If you use any query parameter (other than `$deltatoken` and `$skiptoken`), you must specify it in the initial **delta** request. Microsoft Graph automatically encodes any specified parameters into the token portion of the **@odata.nextLink** or **@odata.deltaLink** URL provided in the response.

You only need to specify query parameters once.

In subsequent requests, copy and apply the **@odata.nextLink** or **@odata.deltaLink** URL from the previous response, as that URL already includes the encoded parameters.

| Query parameter	   | Type	|Description|
|:---------------|:--------|:----------|
| `$deltatoken` | String | A [state token](/graph/delta-query-overview) returned in the **@odata.deltaLink** URL of the previous **delta** function call that indicates that the completion of that round of change tracking. Save and apply the entire **@odata.deltaLink** URL including this token in the first request of the next iteration of change tracking for that collection.|
| `$skiptoken` | String | A [state token](/graph/delta-query-overview) returned in the **@odata.nextLink** URL of the previous **delta** function call that indicates that further changes are available to be tracked. |

### Optional OData query parameters

This API supports the following [OData query parameters](/graph/query-parameters):
- `$top` represents the maximum number of messages to fetch in a call. The upper limit is `50`.
- `$skip` represents how many messages to skip at the beginning of the list.
- `$filter` returns messages that meet a certain criteria. The only property that supports filters is **lastModifiedDateTime**, and only the `gt` operator is supported. For example, `../messages/delta?$filter=lastModifiedDateTime gt 2024-08-27T07:13:28.000z` fetches any message created or changed after the specified date and time.
 
## Request headers

| Header        | Value                     |
|---------------|---------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request Body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [chatMessage](../resources/chatmessage.md) objects in the response body. The response also includes an **@odata.nextLink** URL or an **@odata.deltaLink** URL.

## Examples

### Example 1: Initial synchronization

The following example shows a series of three requests to synchronize the messages. The response consists of three messages:

- Step 1: [initial request](#initial-request) and [response](#initial-request-response).
- Step 2: [second request](#second-request) and [response](#second-request-response)
- Step 3: [third request](#third-request) and [final response](#third-request-response).

For brevity, the sample responses show only a subset of the properties for a message. In an actual call, most message properties are returned.

See also what you can do in the [next round to get more messages](#example-2-the-next-round-to-get-more-messages).

#### Initial request

In this example, the chat messages synchronize for the first time and the initial sync request doesn't include any state token.

The request specifies the optional `$top` query parameter that returns two messages at a time.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_chatmessagedeltachats_1"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users/5ed12dd6-24f8-4777-be3d-0d234e06cefa/chats/getAllMessages/delta?$top=2
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-chatmessagedeltachats-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Initial request response

The response includes two messages and an **@odata.nextLink** response header with a `skipToken`. The **@odata.nextLink** URL indicates that more messages in the chats are available to retrieve.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.chatMessage)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.chatMessage)",
  "@odata.nextLink": "https://graph.microsoft.com/v1.0/users/5ed12dd6-24f8-4777-be3d-0d234e06cefa/chats/getAllMessages/delta?$skiptoken=a-5fqdzHFr_L_cc7C0q1F-HCB8Z9SjwOsMN37XV5yfSnYgK4jVGVGEl25GFlxKWq0Wv6quL-5qcNg4nUnxzof6namZ_DM5no-hcL515cSrRGDoRLn38fZE1AXoDugSTOohOq3YRCYLqJbFGIoovMPTar32oLuoltHixme-Bf1lZtscv1wv5uu-MtkpYZIT0uDw-umQUK7mLNjMcyhNaifDrdemGUDMaQ25_QuHukNbkXcxsKMJdJ288p9IkaSeEyJHX5a6T_kEdAmuffsdzOGY8mLbLc7VEsUL75rGdt2aiKkywaPHsT9bDGV7MBo7WM2g_kdPeLdRPSdSxxhkGpNA.y_WMscy7negz0HZPhgjH-YyzsdeXzr2UDSfNrdzC78A",
  "value": [
    {
      "replyToId": null,
      "etag": "1727366299993",
      "messageType": "message",
      "createdDateTime": "2024-09-26T15:58:19.993Z",
      "lastModifiedDateTime": "2024-09-26T15:58:19.993Z",
      "lastEditedDateTime": null,
      "deletedDateTime": null,
      "subject": "",
      "summary": null,
      "chatId": "19:65a44130a0f249359d77858287ed39f0@thread.v2",
      "importance": "normal",
      "locale": "en-us",
      "webUrl": null,
      "channelIdentity": null,
      "policyViolation": null,
      "eventDetail": null,
      "id": "1727366299993",
      "from": {
        "application": null,
        "device": null,
        "user": {
          "@odata.type": "#microsoft.graph.teamworkUserIdentity",
          "id": "43383bf2-f7ab-4ba3-bf5e-12d071db189b",
          "displayName": "CFCC5",
          "userIdentityType": "aadUser",
          "tenantId": "f54e6700-e876-410b-8996-d6447d64098a"
        }
      },
      "body": {
        "contentType": "html",
        "content": "<div>\n<div itemprop=\"copy-paste-block\">reply 9&nbsp;to new conv</div>\n</div>"
      },
      "attachments": [],
      "mentions": [],
      "reactions": []
    },
    {
      "replyToId": null,
      "etag": "1727216579286",
      "messageType": "message",
      "createdDateTime": "2024-09-24T22:22:59.286Z",
      "lastModifiedDateTime": "2024-09-24T22:22:59.286Z",
      "lastEditedDateTime": null,
      "deletedDateTime": null,
      "subject": "",
      "summary": null,
      "chatId": "19:2a247d5dadc24f408d009e4ae84502cf@thread.v2",
      "importance": "normal",
      "locale": "en-us",
      "webUrl": null,
      "channelIdentity": null,
      "policyViolation": null,
      "eventDetail": null,
      "id": "1727216579286",
      "from": {
        "application": null,
        "device": null,
        "user": {
          "@odata.type": "#microsoft.graph.teamworkUserIdentity",
          "id": "43383bf2-f7ab-4ba3-bf5e-12d071db189b",
          "displayName": "CFCC5",
          "userIdentityType": "aadUser",
          "tenantId": "f54e6700-e876-410b-8996-d6447d64098a"
        }
      },
      "body": {
        "contentType": "html",
        "content": "<div>\n<div itemprop=\"copy-paste-block\">reply 10 to new conv</div>\n</div>"
      },
      "attachments": [],
      "mentions": [],
      "reactions": []
    }
  ]
}
```

#### Second request

The second request specifies the **@odata.nextLink** URL returned from the previous response. Notice that it no longer has to specify the same `$top` parameter as in the initial request, as the `skipToken` in the **@odata.nextLink** URL encodes and includes those parameters.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_chatmessagedeltachats_2"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users/5ed12dd6-24f8-4777-be3d-0d234e06cefa/chats/getAllMessages/delta?&%24skiptoken=a-5fqdzHFr_L_cc7C0q1F-HCB8Z9SjwOsMN37XV5yfSnYgK4jVGVGEl25GFlxKWq0Wv6quL-5qcNg4nUnxzof6namZ_DM5no-hcL515cSrRGDoRLn38fZE1AXoDugSTOohOq3YRCYLqJbFGIoovMPTar32oLuoltHixme-Bf1lZtscv1wv5uu-MtkpYZIT0uDw-umQUK7mLNjMcyhNaifMIVTT-htmEOClLVwgcyWLR-sl9Qb73uTTtPXdFdMK6FDE4gpwvvKxvo2ChsW2c4eo77LDh6ZL_WQ8Luq00koQ6vHIrLBHPMUdOAxDxu-U7N7H4hsFn9aRDRdwRky7067A.V2a-J-86yXTd9SJMA4CHP6enI-Ab-bQzRgYujwsIwDo
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-chatmessagedeltachats-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Second request response

The second response returns the next two messages and an **@odata.nextLink** response header with a `skipToken` that indicates that more messages are available to retrieve.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.chatMessage)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.chatMessage)",
  "@odata.nextLink": "https://graph.microsoft.com/v1.0/users/5ed12dd6-24f8-4777-be3d-0d234e06cefa/chats/getAllMessages/delta?$skiptoken=yJQeoV00BlfhYsCMsrn1GnNz7v5S39NShp1U4rzLZnPsraIATwnnsvbdv52hvKp7AAG-Bcwdu7dA7UweXHvGYQ2M5eysh-cNz6EZICZp7kM9HtmQHu7JU-_sX5S1edvEQxyAgm1R2HXk4R9_TWn9ZAu1BRQ-elS9hg0f8BlwKLCIluuSPS2ZuNVnQTOOYMMpmzKGX4wVVQUv0UlrIFZIPWTeriNpg5sJFd91n2GHSMnS7WaRTh3NSmvJE08ww-2CjGml2RjPyHfLHSqywuNt5BGNVj_vqsLbjetdDIYZFa_yaQqV_Bp5DaWM_nXD8RjVULH7H4ATXoUiG3Etsd_Nhd_GIYoxV6x2_rmbh928WPGSsenCOa352tyFxmuyTH0ozDmU4onVbGnOBQEYJDKZjuIeNVW-E19VHthjZ9GvYGE.NHJkfAbRu3Qoozl699AinriiHvWofLVnWkB5wEJmZlk",
  "value": [
    {
      "replyToId": null,
      "etag": "1726706286844",
      "messageType": "message",
      "createdDateTime": "2024-09-19T00:38:06.844Z",
      "lastModifiedDateTime": "2024-09-19T00:38:06.844Z",
      "lastEditedDateTime": null,
      "deletedDateTime": null,
      "subject": "",
      "summary": null,
      "chatId": "19:65a44130a0f249359d77858287ed39f0@thread.v2",
      "importance": "normal",
      "locale": "en-us",
      "webUrl": null,
      "channelIdentity": null,
      "policyViolation": null,
      "eventDetail": null,
      "id": "1726706286844",
      "from": {
        "application": null,
        "device": null,
        "user": {
          "@odata.type": "#microsoft.graph.teamworkUserIdentity",
          "id": "43383bf2-f7ab-4ba3-bf5e-12d071db189b",
          "displayName": "CFCC5",
          "userIdentityType": "aadUser",
          "tenantId": "f54e6700-e876-410b-8996-d6447d64098a"
        }
      },
      "body": {
        "contentType": "html",
        "content": "<p>Not one message, but several combined together to give you the full picture</p>"
      },
      "attachments": [],
      "mentions": [],
      "reactions": []
    },
    {
      "replyToId": null,
      "etag": "1726706276201",
      "messageType": "message",
      "createdDateTime": "2024-09-19T00:37:56.201Z",
      "lastModifiedDateTime": "2024-09-19T00:37:56.201Z",
      "lastEditedDateTime": null,
      "deletedDateTime": null,
      "subject": "",
      "summary": null,
      "chatId": "19:65a44130a0f249359d77858287ed39f0@thread.v2",
      "importance": "normal",
      "locale": "en-us",
      "webUrl": null,
      "channelIdentity": null,
      "policyViolation": null,
      "eventDetail": null,
      "id": "1726706276201",
      "from": {
        "application": null,
        "device": null,
        "user": {
          "@odata.type": "#microsoft.graph.teamworkUserIdentity",
          "id": "43383bf2-f7ab-4ba3-bf5e-12d071db189b",
          "displayName": "CFCC5",
          "userIdentityType": "aadUser",
          "tenantId": "f54e6700-e876-410b-8996-d6447d64098a"
        }
      },
      "body": {
        "contentType": "html",
        "content": "<p>Dive into the possibilities of incorporating context into ML evaluations by looking at entire conversations</p>"
      },
      "attachments": [],
      "mentions": [],
      "reactions": []
    }
  ]
}
```

#### Third request

The third request continues to use the latest **@odata.nextLink** returned from the last sync request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_chatmessagedeltachats_3"
}-->
```msgraph-interactive
GET  https://graph.microsoft.com/v1.0/users/5ed12dd6-24f8-4777-be3d-0d234e06cefa/chats/getAllMessages/delta?$skiptoken=8UusBixEHS9UUau6uGcryrA6FpnWwMJbuTYILM1PArHxnZzDVcsHQrijNzCyIVeEauMQsKUfMhNjLWFs1o4sBS_LofJ7xMftZUfec_pijuT6cAk5ugcWCca9RCjK7iVj.DKZ9w4bX9vCR7Sj9P0_qxjLAAPiEZgxlOxxmCLMzHJ4
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-chatmessagedeltachats-3-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Third request response

The third response returns the only remaining messages and an **@odata.deltaLink** response header with a `deltaToken` which indicates that all messages are returned. Save and use the **@odata.deltaLink** URL to query for any new messages added or changed from this point onwards.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.chatMessage)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.chatMessage)",
  "@odata.deltaLink": "https://graph.microsoft.com/v1.0/users/5ed12dd6-24f8-4777-be3d-0d234e06cefa/chats/getAllMessages/delta?$deltatoken=aQdvS1VwGCSRxVmZJqykmDik_JIC44iCZpv-GLiA2VnFuE5yG-kCEBROb2iaPT_y_eMWVQtBO_ejzzyIxl00ji-tQ3HzAbW4liZAVG88lO3nG_6-MBFoHY1n8y21YUzjocG-Cn1tCNeeLPLTzIe5Dw.EP9gLiCoF2CE_e6l_m1bTk2aokD9KcgfgfcLGqd1r_4",
  "value": [
    {
      "replyToId": null,
      "etag": "1726706340932",
      "messageType": "message",
      "createdDateTime": "2024-09-19T00:39:00.932Z",
      "lastModifiedDateTime": "2024-09-19T00:39:00.932Z",
      "lastEditedDateTime": null,
      "deletedDateTime": null,
      "subject": "",
      "summary": null,
      "chatId": "19:65a44130a0f249359d77858287ed39f0@thread.v2",
      "importance": "normal",
      "locale": "en-us",
      "webUrl": null,
      "channelIdentity": null,
      "policyViolation": null,
      "eventDetail": null,
      "id": "1726706340932",
      "from": {
        "application": null,
        "device": null,
        "user": {
          "@odata.type": "#microsoft.graph.teamworkUserIdentity",
          "id": "43383bf2-f7ab-4ba3-bf5e-12d071db189b",
          "displayName": "CFCC5",
          "userIdentityType": "aadUser",
          "tenantId": "f54e6700-e876-410b-8996-d6447d64098a"
        }
      },
      "body": {
        "contentType": "html",
        "content": "<p>let's get started!</p>"
      },
      "attachments": [],
      "mentions": [],
      "reactions": []
    }
  ]
}
```

### Example 2: The next round to get more messages

Using the **@odata.deltaLink** from the last request in the last round, you can get only those messages that changed (added or updated) since the **@odata.deltaLink** was acquired. Your request should look like the following, assuming you want to keep the same maximum page size in the response.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_chatmessagedeltachats_4"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users/5ed12dd6-24f8-4777-be3d-0d234e06cefa/chats/getAllMessages/delta?$deltatoken=aQdvS1VwGCSRxVmZJqykmDik_JIC44iCZpv-GLiA2VnFuE5yG-kCEBROb2iaPT_y_eMWVQtBO_ejzzyIxl00ji-tQ3HzAbW4liZAVG88lO3nG_6-MBFoHY1n8y21YUzjocG-Cn1tCNeeLPLTzIe5Dw.EP9gLiCoF2CE_e6l_m1bTk2aokD9KcgfgfcLGqd1r_4
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-chatmessagedeltachats-4-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.chatMessage)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(chatMessage)",
  "@odata.deltaLink": "https://graph.microsoft.com/v1.0/users/5ed12dd6-24f8-4777-be3d-0d234e06cefa/chats/getAllMessages/delta?$deltatoken=aQdvS1VwGCSRxVmZJqykmDik_JIC44iCZpv-GLiA2VnFuE5yG-kCEBROb2iaPT_yjz2nsMoh1gXNtXii7s78HapCi5woifXqwXlVNxICh8wUUnvE2gExsa8eZ2Vy_ch5rVIhm067_1mUPML3iYUVyg.3o0rhgaBUduuxOr98An5pjBDP5JjKUiVWku3flSiOsk",
  "value": [
    {
      "replyToId": null,
      "etag": "1727366299999",
      "messageType": "message",
      "createdDateTime": "2024-09-26T15:58:19.993Z",
      "lastModifiedDateTime": "2024-09-26T17:58:19.993Z",
      "lastEditedDateTime": null,
      "deletedDateTime": null,
      "subject": "",
      "summary": null,
      "chatId": "19:65a44130a0f249359d77858287ed39f0@thread.v2",
      "importance": "normal",
      "locale": "en-us",
      "webUrl": null,
      "channelIdentity": null,
      "policyViolation": null,
      "eventDetail": null,
      "id": "1727366299999",
      "from": {
        "application": null,
        "device": null,
        "user": {
          "@odata.type": "#microsoft.graph.teamworkUserIdentity",
          "id": "43383bf2-f7ab-4ba3-bf5e-12d071db189b",
          "displayName": "CFCC5",
          "userIdentityType": "aadUser",
          "tenantId": "f54e6700-e876-410b-8996-d6447d64098a"
        }
      },
      "body": {
        "contentType": "html",
        "content": "newly added content"
      },
      "attachments": [],
      "mentions": [],
      "reactions": []
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Chat messages: delta",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    ]
}
-->
