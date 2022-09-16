---
title: "Get chat"
description: "Retrieve a single chat."
author: "RamjotSingh"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Get chat

Namespace: microsoft.graph

Retrieve a single [chat](../resources/chat.md) (without its messages).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).


|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Chat.ReadBasic, Chat.Read, Chat.ReadWrite |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /me/chats/{chat-id}
GET /users/{user-id | user-principal-name}/chats/{chat-id}
GET /chats/{chat-id}
```

## Optional query parameters

This operation does not currently support [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [chat](../resources/chat.md) objects in the response body.

## Examples

### Example 1: Get a group chat
#### Request
The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_group_chat",
  "sampleKeys": ["19:b8577894a63548969c5c92bb9c80c5e1@thread.v2"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/chats/19:d0f51aeb0e8e43d0befb24be72b09ea7@thread.v2
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-group-chat-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-group-chat-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-group-chat-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-group-chat-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-group-chat-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-group-chat-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response
The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chat"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#chats/$entity",
    "id": "19:d0f51aeb0e8e43d0befb24be72b09ea7@thread.v2",
    "topic": "Test Agent Group for Chatbot",
    "createdDateTime": "2022-05-02T12:49:37.121Z",
    "lastUpdatedDateTime": "2022-05-02T13:20:52.72Z",
    "chatType": "group",
    "webUrl": "https://teams.microsoft.com/l/chat/19%3Ad0f51aeb0e8e43d0befb24be72b09ea7%40thread.v2/0?tenantId=0f81b1ea-b857-4a9c-99eb-e998d52046d5",
    "tenantId": "0f81b1ea-b857-4a9c-99eb-e998d52046d5",
    "onlineMeetingInfo": null
}
```

### Example 2: Get a user's one on one chat
#### Request
The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_chat",
  "sampleKeys": ["8b081ef6-4792-4def-b2c9-c363a1bf41d5", "19:8b081ef6-4792-4def-b2c9-c363a1bf41d5_877192bd-9183-47d3-a74c-8aa0426716cf@unq.gbl.spaces"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/chats/19:8b081ef6-4792-4def-b2c9-c363a1bf41d5_877192bd-9183-47d3-a74c-8aa0426716cf@unq.gbl.spaces
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-chat-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-chat-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-chat-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-chat-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-chat-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-chat-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chat"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#chats/$entity",
    "id": "19:8b081ef6-4792-4def-b2c9-c363a1bf41d5_877192bd-9183-47d3-a74c-8aa0426716cf@unq.gbl.spaces",
    "topic": null,
    "createdDateTime": "2019-04-18T23:51:42.099Z",
    "lastUpdatedDateTime": "2019-04-18T23:51:43.255Z",
    "chatType": "oneOnOne"
}
```

### Example 3: Get a chat and all its members
#### Request
The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_chat_withmembers",
  "sampleKeys": ["19:b8577894a63548969c5c92bb9c80c5e1@thread.v2"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/chats/19:d0f51aeb0e8e43d0befb24be72b09ea7@thread.v2?$expand=members
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-chat-withmembers-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-chat-withmembers-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-chat-withmembers-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-chat-withmembers-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-chat-withmembers-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-chat-withmembers-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response
The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chat"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#chats(members())/$entity",
    "id": "19:d0f51aeb0e8e43d0befb24be72b09ea7@thread.v2",
    "topic": "Test Agent Group for Chatbot",
    "createdDateTime": "2022-05-02T12:49:37.121Z",
    "lastUpdatedDateTime": "2022-05-02T13:20:52.72Z",
    "chatType": "group",
    "webUrl": "https://teams.microsoft.com/l/chat/19%3Ad0f51aeb0e8e43d0befb24be72b09ea7%40thread.v2/0?tenantId=0f81b1ea-b857-4a9c-99eb-e998d52046d5",
    "tenantId": "0f81b1ea-b857-4a9c-99eb-e998d52046d5",
    "onlineMeetingInfo": null,
    "members@odata.context": "https://graph.microsoft.com/v1.0/$metadata#chats('19%3Ad0f51aeb0e8e43d0befb24be72b09ea7%40thread.v2')/members",
    "members": [
        {
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
        },
        {
            "@odata.type": "#microsoft.graph.aadUserConversationMember",
            "id": "MCMjMCMjMGY4MWIxZWEtYjg1Ny00YTljLTk5ZWItZTk5OGQ1MjA0NmQ1IyMxOTpkMGY1MWFlYjBlOGU0M2QwYmVmYjI0YmU3MmIwOWVhN0B0aHJlYWQudjIjIzY3MGU2NzU2LTI3MTYtNDBlYi1hNWJkLTI1OTA4NmRlYmUzYw==",
            "roles": [
                "owner"
            ],
            "displayName": "Lidong Tang",
            "visibleHistoryStartDateTime": "2022-05-02T12:49:36.881Z",
            "userId": "670e6756-2716-40eb-a5bd-259086debe3c",
            "email": "Lidong.Tang@BechtleDAI.onmicrosoft.com",
            "tenantId": "0f81b1ea-b857-4a9c-99eb-e998d52046d5"
        },
        {
            "@odata.type": "#microsoft.graph.aadUserConversationMember",
            "id": "MCMjMCMjZGNkMjE5ZGQtYmM2OC00YjliLWJmMGItNGEzM2E3OTZiZTM1IyMxOTpkMGY1MWFlYjBlOGU0M2QwYmVmYjI0YmU3MmIwOWVhN0B0aHJlYWQudjIjIzQ4ZDMxODg3LTVmYWQtNGQ3My1hOWY1LTNjMzU2ZTY4YTAzOA==",
            "roles": [
                "owner"
            ],
            "displayName": "Megan Bowen",
            "visibleHistoryStartDateTime": "2022-05-02T12:49:36.881Z",
            "userId": "48d31887-5fad-4d73-a9f5-3c356e68a038",
            "email": "MeganB@M365x214355.onmicrosoft.com",
            "tenantId": "dcd219dd-bc68-4b9b-bf0b-4a33a796be35"
        },
        {
            "@odata.type": "#microsoft.graph.aadUserConversationMember",
            "id": "MCMjMCMjMGY4MWIxZWEtYjg1Ny00YTljLTk5ZWItZTk5OGQ1MjA0NmQ1IyMxOTpkMGY1MWFlYjBlOGU0M2QwYmVmYjI0YmU3MmIwOWVhN0B0aHJlYWQudjIjI2ZiYWFjYjY5LTE2ODktNDkwMy05OGYyLTcxOTYxZjNiZTA3ZQ==",
            "roles": [
                "owner"
            ],
            "displayName": "Jochen Müller",
            "visibleHistoryStartDateTime": "2022-05-02T12:49:36.881Z",
            "userId": "fbaacb69-1689-4903-98f2-71961f3be07e",
            "email": "JochenMueller@BechtleDAI.onmicrosoft.com",
            "tenantId": "0f81b1ea-b857-4a9c-99eb-e998d52046d5"
        }
    ]
}
```

### Example 4: Get the meeting details of a chat associated with a Microsoft Teams meeting
#### Request
The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_meeting_chat",
  "sampleKeys": ["19:meeting_ZDZlYTYxOWUtYzdlMi00ZmMxLWIxMTAtN2YzODZlZjAxYzI4@thread.v2"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/chats/19:meeting_ZDZlYTYxOWUtYzdlMi00ZmMxLWIxMTAtN2YzODZlZjAxYzI4@thread.v2
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-meeting-chat-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-meeting-chat-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-meeting-chat-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-meeting-chat-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-meeting-chat-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-meeting-chat-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response
The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chat"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "id": "19:meeting_YDZlYTYxOWUtYzdlMi00ZmMxLWIxMTAtN2YzODZlZjAxYzI4@thread.v2",
    "topic": "Test Meeting",
    "createdDateTime": "2021-08-17T12:21:37.322Z",
    "lastUpdatedDateTime": "2021-08-18T00:31:31.817Z",
    "chatType": "meeting",
    "webUrl": "https://teams.microsoft.com/l/chat/19%3Ameeting_YDZlYTYxOWUtYzdlMi00ZmMxLWIxMTAtN2YzODZlZjAxYzI4%40thread.v2/0?tenantId=2432b57b-0abd-43db-aa7b-16eadd115d34",
    "tenantId": "2432b57b-0abd-43db-aa7b-16eadd115d35",
    "onlineMeetingInfo": {
        "calendarEventId": "AAMkADAzMjNhY2NiLWVmNDItNDVjYS05MnFjLTExY2U0ZWMyZTNmZQBGAAAAAAARDMODhhR0TZRGWo9nN0NcBwAmvYmLhDvYR6hCFdQLgxR-AAAAAAENAAAmvYmLhDvYR6hCFdQLgxR-AABkrglJAAA=",
        "joinWebUrl": "https://teams.microsoft.com/l/meetup-join/19%3Ameeting_YDZlYTYxOWUtYzdlMi00ZmMxLWIxMTAtN2YzODZlZjAxYzI4%40thread.v2/0?context=%7b%22Tid%22%3a%222432b57b-0abd-43db-aa7b-16eadd115d34%22%2c%22Oid%22%3a%22bfb5bb25-3a8d-487d-9828-7875ced51a30%22%7d",
        "organizer": {
            "id": "bfb5bb25-3a8d-487d-9828-7875ced51a30",
            "displayName": null,
            "userIdentityType": "aadUser"
        }
    }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get chat",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


