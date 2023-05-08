---
title: "Get conversationMember in a chat"
description: "Retrieve a member of a chat."
author: "anandjo"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Get conversationMember in a chat

Namespace: microsoft.graph


Retrieve a [conversationMember](../resources/conversationmember.md) from a [chat](../resources/chat.md).

> [!NOTE]
> The membership IDs returned by the server must be treated as opaque strings. The client should not try to parse or make any assumptions about these resource IDs.
>
> The membership results could map to users from different tenants, as indicated in the response, in the future. The client should not assume that all members are from the current tenant only.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission Type|Permissions (from least to most privileged)|
|---------|-------------|
|Delegated (work or school account)| ChatMember.Read, ChatMember.ReadWrite, Chat.ReadBasic, Chat.Read, Chat.ReadWrite |
|Delegated (personal Microsoft account)|Not supported.|
|Application| ChatMember.Read.All, ChatMember.ReadWrite.All, Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All. |

> **Note**: Permissions marked with * use [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent).

> [!NOTE]
> Before calling this API with application permissions, you must request access. For details, see [Protected APIs in Microsoft Teams](/graph/teams-protected-apis).

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /chats/{chat-id}/members/{membership-id}
GET /users/{user-id} | user-principal-name/chats/{chat-id}/members/{membership-id}
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

If successful, this method returns a `200 OK` response code and a [conversationMember](../resources/conversationmember.md) object in the response body.

## Example

### Request

Here is an example of the request.



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_conversation_member",
  "sampleKeys": ["19:d0f51aeb0e8e43d0befb24be72b09ea7@thread.v", "MCMjMCMjMGY4MWIxZWEtYjg1Ny00YTljLTk5ZWItZTk5OGQ1MjA0NmQ1IyMxOTpkMGY1MWFlYjBlOGU0M2QwYmVmYjI0YmU3MmIwOWVhN0B0aHJlYWQudjIjIzhjMGMwYTJhLWM2NzktNDAxZS1hZGMzLWE0NWI1NDg4ODlhNg=="]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/chats/19:d0f51aeb0e8e43d0befb24be72b09ea7@thread.v2/members/MCMjMCMjMGY4MWIxZWEtYjg1Ny00YTljLTk5ZWItZTk5OGQ1MjA0NmQ1IyMxOTpkMGY1MWFlYjBlOGU0M2QwYmVmYjI0YmU3MmIwOWVhN0B0aHJlYWQudjIjIzhjMGMwYTJhLWM2NzktNDAxZS1hZGMzLWE0NWI1NDg4ODlhNg==
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-conversation-member-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-conversation-member-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-conversation-member-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-conversation-member-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-conversation-member-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-conversation-member-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

Here is an example of the response.

<!-- 
{
  "blockType": "response",
  "truncated": true,
  "name": "get_conversation_member",
  "@odata.type": "microsoft.graph.conversationMember"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#chats('19%3Ad0f51aeb0e8e43d0befb24be72b09ea7%40thread.v2')/members/$entity",
    "@odata.type": "#microsoft.graph.aadUserConversationMember",
    "id": "MCMjMCMjMGY4MWIxZWEtYjg1Ny00YTljLTk5ZWItZTk5OGQ1MjA0NmQ1IyMxOTpkMGY1MWFlYjBlOGU0M2QwYmVmYjI0YmU3MmIwOWVhN0B0aHJlYWQudjIjIzhjMGMwYTJhLWM2NzktNDAxZS1hZGMzLWE0NWI1NDg4ODlhNg==",
    "roles": [
        "owner"
    ],
    "displayName": "Niklas Lang",
    "visibleHistoryStartDateTime": "2022-05-02T12:49:36.881Z",
    "userId": "8c0c0a2a-c679-401e-adc3-a45b548889a6",
    "email": "Niklas.Lang@BechtleDAI.onmicrosoft.com",
    "tenantId": "0f81b1ea-b857-4a9c-99eb-e998d52046d5"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "conversation: member get",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
