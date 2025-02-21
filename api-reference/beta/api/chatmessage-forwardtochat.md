---
title: "chatMessage: forwardToChat"
description: "forward a chat message or a channel message or a channel reply message to a chat."
author: "sumanac"
ms.subservice: "teams"
doc_type: apiPageType
ms.localizationpriority: medium
ms.date: 02/20/2025
---

# chatMessage: forwardToChat

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Forward a [chatMessage](../resources/chatmessage.md) or a [channel message](../resources/chatmessage.md) or a [channel message reply](../resources/chatmessage.md) to a chat.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### Permissions for chat
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
|Delegated (work or school account)| ChatMessage.Send |
|Delegated (personal Microsoft account)| Not supported. |
|Application| Not supported. |

## HTTP request

Forward a **chatMessage** in a **chat** to a **chat**:
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /chats/{chatId}/messages/forwardToChat
```
Forward a **chatMessage** in a **channel** to a **chat**:
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /teams/{teamsId}/channels/{channelId}/messages/forwardToChat
POST /teams/{teamId}/channels/{channelId}/messages/{messageId}/replies/forwardToChat
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|targetChatIds|String collection|List of target chat ids where a message can be forwarded to. Currently, only one target chat id is supported.|
|messageIds|String collection|List of message ids in a chat that are replied with quote. Currently, only one message id is supported.|
|additionalMessage|[chatMessage](../resources/chatmessage.md) object|Message body of the forwarded message. |

## Response

If successful, this method returns a `200 OK` response code and a collection of [conversationMember](../resources/conversationmember.md) objects in the response body.

> [!NOTE]
> Since only single target chat id is supported for request payload, the response will also have only one value.

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.forwardToChatResult)",
    "value": [
        {
            "@odata.type": "#microsoft.graph.forwardToChatResult",
            "targetChatId": "19:e2ed97baac8e4bffbb91299a38996790@thread.v2",
            "forwardedMessageId": "1730918320559",
            "error": null
        }
    ]
}

## Examples

### Example 1: Forward message from a chat to a chat

#### Request

```http
POST https://graph.microsoft.com/beta/chats/19:97641583cf154265a237da28ebbde27a@thread.v2/messages/forwardToChat
{
    "targetChatIds": ["19:e2ed97baac8e4bffbb91299a38996790@thread.v2"],
    "messageIds": ["1728088338580"],
    "additionalMessage": {
        "body": {
            "content": "Hello World"
        }
    }
}
```

#### Response

<!-- {
  "blockType": "response"
} -->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.forwardToChatResult)",
    "value": [
        {
            "@odata.type": "#microsoft.graph.forwardToChatResult",
            "targetChatId": "19:e2ed97baac8e4bffbb91299a38996790@thread.v2",
            "forwardedMessageId": "1730918320559",
            "error": null
        }
    ]
}
```

### Example 2: Forward message from a channel to a chat

#### Request
```http
POST https://graph.microsoft.com/beta/teams/1e769eab-06a8-4b2e-ac42-1f040a4e52a1/channels/19:b6343216390d46cba965fe36bd877674@thread.tacv2/messages/forwardToChat
{
    "targetChatIds": ["19:e2ed97baac8e4bffbb91299a38996790@thread.v2"],
    "messageIds": ["1728088338580"],
    "additionalMessage": {
        "body": {
            "content": "Hello World"
        }
    }
}
```

#### Response

<!-- {
  "blockType": "response"
} -->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.forwardToChatResult)",
    "value": [
        {
            "@odata.type": "#microsoft.graph.forwardToChatResult",
            "targetChatId": "19:e2ed97baac8e4bffbb91299a38996790@thread.v2",
            "forwardedMessageId": "1730918320559",
            "error": null
        }
    ]
}
```

### Example 3:  Forward reply message from a channel to a chat

#### Request

```http
POST https://graph.microsoft.com/beta/teams/1e769eab-06a8-4b2e-ac42-1f040a4e52a1/channels/19:b6343216390d46cba965fe36bd877674@thread.tacv2/messages/1727810802267/replies/forwardToChat
{
    "targetChatIds": ["19:e2ed97baac8e4bffbb91299a38996790@thread.v2"],
    "messageIds": ["1728088338580"],
    "additionalMessage": {
        "body": {
            "content": "Hello World"
        }
    }
}
```

#### Response

<!-- {
  "blockType": "response"
} -->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.forwardToChatResult)",
    "value": [
        {
            "@odata.type": "#microsoft.graph.forwardToChatResult",
            "targetChatId": "19:e2ed97baac8e4bffbb91299a38996790@thread.v2",
            "forwardedMessageId": "1730918320559",
            "error": null
        }
    ]
}
```
