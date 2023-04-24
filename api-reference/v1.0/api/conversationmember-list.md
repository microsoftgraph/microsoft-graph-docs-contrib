---
title: "List conversationMembers"
description: "Retrieve list of chat or channel members."
author: "akjo"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# List conversationMembers

Namespace: microsoft.graph

List all [conversation members](../resources/conversationmember.md) in a [chat](../resources/chatmessage.md) or [channel](../resources/channel.md).

> [!NOTE]
> The membership IDs returned by the server must be treated as opaque strings. The client should not try to parse or make any assumptions about these resource IDs.
>
> The membership results could map to users from different tenants, as indicated in the response, in the future.The client should not assume that all members are from the current tenant only.
 
## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission Type|Permissions (from least to most privileged)|
|---------|-------------|
|Delegated (work or school account)| Chat.ReadBasic, Chat.Read, Chat.ReadWrite |
|Delegated (personal Microsoft account)|Not supported.|
|Application| Not supported. |


## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /chats/{id}/members
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

If successful, this method returns a `200 OK` response code and a list of [conversationMember](../resources/conversationmember.md) objects in the response body.

## Example

### Request

The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_conversation_members_2"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/chats/19:9ef2dcdf14ba44cbae25c2f5d53171ba@thread.v2/members
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-conversation-members-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-conversation-members-2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-conversation-members-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-conversation-members-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-conversation-members-2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-conversation-members-2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conversationMember"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#chats('19%3A9ef2dcdf14ba44cbae25c2f5d53171ba%40thread.v2')/members",
    "@odata.count": 4,
    "value": [
        {
            "@odata.type": "#microsoft.graph.aadUserConversationMember",
            "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTo5ZWYyZGNkZjE0YmE0NGNiYWUyNWMyZjVkNTMxNzFiYUB0aHJlYWQudjIjIzE3ZTk1MjZjLTIyODYtNDFhMS1hZWViLTRiYWRlZTc2NjA2Mw==",
            "roles": [
                "owner"
            ],
            "displayName": "SA-TeamsAdconnect",
            "visibleHistoryStartDateTime": "2022-04-25T11:52:22.765Z",
            "userId": "17e9526c-2286-41a1-aeeb-4badee766063",
            "email": "SA-TeamsAdconnect@rtlgroup.onmicrosoft.com",
            "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
        },
        {
            "@odata.type": "#microsoft.graph.aadUserConversationMember",
            "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTo5ZWYyZGNkZjE0YmE0NGNiYWUyNWMyZjVkNTMxNzFiYUB0aHJlYWQudjIjIzM3MjBiNWE3LTg1NzktNDM0My05NmJmLTQzNDIxNGQ2NTI2ZA==",
            "roles": [
                "owner"
            ],
            "displayName": "Mhamdi Wafa",
            "visibleHistoryStartDateTime": "2022-04-25T11:52:22.765Z",
            "userId": "3720b5a7-8579-4343-96bf-434214d6526d",
            "email": "wmhamdi@rtladconnect.com",
            "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
        },
        {
            "@odata.type": "#microsoft.graph.aadUserConversationMember",
            "id": "MCMjMCMjZGNkMjE5ZGQtYmM2OC00YjliLWJmMGItNGEzM2E3OTZiZTM1IyMxOTo5ZWYyZGNkZjE0YmE0NGNiYWUyNWMyZjVkNTMxNzFiYUB0aHJlYWQudjIjIzQ4ZDMxODg3LTVmYWQtNGQ3My1hOWY1LTNjMzU2ZTY4YTAzOA==",
            "roles": [
                "owner"
            ],
            "displayName": "Megan Bowen",
            "visibleHistoryStartDateTime": "2022-04-25T11:52:22.765Z",
            "userId": "48d31887-5fad-4d73-a9f5-3c356e68a038",
            "email": "MeganB@M365x214355.onmicrosoft.com",
            "tenantId": "dcd219dd-bc68-4b9b-bf0b-4a33a796be35"
        },
        {
            "@odata.type": "#microsoft.graph.aadUserConversationMember",
            "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTo5ZWYyZGNkZjE0YmE0NGNiYWUyNWMyZjVkNTMxNzFiYUB0aHJlYWQudjIjIzcxZjJjYzdmLTQwYWYtNDhkOS05ZDk2LTVhYTMzYjkxYmRkOA==",
            "roles": [
                "owner"
            ],
            "displayName": "Berrahal Mariem [RTL-AdConnect]",
            "visibleHistoryStartDateTime": "2022-04-25T11:59:47.226Z",
            "userId": "71f2cc7f-40af-48d9-9d96-5aa33b91bdd8",
            "email": "mberrahal@rtladconnect.com",
            "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "conversation: member list",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
