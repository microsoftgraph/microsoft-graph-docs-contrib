---
title: "chatMessage: forwardToChat"
description: "Forward a chat message, a channel message, or a channel message reply to a chat."
author: "sumanac"
ms.subservice: "teams"
doc_type: apiPageType
ms.localizationpriority: medium
ms.date: 02/20/2025
---

# chatMessage: forwardToChat

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Forward a [chat message](../resources/chatmessage.md), a [channel message](../resources/chatmessage.md), or a [channel message reply](../resources/chatmessage.md) to a [chat](../resources/chat.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "chatmessage_forwardtochat" } -->
[!INCLUDE [permissions-table](../includes/permissions/chatmessage-forwardtochat-permissions.md)]

## HTTP request

Forward a **chatMessage** in a **chat** to a **chat**:

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /chats/{chatId}/messages/forwardToChat
```

Forward a **chatMessage** in a **channel** to a **chat**:

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /teams/{teamId}/channels/{channelId}/messages/forwardToChat
POST /teams/{teamId}/channels/{channelId}/messages/{messageId}/replies/forwardToChat
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|additionalMessage|[chatMessage](../resources/chatmessage.md)|Message body of the forwarded message. |
|messageIds|String collection|List of message IDs in a chat or channel that are being forwarded. Currently, only one message ID is supported.|
|targetChatIds|String collection|List of target chat IDs where a message can be forwarded. Currently, only one target chat ID is supported.|

## Response

If successful, this method returns a `200 OK` response code and a collection of [forwardToChatResult](../resources/forwardtochatresult.md) objects in the response body.

> [!NOTE]
> Because only a single target chat ID is supported in the request payload, the response contains only one value.

## Examples

### Example 1: Forward a message from a chat to a chat

The following example shows how to forward a message from a chat to a chat.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "chatmessage.forwardMessage_from_chat_to_chat",
  "sampleKeys": ["19:97641583cf154265a237da28ebbde27a@thread.v2"]
}
-->
```http
POST https://graph.microsoft.com/beta/chats/19:97641583cf154265a237da28ebbde27a@thread.v2/messages/forwardToChat
Content-Type: application/json

{
  "targetChatIds": [
    "19:e2ed97baac8e4bffbb91299a38996790@thread.v2"
  ],
  "messageIds": [
    "1728088338580"
  ],
  "additionalMessage": {
    "body": {
      "content": "Hello World"
    }
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/chatmessageforwardmessage-from-chat-to-chat-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/chatmessageforwardmessage-from-chat-to-chat-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/chatmessageforwardmessage-from-chat-to-chat-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/chatmessageforwardmessage-from-chat-to-chat-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/chatmessageforwardmessage-from-chat-to-chat-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/chatmessageforwardmessage-from-chat-to-chat-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/chatmessageforwardmessage-from-chat-to-chat-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.forwardToChatResult)"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.forwardToChatResult)",
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

### Example 2: Forward a message from a channel to a chat

The following example shows how to forward a message from a channel to a chat.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "chatmessage.forwardMessage_from_channel_to_chat",
  "sampleKeys": ["1e769eab-06a8-4b2e-ac42-1f040a4e52a1","19:b6343216390d46cba965fe36bd877674@thread.tacv2"]
}
-->
```http
POST https://graph.microsoft.com/beta/teams/1e769eab-06a8-4b2e-ac42-1f040a4e52a1/channels/19:b6343216390d46cba965fe36bd877674@thread.tacv2/messages/forwardToChat
Content-Type: application/json

{
  "targetChatIds": [
    "19:e2ed97baac8e4bffbb91299a38996790@thread.v2"
  ],
  "messageIds": [
    "1728088338580"
  ],
  "additionalMessage": {
    "body": {
      "content": "Hello World"
    }
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/chatmessageforwardmessage-from-channel-to-chat-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/chatmessageforwardmessage-from-channel-to-chat-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/chatmessageforwardmessage-from-channel-to-chat-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/chatmessageforwardmessage-from-channel-to-chat-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/chatmessageforwardmessage-from-channel-to-chat-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/chatmessageforwardmessage-from-channel-to-chat-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/chatmessageforwardmessage-from-channel-to-chat-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.forwardToChatResult)"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.forwardToChatResult)",
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

### Example 3: Forward a reply message from a channel to a chat

The following example shows how to forward a reply message from a channel to a chat.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "chatmessage.forwardReplyMessage_from_channel_to_chat",
  "sampleKeys": ["1e769eab-06a8-4b2e-ac42-1f040a4e52a1", "19:b6343216390d46cba965fe36bd877674@thread.tacv2", "1727810802267"]
}
-->
```http
POST https://graph.microsoft.com/beta/teams/1e769eab-06a8-4b2e-ac42-1f040a4e52a1/channels/19:b6343216390d46cba965fe36bd877674@thread.tacv2/messages/1727810802267/replies/forwardToChat
Content-Type: application/json

{
  "targetChatIds": [
    "19:e2ed97baac8e4bffbb91299a38996790@thread.v2"
  ],
  "messageIds": [
    "1728088338580"
  ],
  "additionalMessage": {
    "body": {
      "content": "Hello World"
    }
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/chatmessageforwardreplymessage-from-channel-to-chat-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/chatmessageforwardreplymessage-from-channel-to-chat-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/chatmessageforwardreplymessage-from-channel-to-chat-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/chatmessageforwardreplymessage-from-channel-to-chat-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/chatmessageforwardreplymessage-from-channel-to-chat-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/chatmessageforwardreplymessage-from-channel-to-chat-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/chatmessageforwardreplymessage-from-channel-to-chat-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.forwardToChatResult)"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.forwardToChatResult)",
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
