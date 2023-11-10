---
title: "virtualEventSession resource type"
description: "Represents information about a virtual event session."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# virtualEventSession resource type

Namespace: microsoft.graph

Represents a session in a [virtualEvent](../resources/virtualevent.md)

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List virtualEventSessions](../api/virtualevent-list-sessions.md)|[virtualEventSession](../resources/virtualeventsession.md) collection|Get a list of all [virtualEventSession](../resources/virtualeventsession.md) objects under a virtual event.|
|[Get virtualEventSession](../api/virtualeventsession-get.md)|[virtualEventSession](../resources/virtualeventsession.md)|Read the properties and relationships of a [virtualEventSession](../resources/virtualeventsession.md) object.|

## Properties

Only properties in the below table are being returned in the response.

| Property              | Type                                          | Description    |
| :-------------------- | :-------------------------------------------- | :------------------------------------ |
| chatInfo              | [chatInfo](chatinfo.md) | The chat information associated with the virtual event session.  |
| endDateTime           | [DateTimeTimeZone](datetimetimezone.md) | The virtual event session end time.   |
| id | String | The unique identifier of the virtual event session. Read-only.    |
| joinInformation | [itemBody](itembody.md) | The join information of the virtual event session. Read-only. |
| joinMeetingIdSettings | [joinMeetingIdSettings](joinmeetingidsettings.md) | The **joinMeetingId** of the virtual event session. Read-only. |
| joinWebUrl | String | The join URL of the virtual event session. Read-only. |
| startDateTime | [DateTimeTimeZone](datetimetimezone.md) | The virtual event session start time. |
| subject | String | The subject of the virtual event session. |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|attendanceReports|[meetingAttendanceReport](../resources/meetingattendancereport.md) collection|Attendance reports of this virtual event session. Inherited from [onlineMeeting](../resources/onlinemeeting.md).|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualEventSession",
  "baseType": "microsoft.graph.onlineMeetingBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventSession",
  "id": "String (identifier)",
  "joinWebUrl": "String",
  "subject": "String",
  "audioConferencing": {
    "@odata.type": "microsoft.graph.audioConferencing"
  },
  "chatInfo": {
    "@odata.type": "microsoft.graph.chatInfo"
  },
  "videoTeleconferenceId": "String",
  "joinMeetingIdSettings": {
    "@odata.type": "microsoft.graph.joinMeetingIdSettings"
  },
  "joinInformation": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "lobbyBypassSettings": {
    "@odata.type": "microsoft.graph.lobbyBypassSettings"
  },
  "isEntryExitAnnounced": "Boolean",
  "allowedPresenters": "String",
  "allowAttendeeToEnableMic": "Boolean",
  "allowAttendeeToEnableCamera": "Boolean",
  "allowMeetingChat": "String",
  "allowTeamworkReactions": "Boolean",
  "shareMeetingChatHistoryDefault": "String",
  "allowParticipantsToChangeName": "Boolean",
  "recordAutomatically": "Boolean",
  "watermarkProtection": {
    "@odata.type": "microsoft.graph.watermarkProtectionValues"
  },
  "startDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "endDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  }
}
```

