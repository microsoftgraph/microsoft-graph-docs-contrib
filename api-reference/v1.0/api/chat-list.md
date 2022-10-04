---
title: "List chats"
description: "Retrieve the list of chats for a user."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# List chats

Namespace: microsoft.graph

Retrieve the list of [chats](../resources/chat.md) that the user is part of.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Chat.ReadBasic, Chat.Read, Chat.ReadWrite |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Chat.ReadBasic.All*, Chat.Read.All*, Chat.ReadWrite.All* |

\* This scenario is only supported for the following call: `GET /users/{user-id | user-principal-name}/chats`

## HTTP request

To get the signed-in user's chats in the organization using delegated permission:
<!-- { "blockType": "ignored" } -->
```http
GET /chats
```

To get the chats of the specified user (who is the signed-in user) in the organization using delegated permission:
<!-- { "blockType": "ignored" } -->
```http
GET /me/chats
GET /users/{user-id | user-principal-name}/chats
```

To get the chats of the specified user (who may not be signed in or is different from the signed-in user) in the organization, using application permission:
<!-- { "blockType": "ignored" } -->
```http
GET /users/{user-id | user-principal-name}/chats
```

## Optional query parameters

This method supports the following [OData query parameters](/graph/query-parameters).

| Name      | Description          |
|:----------|:---------------------|
| [$expand](/graph/query-parameters#expand-parameter)| Currently supports **members** and **lastMessagePreview** properties. |
| [$top](/graph/query-parameters#top-parameter)| Controls the number of items per response. Maximum allowed `$top` value is 50. |
| [$filter](/graph/query-parameters#filter-parameter)| Filters results. |
| [$orderBy](/graph/query-parameters#orderby-parameter)  | Currently supports **lastMessagePreview/createdDateTime** in descending order. Ascending order is currently not supported.|

The other [OData query parameters](/graph/query-parameters) are not currently supported.

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [chat](../resources/chat.md) objects in the response body.

## Example

### Example 1: List all chats

#### Request

Here is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_chats"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users/48d31887-5fad-4d73-a9f5-3c356e68a038/chats
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-chats-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-chats-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-chats-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-chats-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-chats-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-chats-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

Here is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chat",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#chats",
    "@odata.count": 3,
    "value": [
        {
            "id": "19:meeting_MjdhNjM4YzUtYzExZi00OTFkLTkzZTAtNTVlNmZmMDhkNGU2@thread.v2",
            "topic": "Meeting chat sample",
            "createdDateTime": "2020-12-08T23:53:05.801Z",
            "lastUpdatedDateTime": "2020-12-08T23:58:32.511Z",
            "chatType": "meeting"
        },
        {
            "id": "19:561082c0f3f847a58069deb8eb300807@thread.v2",
            "topic": "Group chat sample",
            "createdDateTime": "2020-12-03T19:41:07.054Z",
            "lastUpdatedDateTime": "2020-12-08T23:53:11.012Z",
            "chatType": "group"
        },
        {
            "id": "19:d74fc2ed-cb0e-4288-a219-b5c71abaf2aa_8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca@unq.gbl.spaces",
            "topic": null,
            "createdDateTime": "2020-12-04T23:10:28.51Z",
            "lastUpdatedDateTime": "2020-12-04T23:10:36.925Z",
            "chatType": "oneOnOne"
        }
    ]
}
```

### Example 2: List all chats along with the members of each chat
#### Request

Here is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_chats_expand_members"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users/48d31887-5fad-4d73-a9f5-3c356e68a038/chats?$expand=members
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-chats-expand-members-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-chats-expand-members-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-chats-expand-members-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-chats-expand-members-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-chats-expand-members-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-chats-expand-members-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

Here is an example of the response. 

> [!NOTE]
> The membership IDs returned by the server must be treated as opaque strings. The client shouldn't try to parse or make any assumptions about these resource IDs.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chat",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#chats(members())",
    "@odata.count": 20,
    "@odata.nextLink": "https://graph.microsoft.com/v1.0/users/48d31887-5fad-4d73-a9f5-3c356e68a038/chats?$expand=members&$skiptoken=1.kscDYs0BEcYAAAEU8P8DgapQcm9wZXJ0aWVzgqlTeW5jU3RhdGXZ6GV5SmtaV3hwZG1WeVpXUlRaV2R0Wlc1MGN5STZXM3NpYzNSaGNuUWlPaUl5TURJeUxUQTBMVEkxVkRBNU9qVTJPakF5TGpNMk5Dc3dNRG93TUNJc0ltVnVaQ0k2SWpJd01qSXRNRGN0TWpCVU1EWTZNek02TlRJdU1EazRLekF3T2pBd0luMWRMQ0o2WlhKdlRFMVRWRVJsYkdsMlpYSmxaRk5sWjIxbGJuUnpJanBiWFN3aWMyOXlkRTl5WkdWeUlqb3dMQ0pwYm1Oc2RXUmxXbVZ5YjB4TlUxUWlPbVpoYkhObGZRPT2sTGFzdFBhZ2VTaXplojIw",
    "value": [
        {
            "id": "19:48d31887-5fad-4d73-a9f5-3c356e68a038_be302b8d-ecaa-44fe-b3af-1fd614d0d23a@unq.gbl.spaces",
            "topic": "Group chat title",
            "createdDateTime": "2022-07-20T05:53:19.421Z",
            "lastUpdatedDateTime": "2022-07-20T05:53:19.421Z",
            "chatType": "oneOnOne",
            "webUrl": "https://teams.microsoft.com/l/chat/19%3A48d31887-5fad-4d73-a9f5-3c356e68a038_be302b8d-ecaa-44fe-b3af-1fd614d0d23a%40unq.gbl.spaces/0?tenantId=9d143c90-308b-45c4-926a-c972e2f01269",
            "tenantId": "9d143c90-308b-45c4-926a-c972e2f01269",
            "onlineMeetingInfo": null,
            "members@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('48d31887-5fad-4d73-a9f5-3c356e68a038')/chats('19%3A48d31887-5fad-4d73-a9f5-3c356e68a038_be302b8d-ecaa-44fe-b3af-1fd614d0d23a%40unq.gbl.spaces')/members",
            "members": [
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOWQxNDNjOTAtMzA4Yi00NWM0LTkyNmEtYzk3MmUyZjAxMjY5IyMxOTo0OGQzMTg4Ny01ZmFkLTRkNzMtYTlmNS0zYzM1NmU2OGEwMzhfYmUzMDJiOGQtZWNhYS00NGZlLWIzYWYtMWZkNjE0ZDBkMjNhQHVucS5nYmwuc3BhY2VzIyNiZTMwMmI4ZC1lY2FhLTQ0ZmUtYjNhZi0xZmQ2MTRkMGQyM2E=",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Visions Licenses",
                    "visibleHistoryStartDateTime": "2022-07-20T05:53:17.654Z",
                    "userId": "be302b8d-ecaa-44fe-b3af-1fd614d0d23a",
                    "email": "VisionsLicenses@visionssoftwarein.onmicrosoft.com",
                    "tenantId": "9d143c90-308b-45c4-926a-c972e2f01269"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjZGNkMjE5ZGQtYmM2OC00YjliLWJmMGItNGEzM2E3OTZiZTM1IyMxOTo0OGQzMTg4Ny01ZmFkLTRkNzMtYTlmNS0zYzM1NmU2OGEwMzhfYmUzMDJiOGQtZWNhYS00NGZlLWIzYWYtMWZkNjE0ZDBkMjNhQHVucS5nYmwuc3BhY2VzIyM0OGQzMTg4Ny01ZmFkLTRkNzMtYTlmNS0zYzM1NmU2OGEwMzg=",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Megan Bowen",
                    "visibleHistoryStartDateTime": "2022-07-20T05:53:17.654Z",
                    "userId": "48d31887-5fad-4d73-a9f5-3c356e68a038",
                    "email": "MeganB@M365x214355.onmicrosoft.com",
                    "tenantId": "dcd219dd-bc68-4b9b-bf0b-4a33a796be35"
                }
            ]
        },
        {
            "id": "19:09ddc990-3821-4ceb-8019-24d39998f93e_48d31887-5fad-4d73-a9f5-3c356e68a038@unq.gbl.spaces",
            "topic": null,
            "createdDateTime": "2021-11-25T01:56:31.657Z",
            "lastUpdatedDateTime": "2022-07-03T00:00:57.596Z",
            "chatType": "oneOnOne",
            "webUrl": "https://teams.microsoft.com/l/chat/19%3A09ddc990-3821-4ceb-8019-24d39998f93e_48d31887-5fad-4d73-a9f5-3c356e68a038%40unq.gbl.spaces/0?tenantId=b3eed7aa-69ce-49cd-8c52-5c0d5bda3eea",
            "tenantId": "b3eed7aa-69ce-49cd-8c52-5c0d5bda3eea",
            "onlineMeetingInfo": null,
            "members@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('48d31887-5fad-4d73-a9f5-3c356e68a038')/chats('19%3A09ddc990-3821-4ceb-8019-24d39998f93e_48d31887-5fad-4d73-a9f5-3c356e68a038%40unq.gbl.spaces')/members",
            "members": [
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjZGNkMjE5ZGQtYmM2OC00YjliLWJmMGItNGEzM2E3OTZiZTM1IyMxOTowOWRkYzk5MC0zODIxLTRjZWItODAxOS0yNGQzOTk5OGY5M2VfNDhkMzE4ODctNWZhZC00ZDczLWE5ZjUtM2MzNTZlNjhhMDM4QHVucS5nYmwuc3BhY2VzIyM0OGQzMTg4Ny01ZmFkLTRkNzMtYTlmNS0zYzM1NmU2OGEwMzg=",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Megan Bowen",
                    "visibleHistoryStartDateTime": "2021-11-25T01:56:31.313Z",
                    "userId": "48d31887-5fad-4d73-a9f5-3c356e68a038",
                    "email": "MeganB@M365x214355.onmicrosoft.com",
                    "tenantId": "dcd219dd-bc68-4b9b-bf0b-4a33a796be35"
                }
            ]
        },
        {
            "id": "19:48d31887-5fad-4d73-a9f5-3c356e68a038_7f7e788e-c5a0-4923-b3f6-057d06e1e566@unq.gbl.spaces",
            "topic": null,
            "createdDateTime": "2022-06-30T07:12:53.818Z",
            "lastUpdatedDateTime": "2022-06-30T07:12:53.818Z",
            "chatType": "oneOnOne",
            "webUrl": "https://teams.microsoft.com/l/chat/19%3A48d31887-5fad-4d73-a9f5-3c356e68a038_7f7e788e-c5a0-4923-b3f6-057d06e1e566%40unq.gbl.spaces/0?tenantId=f1a060cc-7226-4b9f-9210-f96d56788c10",
            "tenantId": "f1a060cc-7226-4b9f-9210-f96d56788c10",
            "onlineMeetingInfo": null,
            "members@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('48d31887-5fad-4d73-a9f5-3c356e68a038')/chats('19%3A48d31887-5fad-4d73-a9f5-3c356e68a038_7f7e788e-c5a0-4923-b3f6-057d06e1e566%40unq.gbl.spaces')/members",
            "members": [
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjZGNkMjE5ZGQtYmM2OC00YjliLWJmMGItNGEzM2E3OTZiZTM1IyMxOTo0OGQzMTg4Ny01ZmFkLTRkNzMtYTlmNS0zYzM1NmU2OGEwMzhfN2Y3ZTc4OGUtYzVhMC00OTIzLWIzZjYtMDU3ZDA2ZTFlNTY2QHVucS5nYmwuc3BhY2VzIyM0OGQzMTg4Ny01ZmFkLTRkNzMtYTlmNS0zYzM1NmU2OGEwMzg=",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Megan Bowen",
                    "visibleHistoryStartDateTime": "0001-01-01T00:00:00Z",
                    "userId": "48d31887-5fad-4d73-a9f5-3c356e68a038",
                    "email": "MeganB@M365x214355.onmicrosoft.com",
                    "tenantId": "dcd219dd-bc68-4b9b-bf0b-4a33a796be35"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjZjFhMDYwY2MtNzIyNi00YjlmLTkyMTAtZjk2ZDU2Nzg4YzEwIyMxOTo0OGQzMTg4Ny01ZmFkLTRkNzMtYTlmNS0zYzM1NmU2OGEwMzhfN2Y3ZTc4OGUtYzVhMC00OTIzLWIzZjYtMDU3ZDA2ZTFlNTY2QHVucS5nYmwuc3BhY2VzIyM3ZjdlNzg4ZS1jNWEwLTQ5MjMtYjNmNi0wNTdkMDZlMWU1NjY=",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Nir Ben Haroe",
                    "visibleHistoryStartDateTime": "0001-01-01T00:00:00Z",
                    "userId": "7f7e788e-c5a0-4923-b3f6-057d06e1e566",
                    "email": "nir@securityjoes.com",
                    "tenantId": "f1a060cc-7226-4b9f-9210-f96d56788c10"
                }
            ]
        },
        {
            "id": "19:48d31887-5fad-4d73-a9f5-3c356e68a038_f13e6d55-b99f-4beb-a588-bedd282b4fde@unq.gbl.spaces",
            "topic": null,
            "createdDateTime": "2022-06-10T11:03:00.341Z",
            "lastUpdatedDateTime": "2022-06-10T11:03:00.341Z",
            "chatType": "oneOnOne",
            "webUrl": "https://teams.microsoft.com/l/chat/19%3A48d31887-5fad-4d73-a9f5-3c356e68a038_f13e6d55-b99f-4beb-a588-bedd282b4fde%40unq.gbl.spaces/0?tenantId=fbea9b1e-0380-4810-9881-ed3a44cecd2f",
            "tenantId": "fbea9b1e-0380-4810-9881-ed3a44cecd2f",
            "onlineMeetingInfo": null,
            "members@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('48d31887-5fad-4d73-a9f5-3c356e68a038')/chats('19%3A48d31887-5fad-4d73-a9f5-3c356e68a038_f13e6d55-b99f-4beb-a588-bedd282b4fde%40unq.gbl.spaces')/members",
            "members": [
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjZGNkMjE5ZGQtYmM2OC00YjliLWJmMGItNGEzM2E3OTZiZTM1IyMxOTo0OGQzMTg4Ny01ZmFkLTRkNzMtYTlmNS0zYzM1NmU2OGEwMzhfZjEzZTZkNTUtYjk5Zi00YmViLWE1ODgtYmVkZDI4MmI0ZmRlQHVucS5nYmwuc3BhY2VzIyM0OGQzMTg4Ny01ZmFkLTRkNzMtYTlmNS0zYzM1NmU2OGEwMzg=",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Megan Bowen",
                    "visibleHistoryStartDateTime": "0001-01-01T00:00:00Z",
                    "userId": "48d31887-5fad-4d73-a9f5-3c356e68a038",
                    "email": "MeganB@M365x214355.onmicrosoft.com",
                    "tenantId": "dcd219dd-bc68-4b9b-bf0b-4a33a796be35"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjZmJlYTliMWUtMDM4MC00ODEwLTk4ODEtZWQzYTQ0Y2VjZDJmIyMxOTo0OGQzMTg4Ny01ZmFkLTRkNzMtYTlmNS0zYzM1NmU2OGEwMzhfZjEzZTZkNTUtYjk5Zi00YmViLWE1ODgtYmVkZDI4MmI0ZmRlQHVucS5nYmwuc3BhY2VzIyNmMTNlNmQ1NS1iOTlmLTRiZWItYTU4OC1iZWRkMjgyYjRmZGU=",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Developer desginer",
                    "visibleHistoryStartDateTime": "0001-01-01T00:00:00Z",
                    "userId": "f13e6d55-b99f-4beb-a588-bedd282b4fde",
                    "email": "Developer@2z5l84.onmicrosoft.com",
                    "tenantId": "fbea9b1e-0380-4810-9881-ed3a44cecd2f"
                }
            ]
        },
        {
            "id": "19:48d31887-5fad-4d73-a9f5-3c356e68a038_d0d939d5-edca-47cc-993e-782e66aec9c7@unq.gbl.spaces",
            "topic": null,
            "createdDateTime": "2022-06-02T15:01:19.871Z",
            "lastUpdatedDateTime": "2022-06-02T15:01:19.871Z",
            "chatType": "oneOnOne",
            "webUrl": "https://teams.microsoft.com/l/chat/19%3A48d31887-5fad-4d73-a9f5-3c356e68a038_d0d939d5-edca-47cc-993e-782e66aec9c7%40unq.gbl.spaces/0?tenantId=dcd219dd-bc68-4b9b-bf0b-4a33a796be35",
            "tenantId": "dcd219dd-bc68-4b9b-bf0b-4a33a796be35",
            "onlineMeetingInfo": null,
            "members@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('48d31887-5fad-4d73-a9f5-3c356e68a038')/chats('19%3A48d31887-5fad-4d73-a9f5-3c356e68a038_d0d939d5-edca-47cc-993e-782e66aec9c7%40unq.gbl.spaces')/members",
            "members": [
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjZGNkMjE5ZGQtYmM2OC00YjliLWJmMGItNGEzM2E3OTZiZTM1IyMxOTo0OGQzMTg4Ny01ZmFkLTRkNzMtYTlmNS0zYzM1NmU2OGEwMzhfZDBkOTM5ZDUtZWRjYS00N2NjLTk5M2UtNzgyZTY2YWVjOWM3QHVucS5nYmwuc3BhY2VzIyM0OGQzMTg4Ny01ZmFkLTRkNzMtYTlmNS0zYzM1NmU2OGEwMzg=",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Megan Bowen",
                    "visibleHistoryStartDateTime": "0001-01-01T00:00:00Z",
                    "userId": "48d31887-5fad-4d73-a9f5-3c356e68a038",
                    "email": "MeganB@M365x214355.onmicrosoft.com",
                    "tenantId": "dcd219dd-bc68-4b9b-bf0b-4a33a796be35"
                }
            ]
        },
        {
            "id": "19:48d31887-5fad-4d73-a9f5-3c356e68a038_b7450e02-a648-481b-8e85-5828a9ea5053@unq.gbl.spaces",
            "topic": null,
            "createdDateTime": "2022-05-04T12:56:46.954Z",
            "lastUpdatedDateTime": "2022-05-04T12:56:46.954Z",
            "chatType": "oneOnOne",
            "webUrl": "https://teams.microsoft.com/l/chat/19%3A48d31887-5fad-4d73-a9f5-3c356e68a038_b7450e02-a648-481b-8e85-5828a9ea5053%40unq.gbl.spaces/0?tenantId=72f988bf-86f1-41af-91ab-2d7cd011db47",
            "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
            "onlineMeetingInfo": null,
            "members@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('48d31887-5fad-4d73-a9f5-3c356e68a038')/chats('19%3A48d31887-5fad-4d73-a9f5-3c356e68a038_b7450e02-a648-481b-8e85-5828a9ea5053%40unq.gbl.spaces')/members",
            "members": [
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjZGNkMjE5ZGQtYmM2OC00YjliLWJmMGItNGEzM2E3OTZiZTM1IyMxOTo0OGQzMTg4Ny01ZmFkLTRkNzMtYTlmNS0zYzM1NmU2OGEwMzhfYjc0NTBlMDItYTY0OC00ODFiLThlODUtNTgyOGE5ZWE1MDUzQHVucS5nYmwuc3BhY2VzIyM0OGQzMTg4Ny01ZmFkLTRkNzMtYTlmNS0zYzM1NmU2OGEwMzg=",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Megan Bowen",
                    "visibleHistoryStartDateTime": "0001-01-01T00:00:00Z",
                    "userId": "48d31887-5fad-4d73-a9f5-3c356e68a038",
                    "email": "MeganB@M365x214355.onmicrosoft.com",
                    "tenantId": "dcd219dd-bc68-4b9b-bf0b-4a33a796be35"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjNzJmOTg4YmYtODZmMS00MWFmLTkxYWItMmQ3Y2QwMTFkYjQ3IyMxOTo0OGQzMTg4Ny01ZmFkLTRkNzMtYTlmNS0zYzM1NmU2OGEwMzhfYjc0NTBlMDItYTY0OC00ODFiLThlODUtNTgyOGE5ZWE1MDUzQHVucS5nYmwuc3BhY2VzIyNiNzQ1MGUwMi1hNjQ4LTQ4MWItOGU4NS01ODI4YTllYTUwNTM=",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Nickii Miaro",
                    "visibleHistoryStartDateTime": "0001-01-01T00:00:00Z",
                    "userId": "b7450e02-a648-481b-8e85-5828a9ea5053",
                    "email": "cmiaro@microsoft.com",
                    "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47"
                }
            ]
        },
        {
            "id": "19:d0f51aeb0e8e43d0befb24be72b09ea7@thread.v2",
            "topic": "Test Agent Group for Chatbot",
            "createdDateTime": "2022-05-02T12:49:37.121Z",
            "lastUpdatedDateTime": "2022-05-02T13:20:52.72Z",
            "chatType": "group",
            "webUrl": "https://teams.microsoft.com/l/chat/19%3Ad0f51aeb0e8e43d0befb24be72b09ea7%40thread.v2/0?tenantId=0f81b1ea-b857-4a9c-99eb-e998d52046d5",
            "tenantId": "0f81b1ea-b857-4a9c-99eb-e998d52046d5",
            "onlineMeetingInfo": null,
            "members@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('48d31887-5fad-4d73-a9f5-3c356e68a038')/chats('19%3Ad0f51aeb0e8e43d0befb24be72b09ea7%40thread.v2')/members",
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
        },
        {
            "id": "19:48d31887-5fad-4d73-a9f5-3c356e68a038_d9f6202c-15e0-4b40-93d2-234f33b2f94f@unq.gbl.spaces",
            "topic": null,
            "createdDateTime": "2022-05-02T11:38:33.763Z",
            "lastUpdatedDateTime": "2022-05-02T11:38:33.763Z",
            "chatType": "oneOnOne",
            "webUrl": "https://teams.microsoft.com/l/chat/19%3A48d31887-5fad-4d73-a9f5-3c356e68a038_d9f6202c-15e0-4b40-93d2-234f33b2f94f%40unq.gbl.spaces/0?tenantId=0f81b1ea-b857-4a9c-99eb-e998d52046d5",
            "tenantId": "0f81b1ea-b857-4a9c-99eb-e998d52046d5",
            "onlineMeetingInfo": null,
            "members@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('48d31887-5fad-4d73-a9f5-3c356e68a038')/chats('19%3A48d31887-5fad-4d73-a9f5-3c356e68a038_d9f6202c-15e0-4b40-93d2-234f33b2f94f%40unq.gbl.spaces')/members",
            "members": [
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjMGY4MWIxZWEtYjg1Ny00YTljLTk5ZWItZTk5OGQ1MjA0NmQ1IyMxOTo0OGQzMTg4Ny01ZmFkLTRkNzMtYTlmNS0zYzM1NmU2OGEwMzhfZDlmNjIwMmMtMTVlMC00YjQwLTkzZDItMjM0ZjMzYjJmOTRmQHVucS5nYmwuc3BhY2VzIyNkOWY2MjAyYy0xNWUwLTRiNDAtOTNkMi0yMzRmMzNiMmY5NGY=",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Pit Ogermann",
                    "visibleHistoryStartDateTime": "2022-05-02T11:38:33.27Z",
                    "userId": "d9f6202c-15e0-4b40-93d2-234f33b2f94f",
                    "email": "PitOgermann@BechtleDAI.onmicrosoft.com",
                    "tenantId": "0f81b1ea-b857-4a9c-99eb-e998d52046d5"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjZGNkMjE5ZGQtYmM2OC00YjliLWJmMGItNGEzM2E3OTZiZTM1IyMxOTo0OGQzMTg4Ny01ZmFkLTRkNzMtYTlmNS0zYzM1NmU2OGEwMzhfZDlmNjIwMmMtMTVlMC00YjQwLTkzZDItMjM0ZjMzYjJmOTRmQHVucS5nYmwuc3BhY2VzIyM0OGQzMTg4Ny01ZmFkLTRkNzMtYTlmNS0zYzM1NmU2OGEwMzg=",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Megan Bowen",
                    "visibleHistoryStartDateTime": "2022-05-02T11:38:33.27Z",
                    "userId": "48d31887-5fad-4d73-a9f5-3c356e68a038",
                    "email": "MeganB@M365x214355.onmicrosoft.com",
                    "tenantId": "dcd219dd-bc68-4b9b-bf0b-4a33a796be35"
                }
            ]
        },
        {
            "id": "19:56aa2204a29f45f091a356515a97d1e6@thread.v2",
            "topic": "[OMS-645] ATV Test Tickets",
            "createdDateTime": "2022-03-30T07:13:44.261Z",
            "lastUpdatedDateTime": "2022-04-29T13:48:31.021Z",
            "chatType": "group",
            "webUrl": "https://teams.microsoft.com/l/chat/19%3A56aa2204a29f45f091a356515a97d1e6%40thread.v2/0?tenantId=8d237650-cdc1-40e1-899c-5601e055f3fe",
            "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe",
            "onlineMeetingInfo": null,
            "members@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('48d31887-5fad-4d73-a9f5-3c356e68a038')/chats('19%3A56aa2204a29f45f091a356515a97d1e6%40thread.v2')/members",
            "members": [
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTo1NmFhMjIwNGEyOWY0NWYwOTFhMzU2NTE1YTk3ZDFlNkB0aHJlYWQudjIjIzE3ZTk1MjZjLTIyODYtNDFhMS1hZWViLTRiYWRlZTc2NjA2Mw==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "SA-TeamsAdconnect",
                    "visibleHistoryStartDateTime": "2022-03-30T07:13:44.118Z",
                    "userId": "17e9526c-2286-41a1-aeeb-4badee766063",
                    "email": "SA-TeamsAdconnect@rtlgroup.onmicrosoft.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTo1NmFhMjIwNGEyOWY0NWYwOTFhMzU2NTE1YTk3ZDFlNkB0aHJlYWQudjIjIzM3MjBiNWE3LTg1NzktNDM0My05NmJmLTQzNDIxNGQ2NTI2ZA==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Mhamdi Wafa",
                    "visibleHistoryStartDateTime": "2022-03-30T07:13:44.118Z",
                    "userId": "3720b5a7-8579-4343-96bf-434214d6526d",
                    "email": "wmhamdi@rtladconnect.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjZGNkMjE5ZGQtYmM2OC00YjliLWJmMGItNGEzM2E3OTZiZTM1IyMxOTo1NmFhMjIwNGEyOWY0NWYwOTFhMzU2NTE1YTk3ZDFlNkB0aHJlYWQudjIjIzQ4ZDMxODg3LTVmYWQtNGQ3My1hOWY1LTNjMzU2ZTY4YTAzOA==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Megan Bowen",
                    "visibleHistoryStartDateTime": "2022-03-30T07:13:44.118Z",
                    "userId": "48d31887-5fad-4d73-a9f5-3c356e68a038",
                    "email": "MeganB@M365x214355.onmicrosoft.com",
                    "tenantId": "dcd219dd-bc68-4b9b-bf0b-4a33a796be35"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTo1NmFhMjIwNGEyOWY0NWYwOTFhMzU2NTE1YTk3ZDFlNkB0aHJlYWQudjIjIzcxZjJjYzdmLTQwYWYtNDhkOS05ZDk2LTVhYTMzYjkxYmRkOA==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Berrahal Mariem [RTL-AdConnect]",
                    "visibleHistoryStartDateTime": "2022-03-30T07:13:44.118Z",
                    "userId": "71f2cc7f-40af-48d9-9d96-5aa33b91bdd8",
                    "email": "mberrahal@rtladconnect.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTo1NmFhMjIwNGEyOWY0NWYwOTFhMzU2NTE1YTk3ZDFlNkB0aHJlYWQudjIjIzc2NTgyYTM2LWIxZWEtNGE3OS1hNmU0LTljMGI2ZTVjMDVjNQ==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "El Qasry Abdelwahed",
                    "visibleHistoryStartDateTime": "2022-04-29T13:48:30.935Z",
                    "userId": "76582a36-b1ea-4a79-a6e4-9c0b6e5c05c5",
                    "email": "aelqasry@rtladconnect.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                }
            ]
        },
        {
            "id": "19:9aa6e3e23be04d43b8f0337a83622d51@thread.v2",
            "topic": "[OMS-687] Mon Lit Cabane DE",
            "createdDateTime": "2022-04-27T13:56:49.149Z",
            "lastUpdatedDateTime": "2022-04-27T13:56:49.149Z",
            "chatType": "group",
            "webUrl": "https://teams.microsoft.com/l/chat/19%3A9aa6e3e23be04d43b8f0337a83622d51%40thread.v2/0?tenantId=8d237650-cdc1-40e1-899c-5601e055f3fe",
            "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe",
            "onlineMeetingInfo": null,
            "members@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('48d31887-5fad-4d73-a9f5-3c356e68a038')/chats('19%3A9aa6e3e23be04d43b8f0337a83622d51%40thread.v2')/members",
            "members": [
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTo5YWE2ZTNlMjNiZTA0ZDQzYjhmMDMzN2E4MzYyMmQ1MUB0aHJlYWQudjIjIzE3ZTk1MjZjLTIyODYtNDFhMS1hZWViLTRiYWRlZTc2NjA2Mw==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "SA-TeamsAdconnect",
                    "visibleHistoryStartDateTime": "2022-04-27T13:56:48.999Z",
                    "userId": "17e9526c-2286-41a1-aeeb-4badee766063",
                    "email": "SA-TeamsAdconnect@rtlgroup.onmicrosoft.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjZGNkMjE5ZGQtYmM2OC00YjliLWJmMGItNGEzM2E3OTZiZTM1IyMxOTo5YWE2ZTNlMjNiZTA0ZDQzYjhmMDMzN2E4MzYyMmQ1MUB0aHJlYWQudjIjIzQ4ZDMxODg3LTVmYWQtNGQ3My1hOWY1LTNjMzU2ZTY4YTAzOA==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Megan Bowen",
                    "visibleHistoryStartDateTime": "2022-04-27T13:56:48.999Z",
                    "userId": "48d31887-5fad-4d73-a9f5-3c356e68a038",
                    "email": "MeganB@M365x214355.onmicrosoft.com",
                    "tenantId": "dcd219dd-bc68-4b9b-bf0b-4a33a796be35"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTo5YWE2ZTNlMjNiZTA0ZDQzYjhmMDMzN2E4MzYyMmQ1MUB0aHJlYWQudjIjIzM2YjgyZDFkLTE1OWQtNGE0MC04MjRjLThhNDRiNTNhMTVhOA==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Jing Chin",
                    "visibleHistoryStartDateTime": "2022-04-27T13:56:48.999Z",
                    "userId": "36b82d1d-159d-4a40-824c-8a44b53a15a8",
                    "email": "JChin@rtladconnect.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                }
            ]
        },
        {
            "id": "19:d7196f16ae8a48e4b6a475cdb445158e@thread.v2",
            "topic": "[OMS-683] Cas 6 Programmatic YT",
            "createdDateTime": "2022-04-25T13:13:18.131Z",
            "lastUpdatedDateTime": "2022-04-25T13:18:54.684Z",
            "chatType": "group",
            "webUrl": "https://teams.microsoft.com/l/chat/19%3Ad7196f16ae8a48e4b6a475cdb445158e%40thread.v2/0?tenantId=8d237650-cdc1-40e1-899c-5601e055f3fe",
            "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe",
            "onlineMeetingInfo": null,
            "members@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('48d31887-5fad-4d73-a9f5-3c356e68a038')/chats('19%3Ad7196f16ae8a48e4b6a475cdb445158e%40thread.v2')/members",
            "members": [
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTpkNzE5NmYxNmFlOGE0OGU0YjZhNDc1Y2RiNDQ1MTU4ZUB0aHJlYWQudjIjIzE3ZTk1MjZjLTIyODYtNDFhMS1hZWViLTRiYWRlZTc2NjA2Mw==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "SA-TeamsAdconnect",
                    "visibleHistoryStartDateTime": "2022-04-25T13:13:17.809Z",
                    "userId": "17e9526c-2286-41a1-aeeb-4badee766063",
                    "email": "SA-TeamsAdconnect@rtlgroup.onmicrosoft.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTpkNzE5NmYxNmFlOGE0OGU0YjZhNDc1Y2RiNDQ1MTU4ZUB0aHJlYWQudjIjIzM3MjBiNWE3LTg1NzktNDM0My05NmJmLTQzNDIxNGQ2NTI2ZA==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Mhamdi Wafa",
                    "visibleHistoryStartDateTime": "2022-04-25T13:13:17.809Z",
                    "userId": "3720b5a7-8579-4343-96bf-434214d6526d",
                    "email": "wmhamdi@rtladconnect.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjZGNkMjE5ZGQtYmM2OC00YjliLWJmMGItNGEzM2E3OTZiZTM1IyMxOTpkNzE5NmYxNmFlOGE0OGU0YjZhNDc1Y2RiNDQ1MTU4ZUB0aHJlYWQudjIjIzQ4ZDMxODg3LTVmYWQtNGQ3My1hOWY1LTNjMzU2ZTY4YTAzOA==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Megan Bowen",
                    "visibleHistoryStartDateTime": "2022-04-25T13:13:17.809Z",
                    "userId": "48d31887-5fad-4d73-a9f5-3c356e68a038",
                    "email": "MeganB@M365x214355.onmicrosoft.com",
                    "tenantId": "dcd219dd-bc68-4b9b-bf0b-4a33a796be35"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTpkNzE5NmYxNmFlOGE0OGU0YjZhNDc1Y2RiNDQ1MTU4ZUB0aHJlYWQudjIjIzcxZjJjYzdmLTQwYWYtNDhkOS05ZDk2LTVhYTMzYjkxYmRkOA==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Berrahal Mariem [RTL-AdConnect]",
                    "visibleHistoryStartDateTime": "2022-04-25T13:18:54.505Z",
                    "userId": "71f2cc7f-40af-48d9-9d96-5aa33b91bdd8",
                    "email": "mberrahal@rtladconnect.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                }
            ]
        },
        {
            "id": "19:09a2914294394819aaa13d923695591d@thread.v2",
            "topic": "[OMS-681] Cas 5 Programmatic VOD",
            "createdDateTime": "2022-04-25T12:45:26.647Z",
            "lastUpdatedDateTime": "2022-04-25T13:01:06.189Z",
            "chatType": "group",
            "webUrl": "https://teams.microsoft.com/l/chat/19%3A09a2914294394819aaa13d923695591d%40thread.v2/0?tenantId=8d237650-cdc1-40e1-899c-5601e055f3fe",
            "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe",
            "onlineMeetingInfo": null,
            "members@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('48d31887-5fad-4d73-a9f5-3c356e68a038')/chats('19%3A09a2914294394819aaa13d923695591d%40thread.v2')/members",
            "members": [
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTowOWEyOTE0Mjk0Mzk0ODE5YWFhMTNkOTIzNjk1NTkxZEB0aHJlYWQudjIjIzE3ZTk1MjZjLTIyODYtNDFhMS1hZWViLTRiYWRlZTc2NjA2Mw==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "SA-TeamsAdconnect",
                    "visibleHistoryStartDateTime": "2022-04-25T12:45:26.566Z",
                    "userId": "17e9526c-2286-41a1-aeeb-4badee766063",
                    "email": "SA-TeamsAdconnect@rtlgroup.onmicrosoft.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTowOWEyOTE0Mjk0Mzk0ODE5YWFhMTNkOTIzNjk1NTkxZEB0aHJlYWQudjIjIzM3MjBiNWE3LTg1NzktNDM0My05NmJmLTQzNDIxNGQ2NTI2ZA==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Mhamdi Wafa",
                    "visibleHistoryStartDateTime": "2022-04-25T12:45:26.566Z",
                    "userId": "3720b5a7-8579-4343-96bf-434214d6526d",
                    "email": "wmhamdi@rtladconnect.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjZGNkMjE5ZGQtYmM2OC00YjliLWJmMGItNGEzM2E3OTZiZTM1IyMxOTowOWEyOTE0Mjk0Mzk0ODE5YWFhMTNkOTIzNjk1NTkxZEB0aHJlYWQudjIjIzQ4ZDMxODg3LTVmYWQtNGQ3My1hOWY1LTNjMzU2ZTY4YTAzOA==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Megan Bowen",
                    "visibleHistoryStartDateTime": "2022-04-25T12:45:26.566Z",
                    "userId": "48d31887-5fad-4d73-a9f5-3c356e68a038",
                    "email": "MeganB@M365x214355.onmicrosoft.com",
                    "tenantId": "dcd219dd-bc68-4b9b-bf0b-4a33a796be35"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTowOWEyOTE0Mjk0Mzk0ODE5YWFhMTNkOTIzNjk1NTkxZEB0aHJlYWQudjIjIzcxZjJjYzdmLTQwYWYtNDhkOS05ZDk2LTVhYTMzYjkxYmRkOA==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Berrahal Mariem [RTL-AdConnect]",
                    "visibleHistoryStartDateTime": "2022-04-25T13:01:06.084Z",
                    "userId": "71f2cc7f-40af-48d9-9d96-5aa33b91bdd8",
                    "email": "mberrahal@rtladconnect.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                }
            ]
        },
        {
            "id": "19:b169ebb610dd40e38f84c97f0a3714ce@thread.v2",
            "topic": "[OMS-682] Megableu_DE_Oct_2022",
            "createdDateTime": "2022-04-25T12:47:34.017Z",
            "lastUpdatedDateTime": "2022-04-25T12:47:34.017Z",
            "chatType": "group",
            "webUrl": "https://teams.microsoft.com/l/chat/19%3Ab169ebb610dd40e38f84c97f0a3714ce%40thread.v2/0?tenantId=8d237650-cdc1-40e1-899c-5601e055f3fe",
            "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe",
            "onlineMeetingInfo": null,
            "members@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('48d31887-5fad-4d73-a9f5-3c356e68a038')/chats('19%3Ab169ebb610dd40e38f84c97f0a3714ce%40thread.v2')/members",
            "members": [
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTpiMTY5ZWJiNjEwZGQ0MGUzOGY4NGM5N2YwYTM3MTRjZUB0aHJlYWQudjIjIzE3ZTk1MjZjLTIyODYtNDFhMS1hZWViLTRiYWRlZTc2NjA2Mw==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "SA-TeamsAdconnect",
                    "visibleHistoryStartDateTime": "2022-04-25T12:47:33.914Z",
                    "userId": "17e9526c-2286-41a1-aeeb-4badee766063",
                    "email": "SA-TeamsAdconnect@rtlgroup.onmicrosoft.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjZGNkMjE5ZGQtYmM2OC00YjliLWJmMGItNGEzM2E3OTZiZTM1IyMxOTpiMTY5ZWJiNjEwZGQ0MGUzOGY4NGM5N2YwYTM3MTRjZUB0aHJlYWQudjIjIzQ4ZDMxODg3LTVmYWQtNGQ3My1hOWY1LTNjMzU2ZTY4YTAzOA==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Megan Bowen",
                    "visibleHistoryStartDateTime": "2022-04-25T12:47:33.914Z",
                    "userId": "48d31887-5fad-4d73-a9f5-3c356e68a038",
                    "email": "MeganB@M365x214355.onmicrosoft.com",
                    "tenantId": "dcd219dd-bc68-4b9b-bf0b-4a33a796be35"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTpiMTY5ZWJiNjEwZGQ0MGUzOGY4NGM5N2YwYTM3MTRjZUB0aHJlYWQudjIjIzYxZmNjY2YyLTg2OWQtNGU4OC1iZjFmLTc3ODNhZDYzMGE4Yg==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Menissez Aurelie [RTL AdConnect]",
                    "visibleHistoryStartDateTime": "2022-04-25T12:47:33.914Z",
                    "userId": "61fcccf2-869d-4e88-bf1f-7783ad630a8b",
                    "email": "amenissez@rtladconnect.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                }
            ]
        },
        {
            "id": "19:c18cef0c756c425694358a172f20a4f9@thread.v2",
            "topic": "[OMS-680] Cas 4 Managed Publisher IO YT",
            "createdDateTime": "2022-04-25T12:33:18.506Z",
            "lastUpdatedDateTime": "2022-04-25T12:34:42.944Z",
            "chatType": "group",
            "webUrl": "https://teams.microsoft.com/l/chat/19%3Ac18cef0c756c425694358a172f20a4f9%40thread.v2/0?tenantId=8d237650-cdc1-40e1-899c-5601e055f3fe",
            "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe",
            "onlineMeetingInfo": null,
            "members@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('48d31887-5fad-4d73-a9f5-3c356e68a038')/chats('19%3Ac18cef0c756c425694358a172f20a4f9%40thread.v2')/members",
            "members": [
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTpjMThjZWYwYzc1NmM0MjU2OTQzNThhMTcyZjIwYTRmOUB0aHJlYWQudjIjIzE3ZTk1MjZjLTIyODYtNDFhMS1hZWViLTRiYWRlZTc2NjA2Mw==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "SA-TeamsAdconnect",
                    "visibleHistoryStartDateTime": "2022-04-25T12:33:18.42Z",
                    "userId": "17e9526c-2286-41a1-aeeb-4badee766063",
                    "email": "SA-TeamsAdconnect@rtlgroup.onmicrosoft.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTpjMThjZWYwYzc1NmM0MjU2OTQzNThhMTcyZjIwYTRmOUB0aHJlYWQudjIjIzM3MjBiNWE3LTg1NzktNDM0My05NmJmLTQzNDIxNGQ2NTI2ZA==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Mhamdi Wafa",
                    "visibleHistoryStartDateTime": "2022-04-25T12:33:18.42Z",
                    "userId": "3720b5a7-8579-4343-96bf-434214d6526d",
                    "email": "wmhamdi@rtladconnect.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjZGNkMjE5ZGQtYmM2OC00YjliLWJmMGItNGEzM2E3OTZiZTM1IyMxOTpjMThjZWYwYzc1NmM0MjU2OTQzNThhMTcyZjIwYTRmOUB0aHJlYWQudjIjIzQ4ZDMxODg3LTVmYWQtNGQ3My1hOWY1LTNjMzU2ZTY4YTAzOA==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Megan Bowen",
                    "visibleHistoryStartDateTime": "2022-04-25T12:33:18.42Z",
                    "userId": "48d31887-5fad-4d73-a9f5-3c356e68a038",
                    "email": "MeganB@M365x214355.onmicrosoft.com",
                    "tenantId": "dcd219dd-bc68-4b9b-bf0b-4a33a796be35"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTpjMThjZWYwYzc1NmM0MjU2OTQzNThhMTcyZjIwYTRmOUB0aHJlYWQudjIjIzcxZjJjYzdmLTQwYWYtNDhkOS05ZDk2LTVhYTMzYjkxYmRkOA==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Berrahal Mariem [RTL-AdConnect]",
                    "visibleHistoryStartDateTime": "2022-04-25T12:34:42.88Z",
                    "userId": "71f2cc7f-40af-48d9-9d96-5aa33b91bdd8",
                    "email": "mberrahal@rtladconnect.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                }
            ]
        },
        {
            "id": "19:9ef2dcdf14ba44cbae25c2f5d53171ba@thread.v2",
            "topic": "[OMS-679] Cas 3 Managed Publisher IO VOD",
            "createdDateTime": "2022-04-25T11:52:22.934Z",
            "lastUpdatedDateTime": "2022-04-25T11:59:47.323Z",
            "chatType": "group",
            "webUrl": "https://teams.microsoft.com/l/chat/19%3A9ef2dcdf14ba44cbae25c2f5d53171ba%40thread.v2/0?tenantId=8d237650-cdc1-40e1-899c-5601e055f3fe",
            "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe",
            "onlineMeetingInfo": null,
            "members@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('48d31887-5fad-4d73-a9f5-3c356e68a038')/chats('19%3A9ef2dcdf14ba44cbae25c2f5d53171ba%40thread.v2')/members",
            "members": [
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
        },
        {
            "id": "19:b6b45d6b55a04610b238ca7ea1092a9b@thread.v2",
            "topic": "[OMS-594] dqsdqs",
            "createdDateTime": "2022-04-25T11:59:30.667Z",
            "lastUpdatedDateTime": "2022-04-25T11:59:30.667Z",
            "chatType": "group",
            "webUrl": "https://teams.microsoft.com/l/chat/19%3Ab6b45d6b55a04610b238ca7ea1092a9b%40thread.v2/0?tenantId=8d237650-cdc1-40e1-899c-5601e055f3fe",
            "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe",
            "onlineMeetingInfo": null,
            "members@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('48d31887-5fad-4d73-a9f5-3c356e68a038')/chats('19%3Ab6b45d6b55a04610b238ca7ea1092a9b%40thread.v2')/members",
            "members": [
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTpiNmI0NWQ2YjU1YTA0NjEwYjIzOGNhN2VhMTA5MmE5YkB0aHJlYWQudjIjIzE3ZTk1MjZjLTIyODYtNDFhMS1hZWViLTRiYWRlZTc2NjA2Mw==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "SA-TeamsAdconnect",
                    "visibleHistoryStartDateTime": "2022-04-25T11:59:30.552Z",
                    "userId": "17e9526c-2286-41a1-aeeb-4badee766063",
                    "email": "SA-TeamsAdconnect@rtlgroup.onmicrosoft.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTpiNmI0NWQ2YjU1YTA0NjEwYjIzOGNhN2VhMTA5MmE5YkB0aHJlYWQudjIjIzM3MjBiNWE3LTg1NzktNDM0My05NmJmLTQzNDIxNGQ2NTI2ZA==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Mhamdi Wafa",
                    "visibleHistoryStartDateTime": "2022-04-25T11:59:30.552Z",
                    "userId": "3720b5a7-8579-4343-96bf-434214d6526d",
                    "email": "wmhamdi@rtladconnect.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjZGNkMjE5ZGQtYmM2OC00YjliLWJmMGItNGEzM2E3OTZiZTM1IyMxOTpiNmI0NWQ2YjU1YTA0NjEwYjIzOGNhN2VhMTA5MmE5YkB0aHJlYWQudjIjIzQ4ZDMxODg3LTVmYWQtNGQ3My1hOWY1LTNjMzU2ZTY4YTAzOA==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Megan Bowen",
                    "visibleHistoryStartDateTime": "2022-04-25T11:59:30.552Z",
                    "userId": "48d31887-5fad-4d73-a9f5-3c356e68a038",
                    "email": "MeganB@M365x214355.onmicrosoft.com",
                    "tenantId": "dcd219dd-bc68-4b9b-bf0b-4a33a796be35"
                }
            ]
        },
        {
            "id": "19:d8cdcfe43646463dbf7048b8d74f0f88@thread.v2",
            "topic": "[OMS-611] Test ATV ",
            "createdDateTime": "2022-03-14T13:57:28.054Z",
            "lastUpdatedDateTime": "2022-04-25T11:59:15.474Z",
            "chatType": "group",
            "webUrl": "https://teams.microsoft.com/l/chat/19%3Ad8cdcfe43646463dbf7048b8d74f0f88%40thread.v2/0?tenantId=8d237650-cdc1-40e1-899c-5601e055f3fe",
            "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe",
            "onlineMeetingInfo": null,
            "members@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('48d31887-5fad-4d73-a9f5-3c356e68a038')/chats('19%3Ad8cdcfe43646463dbf7048b8d74f0f88%40thread.v2')/members",
            "members": [
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTpkOGNkY2ZlNDM2NDY0NjNkYmY3MDQ4YjhkNzRmMGY4OEB0aHJlYWQudjIjIzE3ZTk1MjZjLTIyODYtNDFhMS1hZWViLTRiYWRlZTc2NjA2Mw==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "SA-TeamsAdconnect",
                    "visibleHistoryStartDateTime": "2022-03-14T13:57:27.981Z",
                    "userId": "17e9526c-2286-41a1-aeeb-4badee766063",
                    "email": "SA-TeamsAdconnect@rtlgroup.onmicrosoft.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTpkOGNkY2ZlNDM2NDY0NjNkYmY3MDQ4YjhkNzRmMGY4OEB0aHJlYWQudjIjIzM3MjBiNWE3LTg1NzktNDM0My05NmJmLTQzNDIxNGQ2NTI2ZA==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Mhamdi Wafa",
                    "visibleHistoryStartDateTime": "2022-04-25T11:59:14.635Z",
                    "userId": "3720b5a7-8579-4343-96bf-434214d6526d",
                    "email": "wmhamdi@rtladconnect.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjZGNkMjE5ZGQtYmM2OC00YjliLWJmMGItNGEzM2E3OTZiZTM1IyMxOTpkOGNkY2ZlNDM2NDY0NjNkYmY3MDQ4YjhkNzRmMGY4OEB0aHJlYWQudjIjIzQ4ZDMxODg3LTVmYWQtNGQ3My1hOWY1LTNjMzU2ZTY4YTAzOA==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Megan Bowen",
                    "visibleHistoryStartDateTime": "2022-04-25T11:59:14.921Z",
                    "userId": "48d31887-5fad-4d73-a9f5-3c356e68a038",
                    "email": "MeganB@M365x214355.onmicrosoft.com",
                    "tenantId": "dcd219dd-bc68-4b9b-bf0b-4a33a796be35"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTpkOGNkY2ZlNDM2NDY0NjNkYmY3MDQ4YjhkNzRmMGY4OEB0aHJlYWQudjIjIzcxZjJjYzdmLTQwYWYtNDhkOS05ZDk2LTVhYTMzYjkxYmRkOA==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Berrahal Mariem [RTL-AdConnect]",
                    "visibleHistoryStartDateTime": "2022-04-25T11:59:15.35Z",
                    "userId": "71f2cc7f-40af-48d9-9d96-5aa33b91bdd8",
                    "email": "mberrahal@rtladconnect.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                }
            ]
        },
        {
            "id": "19:3da4beccb91e488983f6ad39e13b12ad@thread.v2",
            "topic": "[OMS-621] dqsdqs",
            "createdDateTime": "2022-03-17T08:18:21.525Z",
            "lastUpdatedDateTime": "2022-04-25T11:59:04.856Z",
            "chatType": "group",
            "webUrl": "https://teams.microsoft.com/l/chat/19%3A3da4beccb91e488983f6ad39e13b12ad%40thread.v2/0?tenantId=8d237650-cdc1-40e1-899c-5601e055f3fe",
            "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe",
            "onlineMeetingInfo": null,
            "members@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('48d31887-5fad-4d73-a9f5-3c356e68a038')/chats('19%3A3da4beccb91e488983f6ad39e13b12ad%40thread.v2')/members",
            "members": [
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTozZGE0YmVjY2I5MWU0ODg5ODNmNmFkMzllMTNiMTJhZEB0aHJlYWQudjIjIzE3ZTk1MjZjLTIyODYtNDFhMS1hZWViLTRiYWRlZTc2NjA2Mw==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "SA-TeamsAdconnect",
                    "visibleHistoryStartDateTime": "2022-03-17T08:18:21.478Z",
                    "userId": "17e9526c-2286-41a1-aeeb-4badee766063",
                    "email": "SA-TeamsAdconnect@rtlgroup.onmicrosoft.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTozZGE0YmVjY2I5MWU0ODg5ODNmNmFkMzllMTNiMTJhZEB0aHJlYWQudjIjIzc2NTgyYTM2LWIxZWEtNGE3OS1hNmU0LTljMGI2ZTVjMDVjNQ==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "El Qasry Abdelwahed",
                    "visibleHistoryStartDateTime": "2022-03-17T08:18:21.478Z",
                    "userId": "76582a36-b1ea-4a79-a6e4-9c0b6e5c05c5",
                    "email": "aelqasry@rtladconnect.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTozZGE0YmVjY2I5MWU0ODg5ODNmNmFkMzllMTNiMTJhZEB0aHJlYWQudjIjIzM3MjBiNWE3LTg1NzktNDM0My05NmJmLTQzNDIxNGQ2NTI2ZA==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Mhamdi Wafa",
                    "visibleHistoryStartDateTime": "2022-03-17T08:18:21.478Z",
                    "userId": "3720b5a7-8579-4343-96bf-434214d6526d",
                    "email": "wmhamdi@rtladconnect.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjZGNkMjE5ZGQtYmM2OC00YjliLWJmMGItNGEzM2E3OTZiZTM1IyMxOTozZGE0YmVjY2I5MWU0ODg5ODNmNmFkMzllMTNiMTJhZEB0aHJlYWQudjIjIzQ4ZDMxODg3LTVmYWQtNGQ3My1hOWY1LTNjMzU2ZTY4YTAzOA==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Megan Bowen",
                    "visibleHistoryStartDateTime": "2022-04-25T11:59:04.6Z",
                    "userId": "48d31887-5fad-4d73-a9f5-3c356e68a038",
                    "email": "MeganB@M365x214355.onmicrosoft.com",
                    "tenantId": "dcd219dd-bc68-4b9b-bf0b-4a33a796be35"
                }
            ]
        },
        {
            "id": "19:ee8594008ed34fa7b1e38f884dac094d@thread.v2",
            "topic": "[OMS-678] Cas 2 Managed RAC IO YT",
            "createdDateTime": "2022-04-25T11:32:59.215Z",
            "lastUpdatedDateTime": "2022-04-25T11:33:52.91Z",
            "chatType": "group",
            "webUrl": "https://teams.microsoft.com/l/chat/19%3Aee8594008ed34fa7b1e38f884dac094d%40thread.v2/0?tenantId=8d237650-cdc1-40e1-899c-5601e055f3fe",
            "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe",
            "onlineMeetingInfo": null,
            "members@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('48d31887-5fad-4d73-a9f5-3c356e68a038')/chats('19%3Aee8594008ed34fa7b1e38f884dac094d%40thread.v2')/members",
            "members": [
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTplZTg1OTQwMDhlZDM0ZmE3YjFlMzhmODg0ZGFjMDk0ZEB0aHJlYWQudjIjIzE3ZTk1MjZjLTIyODYtNDFhMS1hZWViLTRiYWRlZTc2NjA2Mw==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "SA-TeamsAdconnect",
                    "visibleHistoryStartDateTime": "2022-04-25T11:32:59.118Z",
                    "userId": "17e9526c-2286-41a1-aeeb-4badee766063",
                    "email": "SA-TeamsAdconnect@rtlgroup.onmicrosoft.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTplZTg1OTQwMDhlZDM0ZmE3YjFlMzhmODg0ZGFjMDk0ZEB0aHJlYWQudjIjIzM3MjBiNWE3LTg1NzktNDM0My05NmJmLTQzNDIxNGQ2NTI2ZA==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Mhamdi Wafa",
                    "visibleHistoryStartDateTime": "2022-04-25T11:32:59.118Z",
                    "userId": "3720b5a7-8579-4343-96bf-434214d6526d",
                    "email": "wmhamdi@rtladconnect.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjZGNkMjE5ZGQtYmM2OC00YjliLWJmMGItNGEzM2E3OTZiZTM1IyMxOTplZTg1OTQwMDhlZDM0ZmE3YjFlMzhmODg0ZGFjMDk0ZEB0aHJlYWQudjIjIzQ4ZDMxODg3LTVmYWQtNGQ3My1hOWY1LTNjMzU2ZTY4YTAzOA==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Megan Bowen",
                    "visibleHistoryStartDateTime": "2022-04-25T11:32:59.118Z",
                    "userId": "48d31887-5fad-4d73-a9f5-3c356e68a038",
                    "email": "MeganB@M365x214355.onmicrosoft.com",
                    "tenantId": "dcd219dd-bc68-4b9b-bf0b-4a33a796be35"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOTplZTg1OTQwMDhlZDM0ZmE3YjFlMzhmODg0ZGFjMDk0ZEB0aHJlYWQudjIjIzcxZjJjYzdmLTQwYWYtNDhkOS05ZDk2LTVhYTMzYjkxYmRkOA==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Berrahal Mariem [RTL-AdConnect]",
                    "visibleHistoryStartDateTime": "2022-04-25T11:33:52.782Z",
                    "userId": "71f2cc7f-40af-48d9-9d96-5aa33b91bdd8",
                    "email": "mberrahal@rtladconnect.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                }
            ]
        },
        {
            "id": "19:2654d345ff7c4fa7ad14055fc5ba1088@thread.v2",
            "topic": "[OMS-677] Cas 1 Managed RAC IO VOD",
            "createdDateTime": "2022-04-25T09:36:55.173Z",
            "lastUpdatedDateTime": "2022-04-25T09:49:03.583Z",
            "chatType": "group",
            "webUrl": "https://teams.microsoft.com/l/chat/19%3A2654d345ff7c4fa7ad14055fc5ba1088%40thread.v2/0?tenantId=8d237650-cdc1-40e1-899c-5601e055f3fe",
            "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe",
            "onlineMeetingInfo": null,
            "members@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('48d31887-5fad-4d73-a9f5-3c356e68a038')/chats('19%3A2654d345ff7c4fa7ad14055fc5ba1088%40thread.v2')/members",
            "members": [
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOToyNjU0ZDM0NWZmN2M0ZmE3YWQxNDA1NWZjNWJhMTA4OEB0aHJlYWQudjIjIzE3ZTk1MjZjLTIyODYtNDFhMS1hZWViLTRiYWRlZTc2NjA2Mw==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "SA-TeamsAdconnect",
                    "visibleHistoryStartDateTime": "2022-04-25T09:36:55.091Z",
                    "userId": "17e9526c-2286-41a1-aeeb-4badee766063",
                    "email": "SA-TeamsAdconnect@rtlgroup.onmicrosoft.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOToyNjU0ZDM0NWZmN2M0ZmE3YWQxNDA1NWZjNWJhMTA4OEB0aHJlYWQudjIjIzM3MjBiNWE3LTg1NzktNDM0My05NmJmLTQzNDIxNGQ2NTI2ZA==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Mhamdi Wafa",
                    "visibleHistoryStartDateTime": "2022-04-25T09:36:55.091Z",
                    "userId": "3720b5a7-8579-4343-96bf-434214d6526d",
                    "email": "wmhamdi@rtladconnect.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjZGNkMjE5ZGQtYmM2OC00YjliLWJmMGItNGEzM2E3OTZiZTM1IyMxOToyNjU0ZDM0NWZmN2M0ZmE3YWQxNDA1NWZjNWJhMTA4OEB0aHJlYWQudjIjIzQ4ZDMxODg3LTVmYWQtNGQ3My1hOWY1LTNjMzU2ZTY4YTAzOA==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Megan Bowen",
                    "visibleHistoryStartDateTime": "2022-04-25T09:36:55.091Z",
                    "userId": "48d31887-5fad-4d73-a9f5-3c356e68a038",
                    "email": "MeganB@M365x214355.onmicrosoft.com",
                    "tenantId": "dcd219dd-bc68-4b9b-bf0b-4a33a796be35"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MCMjMCMjOGQyMzc2NTAtY2RjMS00MGUxLTg5OWMtNTYwMWUwNTVmM2ZlIyMxOToyNjU0ZDM0NWZmN2M0ZmE3YWQxNDA1NWZjNWJhMTA4OEB0aHJlYWQudjIjIzcxZjJjYzdmLTQwYWYtNDhkOS05ZDk2LTVhYTMzYjkxYmRkOA==",
                    "roles": [
                        "owner"
                    ],
                    "displayName": "Berrahal Mariem [RTL-AdConnect]",
                    "visibleHistoryStartDateTime": "2022-04-25T09:49:03.482Z",
                    "userId": "71f2cc7f-40af-48d9-9d96-5aa33b91bdd8",
                    "email": "mberrahal@rtladconnect.com",
                    "tenantId": "8d237650-cdc1-40e1-899c-5601e055f3fe"
                }
            ]
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List chats",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

### Example 3: List all chats in order of the most to least recent chat messages

#### Request

The following is an example of a request. **lastMessagePreview/createdDateTime** is passed to sort chats by the most to least recent chat messages.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_chats_orderby"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/chats?$orderBy=lastMessagePreview/createdDateTime desc
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-chats-orderby-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-chats-orderby-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-chats-orderby-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chat",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#chats",
    "@odata.count": 2,
    "@odata.nextLink": "https://graph.microsoft.com/v1.0/chats?$orderBy=lastMessagePreview%2fcreatedDateTime+desc&$skiptoken=1.kscDYs0BbsYAAAFa8ZyBqlByb3BlcnRpZXOCqVN5bmNTdGF0ZdoBRGV5SmtaV3hwZG1WeVpXUlRaV2R0Wlc1MGN5STZXM3NpYzNSaGNuUWlPaUl5TURJeExUQTRMVEUzVkRFeE9qVXpPakUxTGprd09Tc3dNRG93TUNJc0ltVnVaQ0k2SWpJd01qSXRNRFV0TUROVU1UZzZNVFU2TkRJdU16QTNLekF3T2pBd0luMHNleUp6ZEdGeWQ4APMDRTVOekF0TURFdE1ERlVNREE2BAATcggAcWlMQ0psYm2YAJB4T1Rjd0xUQXgEACJWRFQAAAQABmAA8F8xZExDSjZaWEp2VEUxVFZFUmxiR2wyWlhKbFpGTmxaMjFsYm5SeklqcGJYU3dpYzI5eWRFOXlaR1Z5SWpveExDSnBibU5zZFdSbFdtVnliMHhOVTFRaU9uUnlkV1Y5rExhc3RQYWdlU2l6ZaIyMA%3d%3d",
    "value": [
        {
            "id": "19:670374fa-3b0e-4a3b-9d33-0e1bc5ff1956_bfb5bb25-3a8d-487d-9828-7875ced51a30@unq.gbl.spaces",
            "topic": null,
            "createdDateTime": "2021-11-17T18:48:57.986Z",
            "lastUpdatedDateTime": "2021-11-17T18:48:57.986Z",
            "chatType": "oneOnOne",
            "webUrl": "https://teams.microsoft.com/l/chat/19%3A670374fa-3b0e-4a3b-9d33-0e1bc5ff1956_bfb5bb25-3a8d-487d-9828-7875ced51a30%40unq.gbl.spaces/0?tenantId=2432b57b-0abd-43db-aa7b-16eadd115d34",
            "tenantId": "2432b57b-0abd-43db-aa7b-16eadd115d34",
            "onlineMeetingInfo": null
        },
        {
            "id": "19:82fe7758-5bb3-4f0d-a43f-e555fd399c6f_bfb5bb25-3a8d-487d-9828-7875ced51a30@unq.gbl.spaces",
            "topic": null,
            "createdDateTime": "2021-05-26T00:07:00.751Z",
            "lastUpdatedDateTime": "2021-05-26T00:07:14.894Z",
            "chatType": "oneOnOne",
            "webUrl": "https://teams.microsoft.com/l/chat/19%3A82fe7758-5bb3-4f0d-a43f-e555fd399c6f_bfb5bb25-3a8d-487d-9828-7875ced51a30%40unq.gbl.spaces/0?tenantId=2432b57b-0abd-43db-aa7b-16eadd115d34",
            "tenantId": "2432b57b-0abd-43db-aa7b-16eadd115d34",
            "onlineMeetingInfo": null
        }
    ]
}
```
