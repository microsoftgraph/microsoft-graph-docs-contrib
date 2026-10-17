---
title: "chatMessage: setReaction"
description: "Set a reaction to a single message or message reply in a channel or a chat."
author: "sumanac"
ms.subservice: "teams"
doc_type: apiPageType
ms.localizationpriority: medium
ms.date: 04/05/2024
---

# chatMessage: setReaction

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Set a reaction to a single [chatMessage](../resources/chatmessage.md) or a [chat message reply](../resources/chatmessage.md) in a [channel](../resources/channel.md) or a [chat](../resources/chat.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### Permissions for channel
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
|Delegated (work or school account)| ChannelMessage.Send  |
|Delegated (personal Microsoft account)| Not supported. |
|Application| Not supported. |

### Permissions for chat
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
|Delegated (work or school account)| Chat.ReadWrite, ChatMessage.Send |
|Delegated (personal Microsoft account)| Not supported. |
|Application| Not supported. |

## HTTP request

To set a reaction to a **chatMessage** in a **channel**:
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /teams/{teamsId}/channels/{channelId}/messages/{chatMessageId}/setReaction
POST /teams/{teamId}/channels/{channelId}/messages/{messageId}/replies/{replyId}/setReaction
```

To set a reaction to a **chatMessage** in a **chat**:
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /chats/{chatId}/messages/{chatMessageId}/setReaction
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON object with the following parameters.

| Parameter | Type | Description |
|:----------|:-----|:------------|
| displayName | String | The display name of the custom emoji. Optional. When **reactionType** is `custom`, specify **displayName**, **reactionId**, or both. |
| reactionId | String | The service-issued identifier of the custom emoji. Optional. When **reactionType** is `custom`, specify **displayName**, **reactionId**, or both. |
| reactionType | String | The reaction type. Required. Specify a Unicode character for a standard reaction or `custom` for a custom emoji reaction. |

If you specify both **displayName** and **reactionId**, they must identify the same tenant-scoped custom emoji.

## Response

If successful, this action returns a `204 No Content` response code.

This action also returns a `400 Bad Request` response code if **reactionType** is `custom` and neither **displayName** nor **reactionId** is supplied, or if the supplied identifiers resolve to different custom emojis. The action returns a `404 Not Found` response code if the custom emoji can't be resolved in the tenant.

## Examples

### Example 1: Set a reaction to a chat message
The following example shows how to set a reaction to a chat message.
#### Request
The following example shows a request.
```http
POST https://graph.microsoft.com/beta/chats/19:8b1131f7c9e64f7b9b4b3f6d2f6f15a7@thread.v2/messages/1700000000000/setReaction
Content-Type: application/json

{
  "reactionType": "💘"
}
```

#### Response
The following example shows the response.
<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```

### Example 2: Set a reaction to a message in a channel
The following example shows how to set a reaction to a message in a channel.
#### Request
The following example shows a request.
```http
POST https://graph.microsoft.com/beta/teams/57fb72d0-d811-46f4-8947-305e6072eaa5/channels/19:4a95f7d8db4c4e7fae1ec0b28d1d8a52@thread.tacv2/messages/1700000000000/setReaction
Content-Type: application/json

{
  "reactionType": "💘"
}
```

#### Response
The following example shows the response.
<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```

### Example 3: Set a reaction to a reply message
The following example shows how to set a reaction to a reply message.
#### Request
The following example shows a request.
```http
POST https://graph.microsoft.com/beta/teams/57fb72d0-d811-46f4-8947-305e6072eaa5/channels/19:4a95f7d8db4c4e7fae1ec0b28d1d8a52@thread.tacv2/messages/1700000000000/replies/1700000001000/setReaction
Content-Type: application/json

{
  "reactionType": "💘"
}
```

#### Response
The following example shows the response.
<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```

### Example 4: Set a custom emoji reaction by display name and reaction ID
The following example shows how to set a custom emoji reaction by display name and reaction ID.
#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "chatmessage_setreaction_custom"
} -->
```http
POST https://graph.microsoft.com/beta/chats/19:8b1131f7c9e64f7b9b4b3f6d2f6f15a7@thread.v2/messages/1700000000000/setReaction
Content-Type: application/json

{
  "reactionType": "custom",
  "displayName": "party-parrot",
  "reactionId": "opaque-service-issued-id"
}
```

#### Response
The following example shows the response.
<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```
