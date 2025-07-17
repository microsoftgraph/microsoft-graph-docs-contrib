---
title: "List chats"
description: "Retrieve the list of chats for a user."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 05/23/2024
---

# List chats

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the list of [chats](../resources/chat.md) that the user is part of.

This method supports federation. When a user ID is provided, the calling application must belong to the same tenant that the user belongs to.

>**Note:** This API works differently in one or more national clouds. For details, see [Implementation differences in national clouds](/graph/teamwork-national-cloud-differences).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Chat.ReadBasic, Chat.Read, Chat.ReadWrite |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Chat.ReadBasic.All*, Chat.Read.All*, Chat.ReadWrite.All* |

> **Note**: \* This scenario is only supported for the following call: `GET /users/{user-id | user-principal-name}/chats`.

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
| [$orderby](/graph/query-parameters#orderby-parameter)  | Currently supports **lastMessagePreview/createdDateTime** in descending order. Ascending order is currently not supported.|

The other [OData query parameters](/graph/query-parameters) are not currently supported.

> [!NOTE]
> The `$top` query parameter might not return all chats within a single response object. If the result set for all chats spans multiple pages, the response object includes an **@odata.nextLink** property that contains a URL to the next page of results. If that property is present, continue making additional requests with the **@odata.nextLink** URL in each response, until all the results are returned.

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [chat](../resources/chat.md) objects in the response body.

## Example

### Example 1: List all chats

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_chats"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/chats
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-chats-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-chats-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-chats-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-chats-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-chats-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-chats-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-chats-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-chats-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#chats",
    "@odata.count": 3,
    "value": [
        {
            "id": "19:meeting_MjdhNjM4YzUtYzExZi00OTFkLTkzZTAtNTVlNmZmMDhkNGU2@thread.v2",
            "topic": "Meeting chat sample",
            "createdDateTime": "2020-12-08T23:53:05.801Z",
            "lastUpdatedDateTime": "2020-12-08T23:58:32.511Z",
            "chatType": "meeting",
            "viewpoint": {
                "isHidden": false,
                "lastMessageReadDateTime": "2021-06-03T08:05:49.521Z"
            },
            "webUrl": "https://teams.microsoft.com/l/chat/19%3Ameeting_MjdhNjM4YzUtYzExZi00OTFkLTkzZTAtNTVlNmZmMDhkNGU2@thread.v2/0?tenantId=b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",
            "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",
            "isHiddenForAllMembers": false,
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
            }
        },
        {
            "id": "19:561082c0f3f847a58069deb8eb300807@thread.v2",
            "topic": "Group chat sample",
            "createdDateTime": "2020-12-03T19:41:07.054Z",
            "lastUpdatedDateTime": "2020-12-08T23:53:11.012Z",
            "chatType": "group",
            "viewpoint": {
                "isHidden": false,
                "lastMessageReadDateTime": "2021-05-27T22:13:01.577Z"
            },
            "webUrl": "https://teams.microsoft.com/l/chat/19%3A561082c0f3f847a58069deb8eb300807@thread.v2/0?tenantId=b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",
            "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",
            "isHiddenForAllMembers": false,
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
            }
        },
        {
            "id": "19:d74fc2ed-cb0e-4288-a219-b5c71abaf2aa_8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca@unq.gbl.spaces",
            "topic": null,
            "createdDateTime": "2020-12-04T23:10:28.51Z",
            "lastUpdatedDateTime": "2020-12-04T23:10:36.925Z",
            "chatType": "oneOnOne",
            "viewpoint": {
                "isHidden": false,
                "lastMessageReadDateTime": "0001-01-01T00:00:00Z"
            },
            "webUrl": "https://teams.microsoft.com/l/chat/19%3Ad74fc2ed-cb0e-4288-a219-b5c71abaf2aa_8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca@unq.gbl.spaces/0?tenantId=b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",
            "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",
            "isHiddenForAllMembers": false,
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
            }
        }
    ]
}
```

### Example 2: List all chats along with the members of each chat
#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_chats_expand_members"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/chats?$expand=members
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-chats-expand-members-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-chats-expand-members-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-chats-expand-members-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-chats-expand-members-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-chats-expand-members-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-chats-expand-members-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-chats-expand-members-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-chats-expand-members-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#chats(members())",
    "@odata.count": 3,
    "value": [
        {
            "id": "19:meeting_MjdhNjM4YzUtYzExZi00OTFkLTkzZTAtNTVlNmZmMDhkNGU2@thread.v2",
            "topic": "Meeting chat sample",
            "createdDateTime": "2020-12-08T23:53:05.801Z",
            "lastUpdatedDateTime": "2020-12-08T23:58:32.511Z",
            "chatType": "meeting",
            "viewpoint": {
                "isHidden": false,
                "lastMessageReadDateTime": "2021-04-02T08:15:02.091Z"
            },
            "webUrl": "https://teams.microsoft.com/l/chat/19%3Ameeting_MjdhNjM4YzUtYzExZi00OTFkLTkzZTAtNTVlNmZmMDhkNGU2@thread.v2/0?tenantId=b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",
            "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",
            "isHiddenForAllMembers": false,
            "createdBy": {
                "application": null,
                "device": null,
                "user": {
                    "@odata.type": "#microsoft.graph.teamworkUserIdentity",
                    "id": "4595d2f2-7b31-446c-84fd-9b795e63114b",
                    "displayName": null,
                    "userIdentityType": "aadUser",
                    "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f"
                }
            },
            "members": [
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MmFiOWM3OTYtMjkwMi00NWY4LWI3MTItN2M1YTYzY2Y0MWM0IyNlZWY5Y2IzNi0wNmRlLTQ2OWItODdjZC03MGY0Y2JlMzJkM123=",
                    "roles": [],
                    "displayName": "Tony Stark",
                    "userId": "4595d2f2-7b31-446c-84fd-9b795e63114b",
                    "email": "starkt@contoso.com"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MmFiOWM3OTYtMjkwMi00NWY4LWI3MTItN2M1YTYzY2Y0MWM0IyNlZWY5Y2IzNi0wNmRlLTQ2OWItODdjZC03MGY0Y2JlMz6Jk45=",
                    "roles": [],
                    "displayName": "Peter Parker",
                    "userId": "d74fc2ed-cb0e-4288-a219-b5c71abaf2aa",
                    "email": "parkerp@contoso.com"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MmFiOWM3OTYtMjkwMi00NWY4LWI3MTItN2M1YTYzY2Y0MWM0IyNlZWY5Y2IzNi0wNmRlLTQ2OWItODdjZC03MGY0Y2JlMzJ989kMTQ=",
                    "roles": [],
                    "displayName": "Nick Fury",
                    "userId": "8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca",
                    "email": "furyn@contoso.com"
                }
            ]
        },
        {
            "id": "19:561082c0f3f847a58069deb8eb300807@thread.v2",
            "topic": "Group chat sample",
            "createdDateTime": "2020-12-03T19:41:07.054Z",
            "lastUpdatedDateTime": "2020-12-08T23:53:11.012Z",
            "chatType": "group",
            "viewpoint": {
                "isHidden": false,
                "lastMessageReadDateTime": "0001-01-01T00:00:00Z"
            },
            "webUrl": "https://teams.microsoft.com/l/chat/19%3A561082c0f3f847a58069deb8eb300807@thread.v2/0?tenantId=b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",
            "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",
            "isHiddenForAllMembers": false,
            "createdBy": {
                "application": null,
                "device": null,
                "user": {
                    "@odata.type": "#microsoft.graph.teamworkUserIdentity",
                    "id": "4595d2f2-7b31-446c-84fd-9b795e63114b",
                    "displayName": null,
                    "userIdentityType": "aadUser",
                    "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f"
                }
            },
            "members": [
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MmFiOWM3OTYtMjkwMi00NWY4LWI3MTItN2M1YTYzY2Y0MWM0IyNlZWY5Y2IzNi0wNmRlLTQ2OWItODdjZC03MGY0Y2JlMzJkM123=",
                    "roles": [],
                    "displayName": "Tony Stark",
                    "userId": "4595d2f2-7b31-446c-84fd-9b795e63114b",
                    "email": "starkt@contoso.com"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MmFiOWM312ftMjkwMi00NWY4LWI3MTItN2M1YTYzY2Y0MWM0IyNlZWY5Y2IzNi0wNmRlLTQ2OWItODdjZC03MGY0Y2JlMzJkM123=",
                    "roles": [],
                    "displayName": "Bruce Banner",
                    "userId": "48bf9d52-dca7-4a5f-8398-37b95cc7bd83",
                    "email": "bannerb@contoso.com"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MmFiOWM3OTYtMjkwMi00NWY4LWai3MTetN2M1YTYzY2Y0MWM0IyNlZWY5Y2IzNi0wNmRlLTQ2OWItODdjZC03MGY0Y2JlMzJkM123=",
                    "roles": [],
                    "displayName": "TChalla",
                    "userId": "9efb1aea-4f83-4673-bdcd-d3f3c7be28c2",
                    "email": "tchalla@contoso.com"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MmFiOWM3OTYtMjkwamii00NWY4LWI3MTItN2M1YTYzY2Y0MWM0IyNlZWY5Y2IzNi0wNmRlLTQ2OWItODdjZC03MGY0Y2JlMzJkM123=",
                    "roles": [],
                    "displayName": "Thor Odinson",
                    "userId": "976f4b31-fd01-4e0b-9178-29cc40c14438",
                    "email": "odinsont@contoso.com"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MmFiOWM3OTYtMjkwMi00NWopiLWI3MTItN2M1YTYzY2Y0MWM0IyNlZWY5Y2IzNi0wNmRlLTQ2OWItODdjZC03MGY0Y2JlMzJkM123=",
                    "roles": [],
                    "displayName": "Steve Rogers",
                    "userId": "976f4b31-fd01-4e0b-9178-29cc40c14438",
                    "email": "rogerss@contoso.com"
                }
            ]
        },
        {
            "id": "19:d74fc2ed-cb0e-4288-a219-b5c71abaf2aa_8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca@unq.gbl.spaces",
            "topic": null,
            "createdDateTime": "2020-12-04T23:10:28.51Z",
            "lastUpdatedDateTime": "2020-12-04T23:10:36.925Z",
            "chatType": "oneOnOne",
            "viewpoint": {
                "isHidden": false,
                "lastMessageReadDateTime": "2021-06-05T00:31:30.047Z"
            },
            "webUrl": "https://teams.microsoft.com/l/chat/19%3Ad74fc2ed-cb0e-4288-a219-b5c71abaf2aa_8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca@unq.gbl.spaces/0?tenantId=b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",
            "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",
            "isHiddenForAllMembers": false,
            "createdBy": {
                "application": null,
                "device": null,
                "user": {
                    "@odata.type": "#microsoft.graph.teamworkUserIdentity",
                    "id": "4595d2f2-7b31-446c-84fd-9b795e63114b",
                    "displayName": null,
                    "userIdentityType": "aadUser",
                    "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f"
                }
            },
            "members": [
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MmFiOWM3OTYtMjkwMi00NWY4LWI3MTItN2M1YTYzY2Y0MWM0IyNlZWY5Y2IzNi0wNmRlLTQ2OWItODdjZC03MGY0Y2JlMzJ989kMTQ=",
                    "roles": [],
                    "displayName": "Nick Fury",
                    "userId": "8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca",
                    "email": "furyn@contoso.com"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MmFiOWM3OTYtMjkwMi00NWY4LWI3MTItN2M1YTYzY2Y0MWM0IyNlZWY5Y2IzNi0wNmRlLTQ2OWItODdjZC03MGY0Y2JlMz6Jk45=",
                    "roles": [],
                    "displayName": "Peter Parker",
                    "userId": "d74fc2ed-cb0e-4288-a219-b5c71abaf2aa",
                    "email": "parkerp@contoso.com"
                }
            ]
        }
    ]
}
```

### Example 3: List chats along with the preview of the last message sent in the chat

#### Request

The following example shows a request to list chats along with the preview of the last message sent in the chat. Comparing `createdDateTime` on the preview to `lastMessageReadDateTime` in `viewpoint` allows the caller to determine whether the user has read all messages in a chat.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_chats_expand_lastMessagePreview"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/chats?$expand=lastMessagePreview
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-chats-expand-lastmessagepreview-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-chats-expand-lastmessagepreview-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-chats-expand-lastmessagepreview-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-chats-expand-lastmessagepreview-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-chats-expand-lastmessagepreview-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-chats-expand-lastmessagepreview-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-chats-expand-lastmessagepreview-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-chats-expand-lastmessagepreview-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#chats(lastMessagePreview())",
    "@odata.count": 3,
    "@odata.nextLink": "https://graph.microsoft.com/beta/chats?$expand=lastMessagePreview&$skiptoken=eyJDb250aW51YXRpb25Ub2tlbiI6Ilczc2ljM1JoY25RaU9pSXlNREl4TFRBMUxUSTNWREl5T2pFek9qQXpMakUyT1Nzd01Eb3dNQ0lzSW1WdVpDSTZJakl3TWpFdE1EWXRNRFZVTURBNk16RTZNekl1T0RBMkt6QXdPakF3SW4wc2V5SnpkR0Z5ZENJNklqRTVOekF0TURFdE1ERlVNREE2TURBNk1EQXJNREE2TURBaUxDSmxibVFpT2lJeE9UY3dMVEF4TFRBeFZEQXdPakF3T2pBd0xqQXdNU3N3TURvd01DSjlYUT09IiwiQ2hhdFR5cGUiOiJjaGF0fG1lZXRpbmd8c2ZiaW50ZXJvcGNoYXR8cGhvbmVjaGF0In0%3d",
    "value": [
        {
            "id": "19:8ea0e38b-efb3-4757-924a-5f94061cf8c2_976f4b31-fd01-4e0b-9178-29cc40c14438@unq.gbl.spaces",
            "topic": null,
            "createdDateTime": "2021-06-05T00:31:30.767Z",
            "lastUpdatedDateTime": "2021-06-05T00:31:32.806Z",
            "chatType": "oneOnOne",
            "viewpoint": {
                "isHidden": false,
                "lastMessageReadDateTime": "2021-06-05T00:31:30.047Z"
            },
            "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",
            "isHiddenForAllMembers": false,
            "createdBy": {
                "application": null,
                "device": null,
                "user": {
                    "@odata.type": "#microsoft.graph.teamworkUserIdentity",
                    "id": "4595d2f2-7b31-446c-84fd-9b795e63114b",
                    "displayName": null,
                    "userIdentityType": "aadUser",
                    "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f"
                }
            },
            "lastMessagePreview": {
                "id": "1622853091207",
                "createdDateTime": "2021-06-05T00:31:31.207Z",
                "isDeleted": false,
                "messageType": "message",
                "eventDetail": null,
                "body": {
                    "contentType": "text",
                    "content": "Testing unread read status"
                },
                "from": {
                    "application": null,
                    "device": null,
                    "user": {
                        "id": "8ea0e38b-efb3-4757-924a-5f94061cf8c2",
                        "displayName": "Nick Fury",
                        "userIdentityType": "aadUser"
                    }
                }
            }
        },
        {
            "id": "19:8ea0e38b-efb3-4757-924a-5f94061cf8c2_da7d471b-de7d-4152-8556-1cdf7a564f6c@unq.gbl.spaces",
            "topic": null,
            "createdDateTime": "2020-07-17T22:46:28.077Z",
            "lastUpdatedDateTime": "2021-06-03T08:05:49.788Z",
            "chatType": "oneOnOne",
            "viewpoint": {
                "isHidden": false,
                "lastMessageReadDateTime": "2021-06-03T08:05:49.521Z"
            },
            "isHiddenForAllMembers": false,
            "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",
            "createdBy": {
                "application": null,
                "device": null,
                "user": {
                    "@odata.type": "#microsoft.graph.teamworkUserIdentity",
                    "id": "4595d2f2-7b31-446c-84fd-9b795e63114b",
                    "displayName": null,
                    "userIdentityType": "aadUser",
                    "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f"
                }
            },
            "lastMessagePreview": {
                "id": "1622707540293",
                "createdDateTime": "2021-06-03T08:05:40.293Z",
                "isDeleted": false,
                "messageType": "message",
                "eventDetail": null,
                "body": {
                    "contentType": "html",
                    "content": "<attachment id=\"ee8d34acd36d4dfe87ca6ad4e060b7be\"></attachment>"
                },
                "from": {
                    "device": null,
                    "user": null,
                    "application": {
                        "id": "da7d471b-de7d-4152-8556-1cdf7a564f6c",
                        "displayName": "talla",
                        "applicationIdentityType": "bot"
                    }
                }
            }
        },
        {
            "id": "19:7b5c1643d8d74a03afa0af9c02dd0ef2@thread.v2",
            "topic": "Group chat",
            "createdDateTime": "2021-07-18T22:12:17.231Z",
            "lastUpdatedDateTime": "2021-06-04T05:34:23.980Z",
            "chatType": "group",
            "webUrl": "https://teams.microsoft.com/l/chat/19%3A7b5c1643d8d74a03afa0af9c02dd0ef2%40thread.v2/0?tenantId=df81db53-c7e2-418a-8803-0e68d4b88607",
            "viewpoint": {
                "isHidden": false,
                "lastMessageReadDateTime": "2021-06-04T05:34:23.712Z"
            },
            "isHiddenForAllMembers": false,
            "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",
            "createdBy": {
                "application": null,
                "device": null,
                "user": {
                    "@odata.type": "#microsoft.graph.teamworkUserIdentity",
                    "id": "4595d2f2-7b31-446c-84fd-9b795e63114b",
                    "displayName": null,
                    "userIdentityType": "aadUser",
                    "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f"
                }
            },
            "lastMessagePreview": {
                "id": "1622784857324",
                "createdDateTime": "2021-06-04T05:34:17.324Z",
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
                            "id": "d9a2f9a8-6ca9-4c92-9a1c-ceca33b91762",
                            "displayName": null,
                            "userIdentityType": "aadUser"
                        }
                    ],
                    "initiator": {
                        "application": null,
                        "device": null,
                        "user": {
                            "id": "1fb8890f-423e-4154-8fbf-db6809bc8756",
                            "displayName": null,
                            "userIdentityType": "aadUser"
                        }
                    }
                }
            }
        },
        {
            "id": "19:a6bac1f4daaf4db3bc6ac7536721331f@thread.v2",
            "topic": null,
            "createdDateTime": "2021-05-19T16:46:20.564Z",
            "lastUpdatedDateTime": "2021-05-27T22:13:03.169Z",
            "chatType": "group",
            "viewpoint": {
                "isHidden": false,
                "lastMessageReadDateTime": "2021-05-27T22:13:01.577Z"
            },
            "isHiddenForAllMembers": false,
            "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",
            "createdBy": {
                "application": null,
                "device": null,
                "user": {
                    "@odata.type": "#microsoft.graph.teamworkUserIdentity",
                    "id": "4595d2f2-7b31-446c-84fd-9b795e63114b",
                    "displayName": null,
                    "userIdentityType": "aadUser",
                    "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f"
                }
            },
            "lastMessagePreview": {
                "id": "1621533401696",
                "createdDateTime": "2021-05-20T17:56:41.696Z",
                "isDeleted": false,
                "messageType": "message",
                "eventDetail": null,
                "body": {
                    "contentType": "text",
                    "content": "sup"
                },
                "from": {
                    "application": null,
                    "device": null,
                    "user": {
                        "id": "4595d2f2-7b31-446c-84fd-9b795e63114b",
                        "displayName": "Peter Parker",
                        "userIdentityType": "aadUser"
                    }
                }
            }
        }
    ]
}
```

### Example 4: List all chats that have a member with a specific display name

#### Request

The following example shows a request that filters all the chats based on a specific member's display name.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_chats_expand_members_and_filter"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/chats?$expand=members&$filter=members/any(o: o/displayname eq 'Peter Parker')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-chats-expand-members-and-filter-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-chats-expand-members-and-filter-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-chats-expand-members-and-filter-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-chats-expand-members-and-filter-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-chats-expand-members-and-filter-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-chats-expand-members-and-filter-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-chats-expand-members-and-filter-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-chats-expand-members-and-filter-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> [!NOTE]
> The membership ID returned by server must be treated as opaque strings. The client should not try to parse or make any assumptions about these resource IDs.
>
> The membership results could map to users from different tenants, as indicated in the response, in the future. The client should not assume that all members are from the current tenant only.

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#chats(members())",
    "@odata.count": 2,
    "value": [
        {
            "id": "19:meeting_MjdhNjM4YzUtYzExZi00OTFkLTkzZTAtNTVlNmZmMDhkNGU2@thread.v2",
            "topic": "Meeting chat sample",
            "createdDateTime": "2020-12-08T23:53:05.801Z",
            "lastUpdatedDateTime": "2020-12-08T23:58:32.511Z",
            "chatType": "meeting",
            "viewpoint": {
                "isHidden": false,
                "lastMessageReadDateTime": "2021-06-05T00:01:30.233Z"
            },
            "isHiddenForAllMembers": false,
            "webUrl": "https://teams.microsoft.com/l/chat/19%3Ameeting_MjdhNjM4YzUtYzExZi00OTFkLTkzZTAtNTVlNmZmMDhkNGU2@thread.v2/0?tenantId=b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",
            "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",
            "createdBy": {
                "application": null,
                "device": null,
                "user": {
                    "@odata.type": "#microsoft.graph.teamworkUserIdentity",
                    "id": "4595d2f2-7b31-446c-84fd-9b795e63114b",
                    "displayName": null,
                    "userIdentityType": "aadUser",
                    "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f"
                }
            },
            "members": [
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MmFiOWM3OTYtMjkwMi00NWY4LWI3MTItN2M1YTYzY2Y0MWM0IyNlZWY5Y2IzNi0wNmRlLTQ2OWItODdjZC03MGY0Y2JlMzJkM123=",
                    "roles": [],
                    "displayName": "Tony Stark",
                    "userId": "4595d2f2-7b31-446c-84fd-9b795e63114b",
                    "email": "starkt@contoso.com"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MmFiOWM3OTYtMjkwMi00NWY4LWI3MTItN2M1YTYzY2Y0MWM0IyNlZWY5Y2IzNi0wNmRlLTQ2OWItODdjZC03MGY0Y2JlMz6Jk45=",
                    "roles": [],
                    "displayName": "Peter Parker",
                    "userId": "d74fc2ed-cb0e-4288-a219-b5c71abaf2aa",
                    "email": "parkerp@contoso.com"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MmFiOWM3OTYtMjkwMi00NWY4LWI3MTItN2M1YTYzY2Y0MWM0IyNlZWY5Y2IzNi0wNmRlLTQ2OWItODdjZC03MGY0Y2JlMzJ989kMTQ=",
                    "roles": [],
                    "displayName": "Nick Fury",
                    "userId": "8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca",
                    "email": "furyn@contoso.com"
                }
            ]
        },
        {
            "id": "19:d74fc2ed-cb0e-4288-a219-b5c71abaf2aa_8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca@unq.gbl.spaces",
            "topic": null,
            "createdDateTime": "2020-12-04T23:10:28.51Z",
            "lastUpdatedDateTime": "2020-12-04T23:10:36.925Z",
            "chatType": "oneOnOne",
            "viewpoint": {
                "isHidden": false,
                "lastMessageReadDateTime": "2021-06-05T00:31:30.047Z"
            },
            "isHiddenForAllMembers": false,
            "webUrl": "https://teams.microsoft.com/l/chat/19%3Ad74fc2ed-cb0e-4288-a219-b5c71abaf2aa_8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca@unq.gbl.spaces/0?tenantId=b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",
            "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",
            "createdBy": {
                "application": null,
                "device": null,
                "user": {
                    "@odata.type": "#microsoft.graph.teamworkUserIdentity",
                    "id": "4595d2f2-7b31-446c-84fd-9b795e63114b",
                    "displayName": null,
                    "userIdentityType": "aadUser",
                    "tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f"
                }
            },
            "members": [
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MmFiOWM3OTYtMjkwMi00NWY4LWI3MTItN2M1YTYzY2Y0MWM0IyNlZWY5Y2IzNi0wNmRlLTQ2OWItODdjZC03MGY0Y2JlMzJ989kMTQ=",
                    "roles": [],
                    "displayName": "Nick Fury",
                    "userId": "8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca",
                    "email": "furyn@contoso.com"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MmFiOWM3OTYtMjkwMi00NWY4LWI3MTItN2M1YTYzY2Y0MWM0IyNlZWY5Y2IzNi0wNmRlLTQ2OWItODdjZC03MGY0Y2JlMz6Jk45=",
                    "roles": [],
                    "displayName": "Peter Parker",
                    "userId": "d74fc2ed-cb0e-4288-a219-b5c71abaf2aa",
                    "email": "parkerp@contoso.com"
                }
            ]
        }
    ]
}
```

### Example 5: List all chats in order of the most to least recent chat messages

#### Request

The following example shows a request. **lastMessagePreview/createdDateTime** is passed to sort chats by the most to least recent chat messages.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_chats_orderby"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/chats?$orderby=lastMessagePreview/createdDateTime desc
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-chats-orderby-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-chats-orderby-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-chats-orderby-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-chats-orderby-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-chats-orderby-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-chats-orderby-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-chats-orderby-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-chats-orderby-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#chats",
    "@odata.count": 2,
    "@odata.nextLink": "https://graph.microsoft.com/beta/chats?$orderby=lastMessagePreview%2fcreatedDateTime+desc&$skiptoken=1.kscDYs0BbsYAAAFa8ZyBqlByb3BlcnRpZXOCqVN5bmNTdGF0ZdoBRGV5SmtaV3hwZG1WeVpXUlRaV2R0Wlc1MGN5STZXM3NpYzNSaGNuUWlPaUl5TURJeExUQTRMVEUzVkRFeE9qVXpPakUxTGprd09Tc3dNRG93TUNJc0ltVnVaQ0k2SWpJd01qSXRNRFV0TUROVU1UZzZNVFU2TkRJdU16QTNLekF3T2pBd0luMHNleUp6ZEdGeWQ4APMDRTVOekF0TURFdE1ERlVNREE2BAATcggAcWlMQ0psYm2YAJB4T1Rjd0xUQXgEACJWRFQAAAQABmAA8F8xZExDSjZaWEp2VEUxVFZFUmxiR2wyWlhKbFpGTmxaMjFsYm5SeklqcGJYU3dpYzI5eWRFOXlaR1Z5SWpveExDSnBibU5zZFdSbFdtVnliMHhOVTFRaU9uUnlkV1Y5rExhc3RQYWdlU2l6ZaIyMA%3d%3d",
    "value": [
        {
            "id": "19:670374fa-3b0e-4a3b-9d33-0e1bc5ff1956_bfb5bb25-3a8d-487d-9828-7875ced51a30@unq.gbl.spaces",
            "topic": null,
            "createdDateTime": "2021-11-17T18:48:57.986Z",
            "lastUpdatedDateTime": "2021-11-17T18:48:57.986Z",
            "chatType": "oneOnOne",
            "webUrl": "https://teams.microsoft.com/l/chat/19%3A670374fa-3b0e-4a3b-9d33-0e1bc5ff1956_bfb5bb25-3a8d-487d-9828-7875ced51a30%40unq.gbl.spaces/0?tenantId=2432b57b-0abd-43db-aa7b-16eadd115d34",
            "tenantId": "2432b57b-0abd-43db-aa7b-16eadd115d34",
            "onlineMeetingInfo": null,
            "viewpoint": {
                "isHidden": false,
                "lastMessageReadDateTime": "2022-05-03T18:15:42.307Z"
            },
            "isHiddenForAllMembers": false,
            "createdBy": {
                "application": null,
                "device": null,
                "user": {
                    "@odata.type": "#microsoft.graph.teamworkUserIdentity",
                    "id": "4595d2f2-7b31-446c-84fd-9b795e63114b",
                    "displayName": null,
                    "userIdentityType": "aadUser",
                    "tenantId": "2432b57b-0abd-43db-aa7b-16eadd115d34"
                }
            }
        },
        {
            "id": "19:82fe7758-5bb3-4f0d-a43f-e555fd399c6f_bfb5bb25-3a8d-487d-9828-7875ced51a30@unq.gbl.spaces",
            "topic": null,
            "createdDateTime": "2021-05-26T00:07:00.751Z",
            "lastUpdatedDateTime": "2021-05-26T00:07:14.894Z",
            "chatType": "oneOnOne",
            "webUrl": "https://teams.microsoft.com/l/chat/19%3A82fe7758-5bb3-4f0d-a43f-e555fd399c6f_bfb5bb25-3a8d-487d-9828-7875ced51a30%40unq.gbl.spaces/0?tenantId=2432b57b-0abd-43db-aa7b-16eadd115d34",
            "tenantId": "2432b57b-0abd-43db-aa7b-16eadd115d34",
            "onlineMeetingInfo": null,
            "viewpoint": {
                "isHidden": true,
                "lastMessageReadDateTime": "2022-03-08T19:55:30.491Z"
            },
            "isHiddenForAllMembers": false,
            "createdBy": {
                "application": null,
                "device": null,
                "user": {
                    "@odata.type": "#microsoft.graph.teamworkUserIdentity",
                    "id": "4595d2f2-7b31-446c-84fd-9b795e63114b",
                    "displayName": null,
                    "userIdentityType": "aadUser",
                    "tenantId": "2432b57b-0abd-43db-aa7b-16eadd115d34"
                }
            }
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

### Example 6: List all chats where the app is installed

#### Request

The following example shows a request.


```http
GET https://graph.microsoft.com/beta/users/e652dd92-dd63-4fcc-b5b2-2005681e8e9f/chats?$filter=installedApps/any(a:a/teamsApp/id eq '608d8644-acb1-4ab0-bca5-66fbb6ed62aa')
```

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#chats",
    "@odata.count": 1,
    "value": [
        {
            "id": "19:e652dd92-dd63-4fcc-b5b2-2005681e8e9f_734601fc-bbcd-4a30-9092-3c89f8d788cb@unq.gbl.spaces",
            "topic": null,
            "createdDateTime": "2023-03-03T11:32:33.631Z",
            "lastUpdatedDateTime": "2023-06-08T06:02:19.072Z",
            "chatType": "oneOnOne",
            "webUrl": "https://teams.microsoft.com/l/chat/19%3Ae652dd92-dd63-4fcc-b5b2-2005681e8e9f_734601fc-bbcd-4a30-9092-3c89f8d788cb%40unq.gbl.spaces/0?tenantId=aa923623-ae61-49ee-b401-81f414b6ad5a",
            "tenantId": "aa923623-ae61-49ee-b401-81f414b6ad5a",
            "onlineMeetingInfo": null,
            "viewpoint": {
                "isHidden": false,
                "lastMessageReadDateTime": "2023-06-29T10:22:15.024Z"
            },
            "isHiddenForAllMembers": false,
            "createdBy": {
                "application": null,
                "device": null,
                "user": {
                    "@odata.type": "#microsoft.graph.teamworkUserIdentity",
                    "id": "4595d2f2-7b31-446c-84fd-9b795e63114b",
                    "displayName": null,
                    "userIdentityType": "aadUser",
                    "tenantId": "aa923623-ae61-49ee-b401-81f414b6ad5a"
                }
            }
        }
    ]
}
```
