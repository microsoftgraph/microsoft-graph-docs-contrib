---
title: "chatMessage: undoSoftDelete"
description: "Undelete a single message (without its replies) in a channel or a chat."
author: "Ramjot Singh"
ms.prod: "microsoft-teams"
doc_type: apiPageType
ms.localizationpriority: medium
---

# chatMessage: undoSoftDelete
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Undelete a single [message](../resources/chatmessage.md) or a [message reply](../resources/chatmessage.md) in a [channel](../resources/channel.md) or a [chat](../resources/chat.md).

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
|Delegated (work or school account)| ChatMessage.ReadWrite |
|Delegated (personal Microsoft account)| Not supported |
|Application| Not supported |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /users/{userId}/chats/{chatsId}/messages/{chatMessageId}/undoSoftDelete
POST /teams/{teamsId}/channels/{channelId}/messages/{chatMessageId}/undoSoftDelete
POST /teams/{team-id}/channels/{channel-id}/messages/{message-id}/replies/{reply-id}/undoSoftDelete
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

### Example 1: Undo Soft-Deleted message in a chat

#### Request
<!-- {
  "blockType": "request",
  "name": "chatmessagethis.undosoftdelete"
}
-->
``` http
POST https://graph.microsoft.com/beta/users/{userId}/chats/{chatsId}/messages/{chatMessageId}/undoSoftDelete
```


#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 2: Undo Soft-Deleted message in a channel

#### Request
<!-- {
  "blockType": "request",
  "name": "chatmessagethis.undosoftdelete"
}
-->
``` http
POST https://graph.microsoft.com/beta/teams/{teamsId}/channels/{channelId}/messages/{chatMessageId}/undoSoftDelete
```


#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```


### Example 3: Undo Soft-Deleted message of a reply.

#### Request
<!-- {
  "blockType": "request",
  "name": "chatmessagethis.undosoftdelete"
}
-->
``` http
POST https://graph.microsoft.com/beta/teams/{team-id}/channels/{channel-id}/messages/{message-id}/replies/{reply-id}/undoSoftDelete
```


#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
