---
title: "Create Online Meeting"
description: "Creates an online meeting on behalf of a user specified in the request body."
author: "Vinod Ravichandran"
localization_priority: Normal
doc_type: apiPageType
---

# Create online meeting

Creates an online meeting on behalf of a user specified in the request body.

> **Note**: The meeting does not show up on the user's calendar.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | OnlineMeetings.ReadWrite                               |
| Delegated (personal Microsoft account) | Not Supported                               |
| Application                            | OnlineMeetings.ReadWrite.All                |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /app/onlineMeetings
POST /communications/onlineMeetings
POST /me/onlineMeetings
```

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token} Required. |

## Request body
In the request body, supply a JSON representation of an [onlineMeeting](../resources/onlinemeeting.md) object.

## Response
If successful, this method returns `201 Created` response code and an [onlineMeeting](../resources/onlinemeeting.md) object in the response body.

## Examples

#### Example 1: Creating a Meeting with an Application Token

##### Request
>**Note:** Online meeting creation using application token will be deprecated, please use /me path with user token to create online meetings going forward.

<!-- {
  "blockType": "request",
  "name": "create-onlinemeeting-from-application"
}-->
```http
POST https://graph.microsoft.com/v1.0/communications/onlineMeetings
Content-Type: application/json
Content-Length: 1553

{
  "isBroadcast": false,
  "startDateTime":"2019-09-09T14:33:30.8546353-07:00",
  "endDateTime":"2019-09-09T15:03:30.8566356-07:00",
  "subject":"Application Token Meeting",
  "participants": {
    "organizer": {
      "identity": {
        "user": {
          "id": "550fae72-d251-43ec-868c-373732c2704f"
        }
      }
    }
  },
}
```

In the request body, supply a JSON representation of the [onlineMeeting](../resources/onlinemeeting.md) object.

##### Response

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.onlineMeeting"
} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 1574

{
  "autoAdmittedUsers": "everyone",
  "audioConferencing": {
    "tollNumber": "+12525634478",
    "tollFreeNumber": "+18666390588",
    "ConferenceId": "2425999",
    "dialinUrl": "https://dialin.teams.microsoft.com/22f12fa0-499f-435b-bc69-b8de580ba330?id=2425999"
  },
  "canceledDateTime": null,
  "chatInfo": {
    "threadId": "19:meeting_M2IzYzczNTItYmY3OC00MDlmLWJjMzUtYmFiMjNlOTY4MGEz@thread.skype",
    "messageId": "0",
    "replyChainMessageId": "0"
  },
  "creationDateTime": "2019-07-11T02:17:17.6491364Z",
  "startDateTime": "2019-07-11T02:17:17.6491364Z",
  "endDateTime": "2019-07-11T02:47:17.651138Z",
  "id": "550fae72-d251-43ec-868c-373732c2704f_19:meeting_M2IzYzczNTItYmY3OC00MDlmLWJjMzUtYmFiMjNlOTY4MGEz@thread.skype",
  "isCanceled": false,
  "joinUrl": "https://teams.microsoft.com/l/meetup-join/19%3ameeting_M2IzYzczNTItYmY3OC00MDlmLWJjMzUtYmFiMjNlOTY4MGEz%40thread.skype/0?context=%7b%22Tid%22%3a%2272f988bf-86f1-41af-91ab-2d7cd011db47%22%2c%22Oid%22%3a%22550fae72-d251-43ec-868c-373732c2704f%22%7d",
  "isBroadcast": false,
  "participants": {
    "organizer": {
      "identity": {
        "user": {
          "id": "550fae72-d251-43ec-868c-373732c2704f",
          "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
          "displayName": "Heidi Steen"
        }
      },
      "upn": "upn-value"
    }
  },
  "subject": "Application Token Meeting"
}
```

#### Example 2: Creating a Meeting with a User Token

##### Request
The following example shows the request to create an online meeting with user token.

```http
POST https://graph.microsoft.com/v1.0/me/onlineMeetings
Content-Type: application/json
Authorization: Bearer eyJ0eXAiOi

{
  "startDateTime":"2019-07-12T14:30:34.2444915-07:00",
  "endDateTime":"2019-07-12T15:00:34.2464912-07:00",
  "subject":"User Token Meeting"
}
```

In the request body, supply a JSON representation of the [onlineMeeting](../resources/onlinemeeting.md) object.

##### Response

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.


```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 1574
```
<!-- {
  "blockType": "example",
  "truncated": true,
  "@odata.type": "microsoft.graph.onlineMeeting"
} -->

```json
{
  @odata.context=https://graph.microsoft.com/v1.0/$metadata#users('f4053f86-17cc-42e7-85f4-f0389ac980d6')/onlineMeetings/$entity
  "accessLevel": "everyone",
  "audioConferencing": {
    "tollNumber": "+12525634478",
    "tollFreeNumber": "+18666390588",
    "ConferenceId": "2425999",
    "dialinUrl": "https://dialin.teams.microsoft.com/22f12fa0-499f-435b-bc69-b8de580ba330?id=2425999"
  },
  "canceledDateTime": null,
  "chatInfo": {
    "threadId": "19:meeting_M2IzYzczNTItYmY3OC00MDlmLWJjMzUtYmFiMjNlOTY4MGEz@thread.skype",
    "messageId": "0",
    "replyChainMessageId": "0"
  },
  "creationDateTime": "2019-07-11T02:17:17.6491364Z",
  "startDateTime": "2019-07-11T02:17:17.6491364Z",
  "endDateTime": "2019-07-11T02:47:17.651138Z",
  "entryExitAnnouncement": true,
  "expirationDateTime": "2019-09-14T18:37:29.1973954Z",
  "id": "550fae72-d251-43ec-868c-373732c2704f_19:meeting_M2IzYzczNTItYmY3OC00MDlmLWJjMzUtYmFiMjNlOTY4MGEz@thread.skype",
  "isCanceled": false,
  "joinUrl": "https://teams.microsoft.com/l/meetup-join/19%3ameeting_M2IzYzczNTItYmY3OC00MDlmLWJjMzUtYmFiMjNlOTY4MGEz%40thread.skype/0?context=%7b%22Tid%22%3a%2272f988bf-86f1-41af-91ab-2d7cd011db47%22%2c%22Oid%22%3a%22550fae72-d251-43ec-868c-373732c2704f%22%7d",
  "isBroadcast": false,
  "participants": {
    "organizer": {
      "identity": {
        "user": {
          "id": "550fae72-d251-43ec-868c-373732c2704f",
          "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
          "displayName": "Heidi Steen"
        }
      },
      "upn": "upn-value"
    }
  },
  "subject": "User Token Meeting"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create Online Meeting",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
