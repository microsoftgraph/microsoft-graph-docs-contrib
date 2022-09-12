---
title: "Unpin a message from a chat"
description: "Unpin a message from a chat."
author: "sumanac"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Unpin a message from a chat
Namespace: microsoft.graph

Unpin a message from a [chat](../resources/chat.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account) | Chat.ReadWrite |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Chat.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /chats/{chat-id}/pinnedMessages/{pinnedChatMessageId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "delete_pinnedchatmessageinfo",
  "sampleKeys": ["19:cf66807577b149cca1b7af0c32eec122@thread.v2", "1616964509832"]
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/chats/19:cf66807577b149cca1b7af0c32eec122@thread.v2/pinnedMessages/1616964509832
```

### Response
The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
