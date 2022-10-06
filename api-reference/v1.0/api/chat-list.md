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

<!-- {
  "blockType": "request",
  "name": "list_chats"
}-->
```http
GET https://graph.microsoft.com/v1.0/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/chats
```

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
            "chatType": "meeting",
            "chatViewpoint": {
                "isHidden": false,
                "lastMessageReadDateTime": "2021-06-03T08:05:49.521Z"
            },
            "webUrl": "https://teams.microsoft.com/l/chat/19%3Ameeting_MjdhNjM4YzUtYzExZi00OTFkLTkzZTAtNTVlNmZmMDhkNGU2@thread.v2/0?tenantId=b33cbe9f-8ebe-4f2a-912b-7e2a427f477f"
        },
        {
            "id": "19:561082c0f3f847a58069deb8eb300807@thread.v2",
            "topic": "Group chat sample",
            "createdDateTime": "2020-12-03T19:41:07.054Z",
            "lastUpdatedDateTime": "2020-12-08T23:53:11.012Z",
            "chatType": "group",
            "chatViewpoint": {
                "isHidden": false,
                "lastMessageReadDateTime": "2021-05-27T22:13:01.577Z"
            },
            "webUrl": "https://teams.microsoft.com/l/chat/19%3A561082c0f3f847a58069deb8eb300807@thread.v2/0?tenantId=b33cbe9f-8ebe-4f2a-912b-7e2a427f477f"
        },
        {
            "id": "19:d74fc2ed-cb0e-4288-a219-b5c71abaf2aa_8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca@unq.gbl.spaces",
            "topic": null,
            "createdDateTime": "2020-12-04T23:10:28.51Z",
            "lastUpdatedDateTime": "2020-12-04T23:10:36.925Z",
            "chatType": "oneOnOne",
            "chatViewpoint": {
                "isHidden": false,
                "lastMessageReadDateTime": "0001-01-01T00:00:00Z"
            },
            "webUrl": "https://teams.microsoft.com/l/chat/19%3Ad74fc2ed-cb0e-4288-a219-b5c71abaf2aa_8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca@unq.gbl.spaces/0?tenantId=b33cbe9f-8ebe-4f2a-912b-7e2a427f477f"
        }
    ]
}
```

### Example 2: List all chats along with the members of each chat
#### Request

Here is an example of the request.

<!-- {
  "blockType": "request",
  "name": "list_chats_expand_members"
}-->
```http
GET https://graph.microsoft.com/v1.0/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/chats?$expand=members
```

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
    "@odata.count": 3,
    "value": [
        {
            "id": "19:meeting_MjdhNjM4YzUtYzExZi00OTFkLTkzZTAtNTVlNmZmMDhkNGU2@thread.v2",
            "topic": "Meeting chat sample",
            "createdDateTime": "2020-12-08T23:53:05.801Z",
            "lastUpdatedDateTime": "2020-12-08T23:58:32.511Z",
            "chatType": "meeting",
            "chatViewpoint": {
                "isHidden": false,
                "lastMessageReadDateTime": "2021-04-02T08:15:02.091Z"
            },
            "webUrl": "https://teams.microsoft.com/l/chat/19%3Ameeting_MjdhNjM4YzUtYzExZi00OTFkLTkzZTAtNTVlNmZmMDhkNGU2@thread.v2/0?tenantId=b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",
            "members": [
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MmFiOWM3OTYtMjkwMi00NWY4LWI3MTItN2M1YTYzY2Y0MWM0IyNlZWY5Y2IzNi0wNmRlLTQ2OWItODdjZC03MGY0Y2JlMzJkM123=",
                    "roles": [],
                    "displayName": "Tony Stark",
                    "userId": "4595d2f2-7b31-446c-84fd-9b795e63114b",
                    "email": "starkt@teamsgraph.onmicrosoft.com"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MmFiOWM3OTYtMjkwMi00NWY4LWI3MTItN2M1YTYzY2Y0MWM0IyNlZWY5Y2IzNi0wNmRlLTQ2OWItODdjZC03MGY0Y2JlMz6Jk45=",
                    "roles": [],
                    "displayName": "Peter Parker",
                    "userId": "d74fc2ed-cb0e-4288-a219-b5c71abaf2aa",
                    "email": "parkerp@teamsgraph.onmicrosoft.com"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MmFiOWM3OTYtMjkwMi00NWY4LWI3MTItN2M1YTYzY2Y0MWM0IyNlZWY5Y2IzNi0wNmRlLTQ2OWItODdjZC03MGY0Y2JlMzJ989kMTQ=",
                    "roles": [],
                    "displayName": "Nick Fury",
                    "userId": "8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca",
                    "email": "furyn@teamsgraph.onmicrosoft.com"
                }
            ]
        },
        {
            "id": "19:561082c0f3f847a58069deb8eb300807@thread.v2",
            "topic": "Group chat sample",
            "createdDateTime": "2020-12-03T19:41:07.054Z",
            "lastUpdatedDateTime": "2020-12-08T23:53:11.012Z",
            "chatType": "group",
            "chatViewpoint": {
                "isHidden": false,
                "lastMessageReadDateTime": "0001-01-01T00:00:00Z"
            },
            "webUrl": "https://teams.microsoft.com/l/chat/19%3A561082c0f3f847a58069deb8eb300807@thread.v2/0?tenantId=b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",
            "members": [
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MmFiOWM3OTYtMjkwMi00NWY4LWI3MTItN2M1YTYzY2Y0MWM0IyNlZWY5Y2IzNi0wNmRlLTQ2OWItODdjZC03MGY0Y2JlMzJkM123=",
                    "roles": [],
                    "displayName": "Tony Stark",
                    "userId": "4595d2f2-7b31-446c-84fd-9b795e63114b",
                    "email": "starkt@teamsgraph.onmicrosoft.com"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MmFiOWM312ftMjkwMi00NWY4LWI3MTItN2M1YTYzY2Y0MWM0IyNlZWY5Y2IzNi0wNmRlLTQ2OWItODdjZC03MGY0Y2JlMzJkM123=",
                    "roles": [],
                    "displayName": "Bruce Banner",
                    "userId": "48bf9d52-dca7-4a5f-8398-37b95cc7bd83",
                    "email": "bannerb@teamsgraph.onmicrosoft.com"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MmFiOWM3OTYtMjkwMi00NWY4LWai3MTetN2M1YTYzY2Y0MWM0IyNlZWY5Y2IzNi0wNmRlLTQ2OWItODdjZC03MGY0Y2JlMzJkM123=",
                    "roles": [],
                    "displayName": "TChalla",
                    "userId": "9efb1aea-4f83-4673-bdcd-d3f3c7be28c2",
                    "email": "tchalla@teamsgraph.onmicrosoft.com"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MmFiOWM3OTYtMjkwamii00NWY4LWI3MTItN2M1YTYzY2Y0MWM0IyNlZWY5Y2IzNi0wNmRlLTQ2OWItODdjZC03MGY0Y2JlMzJkM123=",
                    "roles": [],
                    "displayName": "Thor Odinson",
                    "userId": "976f4b31-fd01-4e0b-9178-29cc40c14438",
                    "email": "odinsont@teamsgraph.onmicrosoft.com"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MmFiOWM3OTYtMjkwMi00NWopiLWI3MTItN2M1YTYzY2Y0MWM0IyNlZWY5Y2IzNi0wNmRlLTQ2OWItODdjZC03MGY0Y2JlMzJkM123=",
                    "roles": [],
                    "displayName": "Steve Rogers",
                    "userId": "976f4b31-fd01-4e0b-9178-29cc40c14438",
                    "email": "rogerss@teamsgraph.onmicrosoft.com"
                }
            ]
        },
        {
            "id": "19:d74fc2ed-cb0e-4288-a219-b5c71abaf2aa_8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca@unq.gbl.spaces",
            "topic": null,
            "createdDateTime": "2020-12-04T23:10:28.51Z",
            "lastUpdatedDateTime": "2020-12-04T23:10:36.925Z",
            "chatType": "oneOnOne",
            "chatViewpoint": {
                "isHidden": false,
                "lastMessageReadDateTime": "2021-06-05T00:31:30.047Z"
            },
            "webUrl": "https://teams.microsoft.com/l/chat/19%3Ad74fc2ed-cb0e-4288-a219-b5c71abaf2aa_8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca@unq.gbl.spaces/0?tenantId=b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",
            "members": [
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MmFiOWM3OTYtMjkwMi00NWY4LWI3MTItN2M1YTYzY2Y0MWM0IyNlZWY5Y2IzNi0wNmRlLTQ2OWItODdjZC03MGY0Y2JlMzJ989kMTQ=",
                    "roles": [],
                    "displayName": "Nick Fury",
                    "userId": "8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca",
                    "email": "furyn@teamsgraph.onmicrosoft.com"
                },
                {
                    "@odata.type": "#microsoft.graph.aadUserConversationMember",
                    "id": "MmFiOWM3OTYtMjkwMi00NWY4LWI3MTItN2M1YTYzY2Y0MWM0IyNlZWY5Y2IzNi0wNmRlLTQ2OWItODdjZC03MGY0Y2JlMz6Jk45=",
                    "roles": [],
                    "displayName": "Peter Parker",
                    "userId": "d74fc2ed-cb0e-4288-a219-b5c71abaf2aa",
                    "email": "parkerp@teamsgraph.onmicrosoft.com"
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


<!-- {
  "blockType": "request",
  "name": "list_chats_orderby"
}-->
```http
GET https://graph.microsoft.com/v1.0/chats?$orderBy=lastMessagePreview/createdDateTime desc
```

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
            "onlineMeetingInfo": null,
            "viewpoint": {
                "isHidden": false,
                "lastMessageReadDateTime": "2022-05-03T18:15:42.307Z"
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
            }
        }
    ]
}
```

### Example 4: List chats along with the preview of the last message sent in the chat

#### Request

The following example shows a request to list chats along with the preview of the last message sent in the chat. Comparing `createdDateTime` on the preview to `lastMessageReadDateTime` in `viewpoint` allows the caller to determine whether the user has read all messages in a chat.

<!-- {
  "blockType": "request",
  "name": "list_chats_expand_lastMessagePreview"
}-->
```http
GET https://graph.microsoft.com/v1.0/chats?$expand=lastMessagePreview
```

#### Response

The following is an example of the response.

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#chats(lastMessagePreview())",
    "@odata.count": 3,
    "@odata.nextLink": "https://graph.microsoft.com/v1.0/chats?$expand=lastMessagePreview&$skiptoken=eyJDb250aW51YXRpb25Ub2tlbiI6Ilczc2ljM1JoY25RaU9pSXlNREl4TFRBMUxUSTNWREl5T2pFek9qQXpMakUyT1Nzd01Eb3dNQ0lzSW1WdVpDSTZJakl3TWpFdE1EWXRNRFZVTURBNk16RTZNekl1T0RBMkt6QXdPakF3SW4wc2V5SnpkR0Z5ZENJNklqRTVOekF0TURFdE1ERlVNREE2TURBNk1EQXJNREE2TURBaUxDSmxibVFpT2lJeE9UY3dMVEF4TFRBeFZEQXdPakF3T2pBd0xqQXdNU3N3TURvd01DSjlYUT09IiwiQ2hhdFR5cGUiOiJjaGF0fG1lZXRpbmd8c2ZiaW50ZXJvcGNoYXR8cGhvbmVjaGF0In0%3d",
    "value": [
        {
            "id": "19:8ea0e38b-efb3-4757-924a-5f94061cf8c2_976f4b31-fd01-4e0b-9178-29cc40c14438@unq.gbl.spaces",
            "topic": null,
            "createdDateTime": "2021-06-05T00:31:30.767Z",
            "lastUpdatedDateTime": "2021-06-05T00:31:32.806Z",
            "chatType": "oneOnOne",
            "chatViewpoint": {
                "isHidden": false,
                "lastMessageReadDateTime": "2021-06-05T00:31:30.047Z"
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
            "chatViewpoint": {
                "isHidden": false,
                "lastMessageReadDateTime": "2021-06-03T08:05:49.521Z"
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
        }
    ]
}
```
