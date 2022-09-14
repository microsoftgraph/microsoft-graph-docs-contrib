---
title: "chatMessage: softDelete"
description: "Delete a single message or message reply in a channel or a chat."
author: "RamjotSingh"
ms.prod: "microsoft-teams"
doc_type: apiPageType
ms.localizationpriority: medium
---

# chatMessage: softDelete

Namespace: microsoft.graph

Delete a single [message](../resources/chatmessage.md) or a [message reply](../resources/chatmessage.md) in a [channel](../resources/channel.md) or a [chat](../resources/chat.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### Permissions for channel

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
|Delegated (work or school account)| ChannelMessage.ReadWrite |
|Delegated (personal Microsoft account)| Not supported. |
|Application| Not supported. |

### Permissions for chat

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
|Delegated (work or school account)| Chat.ReadWrite |
|Delegated (personal Microsoft account)| Not supported. |
|Application| Not supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /users/{userId}/chats/{chatsId}/messages/{chatMessageId}/softDelete
POST /teams/{teamsId}/channels/{channelId}/messages/{chatMessageId}/softDelete
POST /teams/{teamId}/channels/{channelId}/messages/{messageId}/replies/{replyId}/softDelete
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Example 1: Soft-delete message in a chat

#### Request
<!-- {
  "blockType": "request",
  "name": "chatmessagethis-softdelete1"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/users/8f98f01d-1a73-401a-b9e9-9fd1e6f5e5ar/chats/19:22273db3497f4b32bue61f6e82be21c5@thread.tacv2/messages/1649864053377/softDelete
```

#### Response

<!-- {
  "blockType": "response"
} -->

``` http
HTTP/1.1 204 No Content
```

### Example 2: Soft-delete message in a channel

#### Request

<!-- {
  "blockType": "request",
  "name": "chatmessagethis-softdelete2"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/teams/172b0cce-e65d-44ce-9a49-91d9f2e8593a/channels/19:22273db3497f4b32bue61f6e82be21c5@thread.tacv2/messages/1649864053377/softDelete
```

#### Response

<!-- {
  "blockType": "response"
} -->

``` http
HTTP/1.1 204 No Content
```

### Example 3: Soft-delete message of a reply

#### Request

<!-- {
  "blockType": "request",
  "name": "chatmessagethis-softdelete3"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/teams/172b0cce-e65d-44ce-9a49-91d9f2e8593a/channels/19:22273db3497f4b32bue61f6e82be21c5@thread.tacv2/messages/1649864053377/replies/1649852161658/softDelete
```

#### Response

<!-- {
  "blockType": "response"
} -->

``` http
HTTP/1.1 204 No Content
```
