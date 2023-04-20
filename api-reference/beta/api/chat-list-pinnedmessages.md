---
title: "List pinnedChatMessages in a chat"
description: "Get a list of pinned messages in a chat."
author: "sumanac"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# List pinnedChatMessages in a chat
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [pinnedChatMessages](../resources/pinnedChatMessageInfo.md) in a [chat](../resources/chat.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account) | Chat.Read, Chat.ReadWrite |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | ChatMessage.Read.All, Chat.Read.All, Chat.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /chats/{chat-id}/pinnedMessages
```

## Optional query parameters
This method supports the `$expand` [OData query parameter](/graph/query-parameters) to help customize the response.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [pinnedChatMessageInfo](../resources/pinnedchatmessageinfo.md) objects in the response body.

## Examples

### Example 1: List all the pinned messages in a chat
The following example shows a request that lists all the pinned messages in a chat.

#### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_pinnedmessage_for_chat",
  "sampleKeys": ["19:d65713bc498c4a428c71ef9353e6ce20@thread.v2"]
}
-->
``` http
GET https://graph.microsoft.com/beta/chats/19:d65713bc498c4a428c71ef9353e6ce20@thread.v2/pinnedMessages
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-pinnedmessage-for-chat-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-pinnedmessage-for-chat-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-pinnedmessage-for-chat-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-pinnedmessage-for-chat-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-pinnedmessage-for-chat-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-pinnedmessage-for-chat-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.pinnedChatMessageInfo",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.pinnedChatMessageInfo",
      "id": "1616964509832"
    },
    {
      "@odata.type": "#microsoft.graph.pinnedChatMessageInfo",
      "id": "1615971548136"
    }
  ]
}
```

### Example 2: List all the pinned messages in a chat along with the associated chat message
The following example shows a request that lists all the pinned messages in a chat along with the associated chat message.

#### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_pinnedmessage_for_chat_expand_message",
  "sampleKeys": ["19:d65713bc498c4a428c71ef9353e6ce20@thread.v2"]
}
-->
``` http
GET https://graph.microsoft.com/beta/chats/19:d65713bc498c4a428c71ef9353e6ce20@thread.v2/pinnedMessages?$expand=message
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-pinnedmessage-for-chat-expand-message-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-pinnedmessage-for-chat-expand-message-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-pinnedmessage-for-chat-expand-message-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-pinnedmessage-for-chat-expand-message-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-pinnedmessage-for-chat-expand-message-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-pinnedmessage-for-chat-expand-message-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.pinnedChatMessageInfo",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "1616964509832",
      "message": {
            "id": "1616964509832",
            "replyToId": null,
            "etag": "1616964509832",
            "messageType": "message",
            "createdDateTime": "2021-03-28T20:48:29.832Z",
            "lastModifiedDateTime": "2021-03-28T20:48:29.832Z",
            "lastEditedDateTime": null,
            "deletedDateTime": null,
            "subject": null,
            "summary": null,
            "chatId": "19:2da4c29f6d7041eca70b638b43d45437@thread.v2",
            "importance": "normal",
            "locale": "en-us",
            "webUrl": null,
            "channelIdentity": null,
            "onBehalfOf": null,
            "policyViolation": null,
            "eventDetail": null,
            "from": {
                "application": null,
                "device": null,
                "user": {
                    "id": "8ea0e38b-efb3-4757-924a-5f94061cf8c2",
                    "displayName": "Robin Kline",
                    "userIdentityType": "aadUser"
                }
            },
            "body": {
                "contentType": "text",
                "content": "Hello world"
            },
            "attachments": [],
            "mentions": [],
            "reactions": []
        }
    },
    {
      "id": "1615971548136",
      "message": {
            "id": "1615971548136",
            "replyToId": null,
            "etag": "1615971548136",
            "messageType": "message",
            "createdDateTime": "2021-03-17T08:59:08.136Z",
            "lastModifiedDateTime": "2021-03-17T08:59:08.136Z",
            "lastEditedDateTime": null,
            "deletedDateTime": null,
            "subject": null,
            "summary": null,
            "chatId": "19:2da4c29f6d7041eca70b638b43d45437@thread.v2",
            "importance": "normal",
            "locale": "en-us",
            "webUrl": null,
            "channelIdentity": null,
            "onBehalfOf": null,
            "policyViolation": null,
            "eventDetail": null,
            "from": {
                "application": null,
                "device": null,
                "user": {
                    "id": "8ea0e38b-efb3-4757-924a-5f94061cf8c2",
                    "displayName": "Robin Kline",
                    "userIdentityType": "aadUser"
                }
            },
            "body": {
                "contentType": "html",
                "content": "<div><div><div><span><img height=\"63\" src=\"https://graph.microsoft.com/beta/chats/19:2da4c29f6d7041eca70b638b43d45437@thread.v2/messages/1615971548136/hostedContents/aWQ9eF8wLXd1cy1kOS1lNTRmNjM1NWYxYmJkNGQ3ZTNmNGJhZmU4NTI5MTBmNix0eXBlPTEsdXJsPWh0dHBzOi8vdXMtYXBpLmFzbS5za3lwZS5jb20vdjEvb2JqZWN0cy8wLXd1cy1kOS1lNTRmNjM1NWYxYmJkNGQ3ZTNmNGJhZmU4NTI5MTBmNi92aWV3cy9pbWdv/$value\" width=\"67\" style=\"vertical-align:bottom; width:67px; height:63px\"></span></div></div></div>"
            },
            "attachments": [],
            "mentions": [],
            "reactions": []
        }
    }    
  ]
}
```
