---
title: "Get conversationMember in a chat"
description: "Retrieve a member of a chat."
author: "anandjo"
ms.localizationpriority: high
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 04/04/2024
---

# Get conversationMember in a chat

Namespace: microsoft.graph


Retrieve a [conversationMember](../resources/conversationmember.md) from a [chat](../resources/chat.md).

> [!NOTE]
> The membership IDs returned by the server must be treated as opaque strings. The client should not try to parse or make any assumptions about these resource IDs.
>
> The membership results could map to users from different tenants, as indicated in the response, in the future. The client should not assume that all members are from the current tenant only.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "chat_get_members" } -->
[!INCLUDE [permissions-table](../includes/permissions/chat-get-members-permissions.md)]

> **Note**: Permissions marked with * use [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent).

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /chats/{chat-id}/members/{membership-id}
GET /users/{user-id | user-principal-name}/chats/{chat-id}/members/{membership-id}
```

## Optional query parameters

This operation does not support the [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [conversationMember](../resources/conversationmember.md) object in the response body.

## Example

### Request

The following example shows a request.



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_conversation_member",
  "sampleKeys": ["19:d0f51aeb0e8e43d0befb24be72b09ea7@thread.v2", "MCMjMCMjMGY4MWIxZWEtYjg1Ny00YTljLTk5ZWItZTk5OGQ1MjA0NmQ1IyMxOTpkMGY1MWFlYjBlOGU0M2QwYmVmYjI0YmU3MmIwOWVhN0B0aHJlYWQudjIjIzhjMGMwYTJhLWM2NzktNDAxZS1hZGMzLWE0NWI1NDg4ODlhNg=="]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/chats/19:d0f51aeb0e8e43d0befb24be72b09ea7@thread.v2/members/MCMjMCMjMGY4MWIxZWEtYjg1Ny00YTljLTk5ZWItZTk5OGQ1MjA0NmQ1IyMxOTpkMGY1MWFlYjBlOGU0M2QwYmVmYjI0YmU3MmIwOWVhN0B0aHJlYWQudjIjIzhjMGMwYTJhLWM2NzktNDAxZS1hZGMzLWE0NWI1NDg4ODlhNg==
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-conversation-member-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-conversation-member-cli-snippets.md)]
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

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-conversation-member-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

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
    "email": "Niklas.Lang@contoso.com",
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
