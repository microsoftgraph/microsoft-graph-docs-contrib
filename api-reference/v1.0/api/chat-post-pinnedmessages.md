---
title: "Pin a message in a chat"
description: "Pin a chat message in the specified chat."
author: "sumanac"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Pin a message in a chat
Namespace: microsoft.graph

Pin a chat message in the specified [chat](../resources/chat.md). This API cannot create a new chat; you must use the [list chats](chat-list.md) method to retrieve the ID of an existing chat before you can pin a chat message.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
| Delegated (work or school account)     | ChatMessage.Send, Chat.ReadWrite |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Chat.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /chats/{chat-Id}/pinnedMessages
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply the ID of a chat message to pin.

## Response

If successful, this method returns a `201 Created` response code and a [pinnedChatMessageInfo](../resources/pinnedchatmessageinfo.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_pinnedchatmessageinfo_from_",
  "sampleKeys": ["19:2da4c29f6d7041eca70b638b43d45437@thread.v2"]
}
-->
``` http
POST https://graph.microsoft.com/v1.0/chats/19:2da4c29f6d7041eca70b638b43d45437@thread.v2/pinnedMessages
Content-Type: application/json
Content-length: 63

{
   "message@odata.bind":"https://graph.microsoft.com/v1.0/chats/19:2da4c29f6d7041eca70b638b43d45437@thread.v2/messages/1616964509832"
}
```

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.pinnedChatMessageInfo"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.pinnedChatMessageInfo",
  "id": "1616964509832"
}
```
