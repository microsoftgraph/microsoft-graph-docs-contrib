---
title: "chatMessage: setReaction"
description: "Set a reaction to a single message or message reply in a channel or a chat."
author: "sumanac"
ms.prod: "microsoft-teams"
doc_type: apiPageType
ms.localizationpriority: medium
---

# chatMessage: setReaction

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Set a reaction to a single [chatMessage](../resources/chatmessage.md) or a [chat message reply](../resources/chatmessage.md) in a [channel](../resources/channel.md) or a [chat](../resources/chat.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

The following tables show the least privileged permission or permissions required to call this API on each supported resource type. Follow [best practices](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions) to request least privileged permissions. For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### Permissions for channel

<!-- { "blockType": "permissions", "name": "chatmessage_setreaction" } -->
[!INCLUDE [permissions-table](../includes/permissions/chatmessage-setreaction-permissions.md)]

### Permissions for chat

<!-- { "blockType": "permissions", "name": "chatmessage_setreaction_2" } -->
[!INCLUDE [permissions-table](../includes/permissions/chatmessage-setreaction-2-permissions.md)]

## HTTP request

To set a reaction to a **chatMessage** in a **channel**:
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /teams/{teamsId}/channels/{channelId}/messages/{chatMessageId}/setReaction
POST /teams/{teamId}/channels/{channelId}/messages/{messageId}/replies/{replyId}/setReaction
```

To set a reaction to a **chatMessage** in a **chat**:
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /chats/{chatId}/messages/{chatMessageId}/setReaction
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

In the request body, supply the **reactionType** as unicode.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Example 1: Set a reaction to a chat message

#### Request

```http
POST https://graph.microsoft.com/beta/chats/chatId/messages/messageId/setReaction
{
  "reactionType": "💘"
}
```

#### Response

<!-- {
  "blockType": "response"
} -->

``` http
HTTP/1.1 204 No Content
```

### Example 2: Set a reaction to a message in a channel

#### Request
```http
POST https://graph.microsoft.com/beta/teams/teamsid/channels/channelId/messages/messageId/setReaction
{
  "reactionType": "💘"
}
```

#### Response

<!-- {
  "blockType": "response"
} -->

``` http
HTTP/1.1 204 No Content
```

### Example 3:  Set a reaction to a reply message

#### Request

```http
POST https://graph.microsoft.com/beta/teams/teamsid/channels/channelId/messages/messageId/replies/replyId/setReaction
{
  "reactionType": "💘"
}
```

#### Response

<!-- {
  "blockType": "response"
} -->

``` http
HTTP/1.1 204 No Content
```
