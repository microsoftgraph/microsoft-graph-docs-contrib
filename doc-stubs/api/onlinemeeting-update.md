---
title: "Update onlineMeeting"
description: "Update the properties of an onlineMeeting object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update onlineMeeting
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [onlineMeeting](../resources/onlinemeeting.md) object.

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
PATCH /me/onlineMeetings/{onlineMeetingId}
PATCH /app/onlineMeetings/{onlineMeetingId}
PATCH /communications/onlineMeetings/{onlineMeetingId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [onlineMeeting](../resources/onlinemeeting.md) object.

The following table shows the properties that are required when you update the [onlineMeeting](../resources/onlinemeeting.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|accessLevel|accessLevel|**TODO: Add Description**. The possible values are: `everyone`, `invited`, `locked`, `sameEnterprise`, `sameEnterpriseAndFederated`.|
|allowAttendeeToEnableCamera|Boolean|**TODO: Add Description**|
|allowAttendeeToEnableMic|Boolean|**TODO: Add Description**|
|allowedPresenters|onlineMeetingPresenters|**TODO: Add Description**. The possible values are: `everyone`, `organization`, `roleIsPresenter`, `organizer`, `unknownFutureValue`.|
|allowMeetingChat|meetingChatMode|**TODO: Add Description**. The possible values are: `enabled`, `disabled`, `limited`, `unknownFutureValue`.|
|allowTeamworkReactions|Boolean|**TODO: Add Description**|
|alternativeRecording|Stream|**TODO: Add Description**|
|attendeeReport|Stream|**TODO: Add Description**|
|audioConferencing|[audioConferencing](../resources/audioconferencing.md)|**TODO: Add Description**|
|broadcastSettings|[broadcastMeetingSettings](../resources/broadcastmeetingsettings.md)|**TODO: Add Description**|
|canceledDateTime|DateTimeOffset|**TODO: Add Description**|
|capabilities|meetingCapabilities collection|**TODO: Add Description**. The possible values are: `questionAndAnswer`, `unknownFutureValue`.|
|chatInfo|[chatInfo](../resources/chatinfo.md)|**TODO: Add Description**|
|creationDateTime|DateTimeOffset|**TODO: Add Description**|
|endDateTime|DateTimeOffset|**TODO: Add Description**|
|entryExitAnnouncement|Boolean|**TODO: Add Description**|
|expirationDateTime|DateTimeOffset|**TODO: Add Description**|
|externalId|String|**TODO: Add Description**|
|isBroadcast|Boolean|**TODO: Add Description**|
|isCancelled|Boolean|**TODO: Add Description**|
|isEntryExitAnnounced|Boolean|**TODO: Add Description**|
|joinInformation|[itemBody](../resources/itembody.md)|**TODO: Add Description**|
|joinUrl|String|**TODO: Add Description**|
|lobbyBypassSettings|[lobbyBypassSettings](../resources/lobbybypasssettings.md)|**TODO: Add Description**|
|participants|[meetingParticipants](../resources/meetingparticipants.md)|**TODO: Add Description**|
|recordAutomatically|Boolean|**TODO: Add Description**|
|recording|Stream|**TODO: Add Description**|
|startDateTime|DateTimeOffset|**TODO: Add Description**|
|state|meetingState|**TODO: Add Description**. The possible values are: `inactive`, `active`, `unknownFutureValue`.|
|subject|String|**TODO: Add Description**|
|videoTeleconferenceId|String|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [onlineMeeting](../resources/onlinemeeting.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_onlinemeeting"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/me/onlineMeetings/{onlineMeetingId}
Content-Type: application/json
Content-length: 1445

{
  "@odata.type": "#microsoft.graph.onlineMeeting",
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
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
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
```

