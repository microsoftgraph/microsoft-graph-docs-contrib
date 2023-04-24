---
title: "Add member to a chat"
description: "Add a conversationMember to a chat."
author: "anandjo"
doc_type: "apiPageType"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
---

# Add member to a chat

Namespace: microsoft.graph

Add a [conversationMember](../resources/conversationmember.md) to a [chat](../resources/chat.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission Type|Permissions (from least to most privileged)|
|---------|-------------|
|Delegated (work or school account)| ChatMember.ReadWrite, Chat.ReadWrite |
|Delegated (personal Microsoft account)|Not supported.|
|Application| ChatMember.ReadWrite.All, Chat.ReadWrite.All |

<!-- { "blockType": "ignored"} -->
```http
POST /chats/{chat-id}/members
```

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
|Content-Type|application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [conversationMember](../resources/conversationmember.md) object.

## Response

If successful, this method returns a `201 Created` response code and a Location header that provides a URL path to the newly created member object.

## Examples

### Example 1: Add a single member to a chat and specify the timespan for the conversation history

#### Request

Here is an example of the request.



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_conversation_member_with_specific_visibleHistoryStartDateTime",
  "sampleKeys": ["19:cf66807577b149cca1b7af0c32eec122@thread.v2"]
} -->
```msgraph-interactive
POST https://graph.microsoft.com/v1.0/chats/19:cf66807577b149cca1b7af0c32eec122@thread.v2/members
content-type: application/json

{
    "@odata.type": "#microsoft.graph.aadUserConversationMember",
    "user@odata.bind": "https://graph.microsoft.com/v1.0/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5",
    "visibleHistoryStartDateTime": "2019-04-18T23:51:43.255Z",
    "roles": ["owner"]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-conversation-member-with-specific-visiblehistorystartdatetime-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-conversation-member-with-specific-visiblehistorystartdatetime-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-conversation-member-with-specific-visiblehistorystartdatetime-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-conversation-member-with-specific-visiblehistorystartdatetime-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-conversation-member-with-specific-visiblehistorystartdatetime-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-conversation-member-with-specific-visiblehistorystartdatetime-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

Here is an example of the response.

<!-- 
{
 "blockType": "response",
  "truncated": true,
  "name": "create_conversation_member_with_specific_visibleHistoryStartDateTime"
}
-->
```http
HTTP/1.1 201 Created
Location: /chats/19:cf66807577b149cca1b7af0c32eec122@thread.v2/members/MCMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOTpiZDlkYTQ2MzIzYWY0MjUzOTZkMGZhNjcyMDAyODk4NEB0aHJlYWQudjIjIzQ4YmY5ZDUyLWRjYTctNGE1Zi04Mzk4LTM3Yjk1Y2M3YmQ4Mw==
```

### Example 2: Adding a single member to a Microsoft Teams chat, sharing no chat history

#### Request

Here is an example of the request.



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_conversation_member_with_no_visibleHistoryStartDateTime",
  "sampleKeys": ["19:cf66807577b149cca1b7af0c32eec122@thread.v2"]
} -->
```msgraph-interactive
POST https://graph.microsoft.com/v1.0/chats/19:cf66807577b149cca1b7af0c32eec122@thread.v2/members
Content-type: application/json

{
    "@odata.type": "#microsoft.graph.aadUserConversationMember",
    "user@odata.bind": "https://graph.microsoft.com/v1.0/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5",
    "roles": ["owner"]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-conversation-member-with-no-visiblehistorystartdatetime-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-conversation-member-with-no-visiblehistorystartdatetime-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-conversation-member-with-no-visiblehistorystartdatetime-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-conversation-member-with-no-visiblehistorystartdatetime-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-conversation-member-with-no-visiblehistorystartdatetime-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-conversation-member-with-no-visiblehistorystartdatetime-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

Here is an example of the response.

<!-- 
{
 "blockType": "response",
  "truncated": true,
  "name": "create_conversation_member_with_no_visibleHistoryStartDateTime"
}
-->
```http
HTTP/1.1 201 Created
Location: /chats/19:cf66807577b149cca1b7af0c32eec122@thread.v2/members/MCMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOTpiZDlkYTQ2MzIzYWY0MjUzOTZkMGZhNjcyMDAyODk4NEB0aHJlYWQudjIjIzQ4YmY5ZDUyLWRjYTctNGE1Zi04Mzk4LTM3Yjk1Y2M3YmQ4Mw==
```

### Example 3: Adding a single member to a Microsoft Teams chat, sharing the whole history of the chat

#### Request

Here is an example of the request.



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_conversation_member_with_all_visibleHistoryStartDateTime",
  "sampleKeys": ["19:cf66807577b149cca1b7af0c32eec122@thread.v2"]
} -->
```msgraph-interactive
POST https://graph.microsoft.com/v1.0/chats/19:cf66807577b149cca1b7af0c32eec122@thread.v2/members
content-type: application/json

{
    "@odata.type": "#microsoft.graph.aadUserConversationMember",
    "user@odata.bind": "https://graph.microsoft.com/v1.0/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5",
    "visibleHistoryStartDateTime": "0001-01-01T00:00:00Z",
    "roles": ["owner"]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-conversation-member-with-all-visiblehistorystartdatetime-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-conversation-member-with-all-visiblehistorystartdatetime-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-conversation-member-with-all-visiblehistorystartdatetime-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-conversation-member-with-all-visiblehistorystartdatetime-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-conversation-member-with-all-visiblehistorystartdatetime-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-conversation-member-with-all-visiblehistorystartdatetime-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

Here is an example of the response.

<!-- 
{
 "blockType": "response",
  "truncated": true,
  "name": "create_conversation_member_with_all_visibleHistoryStartDateTime"
}
-->
```http
HTTP/1.1 201 Created
Location: /chats/19:cf66807577b149cca1b7af0c32eec122@thread.v2/members/MCMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOTpiZDlkYTQ2MzIzYWY0MjUzOTZkMGZhNjcyMDAyODk4NEB0aHJlYWQudjIjIzQ4YmY5ZDUyLWRjYTctNGE1Zi04Mzk4LTM3Yjk1Y2M3YmQ4Mw==
```

### Example 4: Add a single member to a chat using user principal name

#### Request

Here is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_conversation_member_upn",
  "sampleKeys": ["19:cf66807577b149cca1b7af0c32eec122@thread.v2"]
} -->
```msgraph-interactive
POST https://graph.microsoft.com/v1.0/chats/19:cf66807577b149cca1b7af0c32eec122@thread.v2/members
content-type: application/json

{
    "@odata.type": "#microsoft.graph.aadUserConversationMember",
    "user@odata.bind": "https://graph.microsoft.com/v1.0/users/jacob@contoso.com",
    "visibleHistoryStartDateTime": "2019-04-18T23:51:43.255Z",
    "roles": ["owner"]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-conversation-member-upn-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-conversation-member-upn-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-conversation-member-upn-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-conversation-member-upn-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-conversation-member-upn-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-conversation-member-upn-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

Here is an example of the response.

<!-- 
{
 "blockType": "response",
  "truncated": true,
  "name": "create_conversation_member_upn"
}
-->
```http
HTTP/1.1 201 Created
Location: /chats/19:cf66807577b149cca1b7af0c32eec122@thread.v2/members/MCMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOTpiZDlkYTQ2MzIzYWY0MjUzOTZkMGZhNjcyMDAyODk4NEB0aHJlYWQudjIjIzQ4YmY5ZDUyLWRjYTctNGE1Zi04Mzk4LTM3Yjk1Y2M3YmQ4Mw==
```


