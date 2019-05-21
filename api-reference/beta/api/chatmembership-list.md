---
title: "Get Chat Conversation Membership"
description: "Retrieve a member of a chat."
author: "nibeauli"
localization_priority: Priority
ms.prod: "microsoft-teams"
---

# List Chat Members

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List all [conversation members](../resources/conversationmember.md) in a [chat](../resources/chat.md)

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission Type|Permissions (from least to most privileged)|
|---------|-------------|
|Delegated (work or school account)|Chat.Read, Chat.ReadWrite|
|Delegated (personal Microsoft account)|Not supported|
|Application| Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /chats/{id}/members
GET /users/{id}/chats/{id}/members
```

## Optional query parameters

This operation does not support the [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a list of [conversation member](../resources/conversationmember.md) object in the response body.

## Example

##### Request

Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_conversation_member"
}-->
```http
GET https://graph.microsoft.com/beta/chats/{id}/members
```

##### Response

Here is an example of the response.

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conversationMember"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 201
[
  {
    "id": "id-value",
    "displayName": "display-name-value"
  },
  {
    "id": "id-value2",
    "displayName": "display-name-value2"
  },
]
```