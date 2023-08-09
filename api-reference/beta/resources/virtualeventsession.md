---
title: "virtualEventSession resource type"
description: "Information about a virtual event session."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# virtualEventSession resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a session in a [virtualEvent](../resources/virtualevent.md)

Inherits from [onlineMeeting](../resources/onlinemeeting.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get virtualEventSession](../api/virtualeventsession-get.md)|[virtualEventSession](../resources/virtualeventsession.md)|Read the properties and relationships of a [virtualEventSession](../resources/virtualeventsession.md) object.|

## Properties

Reference base type [onlineMeeting](../resources/onlinemeeting.md).

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|attendanceReports|[meetingAttendanceReport](../resources/meetingattendancereport.md) collection|Attendance reports of the virtual event session. Inherited from [microsoft.graph.onlineMeeting](../resources/onlinemeeting.md).|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualEventSession",
  "baseType": "microsoft.graph.onlineMeeting",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventSession",
  "id": "String (identifier)",
  "creationDateTime": "String (timestamp)",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "joinUrl": "String",
  "joinWebUrl": "String",
  "subject": "String",
  "participants": {
    "@odata.type": "microsoft.graph.meetingParticipants"
  },
  "isBroadcast": "Boolean",
  "broadcastSettings": {
    "@odata.type": "microsoft.graph.broadcastMeetingSettings"
  },
  "capabilities": [
    "String"
  ],
  "audioConferencing": {
    "@odata.type": "microsoft.graph.audioConferencing"
  },
  "chatInfo": {
    "@odata.type": "microsoft.graph.chatInfo"
  },
  "videoTeleconferenceId": "String",
  "externalId": "String",
  "joinInformation": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "joinMeetingIdSettings": {
    "@odata.type": "microsoft.graph.joinMeetingIdSettings"
  },
  "lobbyBypassSettings": {
    "@odata.type": "microsoft.graph.lobbyBypassSettings"
  },
  "isEntryExitAnnounced": "Boolean",
  "allowedPresenters": "String",
  "allowAttendeeToEnableMic": "Boolean",
  "allowAttendeeToEnableCamera": "Boolean",
  "allowMeetingChat": "String",
  "shareMeetingChatHistoryDefault": "String",
  "allowTeamworkReactions": "Boolean",
  "anonymizeIdentityForRoles": [
    "String"
  ],
  "recordAutomatically": "Boolean",
  "attendeeReport": "Stream",
  "recording": "Stream",
  "alternativeRecording": "Stream",
  "watermarkProtection": {
    "@odata.type": "microsoft.graph.watermarkProtectionValues"
  },
  "allowParticipantsToChangeName": "Boolean"
}
```

## See also
[List meetingAttendanceReports](../api/meetingattendancereport-list.md)
