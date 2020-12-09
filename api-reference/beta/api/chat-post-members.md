---
title: "Add conversationMember"
description: "Add a conversationMember to a chat."
author: "clearab"
doc_type: "apiPageType"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# Add conversationMember

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add a [conversationMember](../resources/conversationmember.md) to a [chat](../resources/chat.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission Type|Permissions (from least to most privileged)|
|---------|-------------|
|Delegated (work or school account)| ChatMember.ReadWrite |
|Delegated (personal Microsoft account)|Not supported.|
|Application| Not supported. |

## HTTP request
<!-- { "blockType": "ignored"} -->
```http
POST /chats/{chat-id}/members
```

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body

Include the following properties in the request body.

| Property   | Type |Description|
|:---------------|:--------|:----------|
|roles|string collection|The role for the user. Must be `owner` or empty.|
|user|[conversationMember](../resources/conversationmember.md)|The user to add to the chat.|

## Response

If successful, this method returns a `201 Created` response code and a Location header.

## Examples

### Example 1: Adding a single member to a Microsoft Teams chat while specifying a specific time the conversation history is shared back to

#### Request

Here is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_conversation_member"
} -->
```http
POST https://graph.microsoft.com/beta/chat/19:cf66807577b149cca1b7af0c32eec122@thread.v2/members
content-type: application/json

{
    "@odata.type": "#microsoft.graph.aadUserConversationMember",
    "user@odata.bind": "https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5",
    "tenantId": "6e5147da-6a35-4275-b3f3-fc069456b6eb",
    "visibleHistoryStartDateTime": "2019-04-18T23:51:43.255Z"
}
```

---


#### Response

Here is an example of the response.

```http
HTTP/1.1 201 Created with Location header.
```

### Example 2: Adding a single member to a Microsoft Teams chat, sharing no chat history

#### Request

Here is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_conversation_member"
} -->
```http
POST https://graph.microsoft.com/beta/chat/19:cf66807577b149cca1b7af0c32eec122@thread.v2/members
Content-type: application/json

{
    "@odata.type": "#microsoft.graph.aadUserConversationMember",
    "user@odata.bind": "https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5",
    "tenantId": "6e5147da-6a35-4275-b3f3-fc069456b6eb",
}
```

---


#### Response

Here is an example of the response.

```http
HTTP/1.1 201 Created with Location header.
```

### Example 3: Adding a single member to a Microsoft Teams chat, sharing the whole history of the chat

#### Request

Here is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_conversation_member"
} -->
```http
POST https://graph.microsoft.com/beta/chat/19:cf66807577b149cca1b7af0c32eec122@thread.v2/members
content-type: application/json

{
    "@odata.type": "#microsoft.graph.aadUserConversationMember",
    "user@odata.bind": "https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5",
    "tenantId": "6e5147da-6a35-4275-b3f3-fc069456b6eb",
    "visibleHistoryStartDateTime": "0001-01-01T00:00:00Z"
}
```

---


#### Response

Here is an example of the response.

```http
HTTP/1.1 201 Created with Location header.
```


