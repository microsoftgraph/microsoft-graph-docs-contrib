---
title: "chats: getAllMessages"
description: "Get messages from all chats that a user is a participant in."
author: "RamjotSingh"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# chats: getAllMessages

Namespace: microsoft.graph

Get all [messages](../resources/chatmessage.md) from all [chats](../resources/chat.md) that a user is a participant in, including one-on-one chats, group chats, and meeting chats.

[!INCLUDE [teams-metered-apis](../../includes/teams-metered-apis.md)]

## Permissions

The following permissions are required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Chat.Read.All, Chat.ReadWrite.All           |

> [!NOTE]
> Before you call this API with application permissions, you must request access. For details, see [Protected APIs in Microsoft Teams](/graph/teams-protected-apis).

## HTTP request

<!-- { "blockType": "ignored" } -->
``` http
GET /users/{id | user-principal-name}/chats/getAllMessages
```

## Optional query parameters

You can use `model` query parameter, which supports the values `A` and `B`, based on the preferred [licensing and payment model](/graph/teams-licenses),
as shown in the following examples.
If no `model` is specified, [evaluation mode](/graph/teams-licenses#evaluation-mode-default-requirements) will be used.

```http
GET /users/{id | user-principal-name}/chats/getAllMessages?model=A
GET /users/{id | user-principal-name}/chats/getAllMessages?model=B
```
If no `model` is specified, [evaluation mode](/graph/teams-licenses#evaluation-mode-default-requirements) will be used.

This operation also supports [date range parameters](/graph/query-parameters) to customize the response, as shown in the following example.

``` http
GET /users/{id}/chats/getAllMessages?$top=50&$filter=lastModifiedDateTime gt 2020-06-04T18:03:11.591Z and lastModifiedDateTime lt 2020-06-05T21:00:09.413Z
```

## Request headers
| Header        | Value                     |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Response

If successful, this method returns a `200 OK` response code and a list of [chatMessages](../resources/chatmessage.md) in the response body.

### Errors

[!INCLUDE [teams-model-A-and-B-errors](../../includes/teams-model-A-and-B-errors.md)]

## Example

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "chat_getallmessages_1"
}-->
``` http
GET https://graph.microsoft.com/v1.0/users/0b4f1cf6-54c8-4820-bbb7-2a1f4257ade5/chats/getAllMessages?$top=2
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/chat-getallmessages-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/chat-getallmessages-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/chat-getallmessages-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/chat-getallmessages-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/chat-getallmessages-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage",
  "isCollection": true
} -->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(chatMessage)",
    "@odata.count": 2,
    "@odata.nextLink": "https://graph.microsoft.com/v1.0/users('0b4f1cf6-54c8-4820-bbb7-2a1f4257ade5')/chats/getallMessages?$top=2&$skiptoken=U2tpcFZhbHVlPTIjTWFpbGJveEZvbGRlcj1NYWlsRm9sZGVycy9UZWFtc01lc3NhZ2VzRGF0YQ%3d%3d",
    "value": [
        {
            "@odata.type": "#microsoft.graph.chatMessage",
            "id": "1621973534864",
            "replyToId": null,
            "etag": "1621973534864",
            "messageType": "message",
            "createdDateTime": "2021-05-25T20:12:14.864Z",
            "lastModifiedDateTime": "2021-05-25T20:12:14.864Z",
            "lastEditedDateTime": null,
            "deletedDateTime": null,
            "subject": null,
            "summary": null,
            "chatId": "19:3c9e92a344704332bbf5bda58f4d37b1@thread.v2",
            "importance": "normal",
            "locale": "en-us",
            "webUrl": null,
            "channelIdentity": null,
            "policyViolation": null,
            "eventDetail": null,
            "from": {
                "application": null,
                "device": null,
                "user": {
                    "id": "0b4f1cf6-54c8-4820-bbb7-2a1f4257ade5",
                    "displayName": "user1 a",
                    "userIdentityType": "aadUser"
                }
            },
            "body": {
                "contentType": "text",
                "content": "Hello user2, user 3"
            },
            "attachments": [],
            "mentions": [],
            "reactions": []
        },
        {
            "@odata.type": "#microsoft.graph.chatMessage",
            "id": "1622762567488",
            "replyToId": null,
            "etag": "1622762567488",
            "messageType": "message",
            "createdDateTime": "2021-06-03T23:22:47.488Z",
            "lastModifiedDateTime": "2021-06-03T23:22:47.488Z",
            "lastEditedDateTime": null,
            "deletedDateTime": null,
            "subject": null,
            "summary": null,
            "chatId": "19:0b4f1cf6-54c8-4820-bbb7-2a1f4257ade5_0d7c63d3-1306-4eec-8f21-588a70fb6ef1@unq.gbl.spaces",
            "importance": "normal",
            "locale": "en-us",
            "webUrl": null,
            "channelIdentity": null,
            "policyViolation": null,
            "eventDetail": null,
            "from": {
                "application": null,
                "device": null,
                "user": {
                    "id": "0b4f1cf6-54c8-4820-bbb7-2a1f4257ade5",
                    "displayName": "user1 a",
                    "userIdentityType": "aadUser"
                }
            },
            "body": {
                "contentType": "text",
                "content": "hi user2"
            },
            "attachments": [],
            "mentions": [],
            "reactions": []
        }
    ]
}
```
