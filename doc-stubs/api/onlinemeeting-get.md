---
title: "Get onlineMeeting"
description: "Read the properties and relationships of an onlineMeeting object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get onlineMeeting
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [onlineMeeting](../resources/onlinemeeting.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/onlineMeetings/{onlineMeetingId}
GET /app/onlineMeetings/{onlineMeetingId}
GET /communications/onlineMeetings/{onlineMeetingId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [onlineMeeting](../resources/onlinemeeting.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_onlinemeeting"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/onlineMeetings/{onlineMeetingId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.onlineMeeting"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.onlineMeeting",
    "id": "bcb3c092-c092-bcb3-92c0-b3bc92c0b3bc",
    "accessLevel": "String",
    "allowAttendeeToEnableCamera": "Boolean",
    "allowAttendeeToEnableMic": "Boolean",
    "allowedPresenters": "String",
    "allowMeetingChat": "String",
    "allowTeamworkReactions": "Boolean",
    "alternativeRecording": "Stream",
    "attendeeReport": "Stream",
    "audioConferencing": {
      "@odata.type": "microsoft.graph.audioConferencing"
    },
    "broadcastSettings": {
      "@odata.type": "microsoft.graph.broadcastMeetingSettings"
    },
    "canceledDateTime": "String (timestamp)",
    "capabilities": [
      "String"
    ],
    "chatInfo": {
      "@odata.type": "microsoft.graph.chatInfo"
    },
    "creationDateTime": "String (timestamp)",
    "endDateTime": "String (timestamp)",
    "entryExitAnnouncement": "Boolean",
    "expirationDateTime": "String (timestamp)",
    "externalId": "String",
    "isBroadcast": "Boolean",
    "isCancelled": "Boolean",
    "isEntryExitAnnounced": "Boolean",
    "joinInformation": {
      "@odata.type": "microsoft.graph.itemBody"
    },
    "joinUrl": "String",
    "lobbyBypassSettings": {
      "@odata.type": "microsoft.graph.lobbyBypassSettings"
    },
    "participants": {
      "@odata.type": "microsoft.graph.meetingParticipants"
    },
    "recordAutomatically": "Boolean",
    "recording": "Stream",
    "startDateTime": "String (timestamp)",
    "state": "String",
    "subject": "String",
    "videoTeleconferenceId": "String"
  }
}
```

