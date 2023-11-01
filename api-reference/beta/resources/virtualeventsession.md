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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a session in a [virtualEvent](../resources/virtualevent.md)

Inherits from [onlineMeeting](../resources/onlinemeeting.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List virtualEventSessions](../api/virtualeventsession-list.md)|[virtualEventSession](../resources/virtualeventsession.md) collection|Get a list of all [virtualEventSession](../resources/virtualeventsession.md) objects under a virtual event.|
|[Get virtualEventSession](../api/virtualeventsession-get.md)|[virtualEventSession](../resources/virtualeventsession.md)|Read the properties and relationships of a [virtualEventSession](../resources/virtualeventsession.md) object.|

## Properties

Only properties in the below table are being returned in the response.

| Property              | Type                                          | Description    |
| :-------------------- | :-------------------------------------------- | :------------------------------------ |
| chatInfo              | [chatInfo](chatinfo.md) | The chat information associated with the virtual event session.  |
| endDateTime           | [DateTimeTimeZOne](datetimetimezone.md) | The virtual event session end time.   |
| id | String | The unique identifier of the virtual event session. Read-only.    |
| joinInformation | [itemBody](itembody.md) | The join information of the virtual event session. Read-only. |
| joinMeetingIdSettings | [joinMeetingIdSettings](joinmeetingidsettings.md) | The **joinMeetingId** of the virtual event session. Read-only. |
| joinWebUrl | String | The join URL of the virtual event session. Read-only. |
| startDateTime | [DateTimeTimeZOne](datetimetimezone.md) | The virtual event session start time. |
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
  "baseType": "microsoft.graph.onlineMeeting",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventSession",
  "allowAttendeeToEnableCamera": "Boolean",
  "allowAttendeeToEnableMic": "Boolean",
  "allowMeetingChat": "String",
  "allowParticipantsToChangeName": "Boolean",
  "allowTeamworkReactions": "Boolean",
  "allowedPresenters": "String",
  "alternativeRecording": "Stream",
  "anonymizeIdentityForRoles": ["String"],
  "attendeeReport": "Stream",
  "audioConferencing": {"@odata.type": "microsoft.graph.audioConferencing"},
  "broadcastSettings": {"@odata.type": "microsoft.graph.broadcastMeetingSettings"},
  "capabilities": ["String"],
  "chatInfo": {"@odata.type": "microsoft.graph.chatInfo"},
  "creationDateTime": "String (timestamp)",
  "endDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "externalId": "String",
  "id": "String (identifier)",
  "isBroadcast": "Boolean",
  "isEntryExitAnnounced": "Boolean",
  "joinInformation": {"@odata.type": "microsoft.graph.itemBody"},
  "joinMeetingIdSettings": {"@odata.type": "microsoft.graph.joinMeetingIdSettings"},
  "joinUrl": "String",
  "joinWebUrl": "String",
  "lobbyBypassSettings": {"@odata.type": "microsoft.graph.lobbyBypassSettings"},
  "participants": {"@odata.type": "microsoft.graph.meetingParticipants"},
  "recordAutomatically": "Boolean",
  "recording": "Stream",
  "shareMeetingChatHistoryDefault": "String",
  "startDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "subject": "String",
  "videoTeleconferenceId": "String",
  "watermarkProtection": {"@odata.type": "microsoft.graph.watermarkProtectionValues"}
}
```

## See also
[List meetingAttendanceReports](../api/meetingattendancereport-list.md)
