---
title: "Delete chatMessage in a channel or chat"
description: "Delete a single message (without its replies) in a channel or a chat."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Delete chatMessage in a channel or chat

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a single [message](../resources/chatmessage.md) or a [message reply](../resources/chatmessage.md) in a [channel](../resources/channel.md) or a [chat](../resources/chat.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### Permissions for channel

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
|Delegated (work or school account)| ChannelMessage.ReadWrite |
|Delegated (personal Microsoft account)| Not supported |
|Application| Not supported |

> **Note**: Permissions marked with ** are supported only for backward compatibility. We recommend that you update your solutions to use an alternative permission listed in the previous table and avoid using these permissions going forward.

### Permissions for chat

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
|Delegated (work or school account)| Chat.ReadWrite |
|Delegated (personal Microsoft account)| Not supported |
|Application| Not supported |

> **Note**: The Delete operation on a message is a soft-delete, it means a deleted message can be restored using undo soft delete API.

## HTTP request

**Delete message in a channel**
<!-- { "blockType": "ignored" } -->
```http
POST /teams/{team-id}/channels/{channel-id}/messages/{message-id}/softDelete
```

**Delete message in a chat**
<!-- { "blockType": "ignored" } -->
```http
POST /users/{user-id}/chats/{chat-id}/messages/{message-id}/softDelete
```

## Optional query parameters

This method does not supports or needs the [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Delete a message in a chat

#### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_chatmessage_1"
}-->
```msgraph-interactive
POST https://graph.microsoft.com/beta/users/12730000-201d-4f95-8083-1b7f99b3edeb/chats/19%3Ameeting_NzFkYzVhZDgtMjM0ZCrbrnbtrntU5LWFmZWUtYmFhMjBjYzNmNDA3%40thread.v2/messages/1644600000013/softDelete
```

---

#### Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Example 2: Delete a message in a channel

#### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_channelmessage_1"
}-->
```msgraph-interactive
POST https://graph.microsoft.com/beta/teams/c7350b61-0000-4d6e-8745-d9315e7a7c7a/channels/19%3Adfvebr546c27dc24a068902098e09188c11%40thread.tacv2/messages/1644219111164/softDelete
```
---

#### Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Example 3: Undelete a message in a chat

#### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "undo_delete_chatmessage_1"
}-->
```msgraph-interactive
POST https://graph.microsoft.com/beta/users/12730000-201d-4f95-8083-1b7f99b3edeb/chats/19%3Ameeting_NzFkYzVhZDgtMjM0ZCrbrnbtrntU5LWFmZWUtYmFhMjBjYzNmNDA3%40thread.v2/messages/1644600000013/undoSoftDelete
```
---

#### Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Example 4: Undelete a message in a channel

#### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_channelmessage_1"
}-->
```msgraph-interactive
POST https://graph.microsoft.com/beta/teams/c7350b61-0000-4d6e-8745-d9315e7a7c7a/channels/19%3Adfvebr546c27dc24a068902098e09188c11%40thread.tacv2/messages/1644219111164/undoSoftDelete
```
---

#### Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```
