---
title: "Get chat"
description: "Retrieve a single chat."
author: "RamjotSingh"
ms.localizationpriority: high
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 05/23/2024
---

# Get chat

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a single [chat](../resources/chat.md) (without its messages).

This method supports federation. To access a chat, at least one chat member must belong to the tenant the request initiated from.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- { "blockType": "permissions", "name": "chat_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/chat-get-permissions.md)]

> [!NOTE]
> The ChatSettings.Read.Chat, ChatSettings.ReadWrite.Chat, and Chat.Manage.Chat permissions use [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent).

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /me/chats/{chat-id}
GET /users/{user-id | user-principal-name}/chats/{chat-id}
GET /chats/{chat-id}
```

## Optional query parameters

This operation doesn't currently support [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [chat](../resources/chat.md) objects in the response body.

## Examples

### Example 1: Get a group chat
#### Request
The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_group_chat_e1",
  "sampleKeys": ["19:b8577894a63548969c5c92bb9c80c5e1@thread.v2"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/chats/19:b8577894a63548969c5c92bb9c80c5e1@thread.v2
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-group-chat-e1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-group-chat-e1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-group-chat-e1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-group-chat-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-group-chat-e1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-group-chat-e1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-group-chat-e1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-group-chat-e1-python-snippets.md)]
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#chats/$entity",
    "id": "19:b8577894a63548969c5c92bb9c80c5e1@thread.v2",
    "topic": "test group 1",
    "createdDateTime": "2021-04-06T19:49:52.431Z",
    "lastUpdatedDateTime": "2021-04-06T19:54:04.306Z",
    "chatType": "group",
    "webUrl": "https://teams.microsoft.com/l/chat/19%3Ab8577894a63548969c5c92bb9c80c5e1@thread.v2/0?tenantId=b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",
    "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",
    "onlineMeetingInfo": null,
    "createdBy": {
        "application": null,
        "device": null,
        "user": {
            "@odata.type": "#microsoft.graph.teamworkUserIdentity",
            "id": "8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca",
            "displayName": null,
            "userIdentityType": "aadUser",
            "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f"
        }
    },
    "viewpoint": {
        "isHidden": true,
        "lastMessageReadDateTime": "2021-05-06T23:55:07.191Z"
    },
    "isHiddenForAllMembers": false
}
```

### Example 2: Get a user's one on one chat
#### Request
The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_chat_e2",
  "sampleKeys": ["8b081ef6-4792-4def-b2c9-c363a1bf41d5", "19:8b081ef6-4792-4def-b2c9-c363a1bf41d5_877192bd-9183-47d3-a74c-8aa0426716cf@unq.gbl.spaces"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/chats/19:8b081ef6-4792-4def-b2c9-c363a1bf41d5_877192bd-9183-47d3-a74c-8aa0426716cf@unq.gbl.spaces
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-chat-e2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-chat-e2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-chat-e2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-chat-e2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-chat-e2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-chat-e2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-chat-e2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-chat-e2-python-snippets.md)]
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#chats/$entity",
    "id": "19:8b081ef6-4792-4def-b2c9-c363a1bf41d5_877192bd-9183-47d3-a74c-8aa0426716cf@unq.gbl.spaces",
    "topic": null,
    "createdDateTime": "2019-04-18T23:51:42.099Z",
    "lastUpdatedDateTime": "2019-04-18T23:51:43.255Z",
    "chatType": "oneOnOne",
    "webUrl": "https://teams.microsoft.com/l/chat/19%3A8b081ef6-4792-4def-b2c9-c363a1bf41d5_877192bd-9183-47d3-a74c-8aa0426716cf@unq.gbl.spaces/0?tenantId=2432b57b-0abd-43db-aa7b-16eadd115d34",
    "tenantId": "2432b57b-0abd-43db-aa7b-16eadd115d34",
    "onlineMeetingInfo": null,
    "createdBy": {
        "application": null,
        "device": null,
        "user": {
            "@odata.type": "#microsoft.graph.teamworkUserIdentity",
            "id": "8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca",
            "displayName": null,
            "userIdentityType": "aadUser",
            "tenantId": "2432b57b-0abd-43db-aa7b-16eadd115d34"
        }
    },
    "viewpoint": {
        "isHidden": false,
        "lastMessageReadDateTime": "2021-07-06T22:26:27.98Z"
    },
    "isHiddenForAllMembers": false
}
```

### Example 3: Get a chat and all its members
#### Request
The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_chat_withmembers_e3",
  "sampleKeys": ["19:b8577894a63548969c5c92bb9c80c5e1@thread.v2"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/chats/19:b8577894a63548969c5c92bb9c80c5e1@thread.v2?$expand=members
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-chat-withmembers-e3-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-chat-withmembers-e3-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-chat-withmembers-e3-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-chat-withmembers-e3-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-chat-withmembers-e3-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-chat-withmembers-e3-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-chat-withmembers-e3-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-chat-withmembers-e3-python-snippets.md)]
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#chats(members())/$entity",
    "id": "19:b8577894a63548969c5c92bb9c80c5e1@thread.v2",
    "topic": "test group 1",
    "createdDateTime": "2021-04-06T19:49:52.431Z",
    "lastUpdatedDateTime": "2021-04-21T17:13:44.033Z",
    "chatType": "group",
    "webUrl": "https://teams.microsoft.com/l/chat/19%3Ab8577894a63548969c5c92bb9c80c5e1@thread.v2/0?tenantId=b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",
    "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",
    "onlineMeetingInfo": null,
    "createdBy": {
        "application": null,
        "device": null,
        "user": {
            "@odata.type": "#microsoft.graph.teamworkUserIdentity",
            "id": "8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca",
            "displayName": null,
            "userIdentityType": "aadUser",
            "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f"
        }
    },
    "viewpoint": {
        "isHidden": false,
        "lastMessageReadDateTime": "2021-08-09T17:38:24.101Z"
    },
    "isHiddenForAllMembers": false,
    "members": [
        {
            "@odata.type": "#microsoft.graph.aadUserConversationMember",
            "id": "MCMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOTpiODU3Nzg5NGE2MzU0ODk2OWM1YzkyYmI5YzgwYzVlMUB0aHJlYWQudjIjIzhjMGExYTY3LTUwY2UtNDExNC1iYjZjLWRhOWM1ZGJjZjZjYQ==",
            "roles": [
                "owner"
            ],
            "displayName": "John Doe",
            "visibleHistoryStartDateTime": "0001-01-01T00:00:00Z",
            "userId": "8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca",
            "email": "john@contoso.com",
            "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f"
        },
        {
            "@odata.type": "#microsoft.graph.aadUserConversationMember",
            "id": "MCMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOTpiODU3Nzg5NGE2MzU0ODk2OWM1YzkyYmI5YzgwYzVlMUB0aHJlYWQudjIjIzQ1OTVkMmYyLTdiMzEtNDQ2Yy04NGZkLTliNzk1ZTYzMTE0Yg==",
            "roles": [
                "owner"
            ],
            "displayName": "Test User 1",
            "visibleHistoryStartDateTime": "0001-01-01T00:00:00Z",
            "userId": "4595d2f2-7b31-446c-84fd-9b795e63114b",
            "email": "testuser1@contoso.com",
            "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f"
        },
        {
            "@odata.type": "#microsoft.graph.aadUserConversationMember",
            "id": "MCMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOTpiODU3Nzg5NGE2MzU0ODk2OWM1YzkyYmI5YzgwYzVlMUB0aHJlYWQudjIjIzgyZmU3NzU4LTViYjMtNGYwZC1hNDNmLWU1NTVmZDM5OWM2Zg==",
            "roles": [
                "owner"
            ],
            "displayName": "Test User 2",
            "visibleHistoryStartDateTime": "0001-01-01T00:00:00Z",
            "userId": "82fe7758-5bb3-4f0d-a43f-e555fd399c6f",
            "email": "testuser2@contoso.com",
            "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f"
        },
        {
            "@odata.type": "#microsoft.graph.aadUserConversationMember",
            "id": "MCMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOTpiODU3Nzg5NGE2MzU0ODk2OWM1YzkyYmI5YzgwYzVlMUB0aHJlYWQudjIjIzJjOGQyYjVjLTE4NDktNDA2Ni1iNTdkLWU3YTBlOWU0NGVjOA==",
            "roles": [
                "owner"
            ],
            "displayName": "Test User 3",
            "visibleHistoryStartDateTime": "0001-01-01T00:00:00Z",
            "userId": "2c8d2b5c-1849-4066-b57d-e7a0e9e44ec8",
            "email": "testuser3@contoso.com",
            "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f"
        },
        {
            "@odata.type": "#microsoft.graph.aadUserConversationMember",
            "id": "MCMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOTpiODU3Nzg5NGE2MzU0ODk2OWM1YzkyYmI5YzgwYzVlMUB0aHJlYWQudjIjIzhlYTBlMzhiLWVmYjMtNDc1Ny05MjRhLTVmOTQwNjFjZjhjMg==",
            "roles": [
                "owner"
            ],
            "displayName": "Test User 4",
            "visibleHistoryStartDateTime": "2021-04-20T17:13:43.715Z",
            "userId": "8ea0e38b-efb3-4757-924a-5f94061cf8c2",
            "email": "testuser4@contoso.com",
            "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f"
        }
    ]
}
```

### Example 4: Get the meeting details of a chat associated with a Microsoft Teams meeting
#### Request
The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_meeting_chat_e4",
  "sampleKeys": ["19:meeting_ZDZlYTYxOWUtYzdlMi00ZmMxLWIxMTAtN2YzODZlZjAxYzI4@thread.v2"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/chats/19:meeting_ZDZlYTYxOWUtYzdlMi00ZmMxLWIxMTAtN2YzODZlZjAxYzI4@thread.v2
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-meeting-chat-e4-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-meeting-chat-e4-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-meeting-chat-e4-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-meeting-chat-e4-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-meeting-chat-e4-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-meeting-chat-e4-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-meeting-chat-e4-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-meeting-chat-e4-python-snippets.md)]
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
    "viewpoint": {
        "isHidden": false,
        "lastMessageReadDateTime": "2021-08-17T18:04:32.583Z"
    },
    "isHiddenForAllMembers": false,
    "onlineMeetingInfo": {
        "calendarEventId": "AAMkADAzMjNhY2NiLWVmNDItNDVjYS05MnFjLTExY2U0ZWMyZTNmZQBGAAAAAAARDMODhhR0TZRGWo9nN0NcBwAmvYmLhDvYR6hCFdQLgxR-AAAAAAENAAAmvYmLhDvYR6hCFdQLgxR-AABkrglJAAA=",
        "joinWebUrl": "https://teams.microsoft.com/l/meetup-join/19%3Ameeting_YDZlYTYxOWUtYzdlMi00ZmMxLWIxMTAtN2YzODZlZjAxYzI4%40thread.v2/0?context=%7b%22Tid%22%3a%222432b57b-0abd-43db-aa7b-16eadd115d34%22%2c%22Oid%22%3a%22bfb5bb25-3a8d-487d-9828-7875ced51a30%22%7d",
        "organizer": {
            "id": "bfb5bb25-3a8d-487d-9828-7875ced51a30",
            "displayName": null,
            "userIdentityType": "aadUser"
        }
    },
    "createdBy": {
        "application": null,
        "device": null,
        "user": {
            "@odata.type": "#microsoft.graph.teamworkUserIdentity",
            "id": "bfb5bb25-3a8d-487d-9828-7875ced51a30",
            "displayName": null,
            "userIdentityType": "aadUser",
            "tenantId": "2432b57b-0abd-43db-aa7b-16eadd115d34"
        }
    }
}
```

### Example 5: Get the chat along with the preview of the last message sent in the chat
#### Request
The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_meeting_chat_e5",
  "sampleKeys": ["19:ebe3857aa388434bab0cad9d2e09f4de@thread.v2"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/chats/19:ebe3857aa388434bab0cad9d2e09f4de@thread.v2?$expand=lastMessagePreview
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-meeting-chat-e5-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-meeting-chat-e5-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-meeting-chat-e5-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-meeting-chat-e5-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-meeting-chat-e5-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-meeting-chat-e5-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-meeting-chat-e5-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-meeting-chat-e5-python-snippets.md)]
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#chats(lastMessagePreview())/$entity",
    "id": "19:ebe3857aa388434bab0cad9d2e09f4de@thread.v2",
    "topic": "Demo Group Chat",
    "createdDateTime": "2021-04-08T16:00:53.563Z",
    "lastUpdatedDateTime": "2022-09-08T23:11:54.246Z",
    "chatType": "group",
    "webUrl": "https://teams.microsoft.com/l/chat/19%3Aebe3857aa388434bab0cad9d2e09f4de%40thread.v2/0?tenantId=2432b57b-0abd-43db-aa7b-16eadd115d34",
    "tenantId": "2432b57b-0abd-43db-aa7b-16eadd115d34",
    "onlineMeetingInfo": null,
    "createdBy": {
        "application": null,
        "device": null,
        "user": {
            "@odata.type": "#microsoft.graph.teamworkUserIdentity",
            "id": "bfb5bb25-3a8d-487d-9828-7875ced51a30",
            "displayName": null,
            "userIdentityType": "aadUser",
            "tenantId": "2432b57b-0abd-43db-aa7b-16eadd115d34"
        }
    },
    "viewpoint": {
        "isHidden": true,
        "lastMessageReadDateTime": "2022-09-08T23:11:54.353Z"
    },
    "isHiddenForAllMembers": false,
    "lastMessagePreview@odata.context": "https://graph.microsoft.com/beta/$metadata#chats('19%3Aebe3857aa388434bab0cad9d2e09f4de%40thread.v2')/lastMessagePreview/$entity",
    "lastMessagePreview": {
        "id": "1662678714353",
        "createdDateTime": "2022-09-08T23:11:54.353Z",
        "isDeleted": false,
        "messageType": "systemEventMessage",
        "from": null,
        "body": {
            "contentType": "html",
            "content": "<systemEventMessage/>"
        },
        "eventDetail": {
            "@odata.type": "#microsoft.graph.membersAddedEventMessageDetail",
            "visibleHistoryStartDateTime": "0001-01-01T00:00:00Z",
            "members": [
                {
                    "id": "ee9f3754-62e1-4034-ad10-97940ef7f709",
                    "displayName": null,
                    "userIdentityType": "aadUser"
                }
            ],
            "initiator": {
                "application": null,
                "device": null,
                "user": {
                    "id": "bfb5bb25-3a8d-487d-9828-7875ced51a30",
                    "displayName": null,
                    "userIdentityType": "aadUser"
                }
            }
        }
    }
}
```

## Related content

* [Microsoft Graph service-specific throttling limits](/graph/throttling-limits#microsoft-teams-service-limits)

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
