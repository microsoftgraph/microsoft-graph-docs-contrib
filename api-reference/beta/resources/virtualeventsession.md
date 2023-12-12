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

Inherits from [onlineMeetingBase](../resources/onlinemeetingBase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List virtualEventSessions](../api/virtualeventsession-list.md)|[virtualEventSession](../resources/virtualeventsession.md) collection|Get a list of all [virtualEventSession](../resources/virtualeventsession.md) objects under a virtual event.|
|[Get virtualEventSession](../api/virtualeventsession-get.md)|[virtualEventSession](../resources/virtualeventsession.md)|Read the properties and relationships of a [virtualEventSession](../resources/virtualeventsession.md) object.|

## Properties

Currently, only the following properties are filled out on a **virtualEventSession** object when it's returned. All other properties on the returned **virtualEventSession** object are null.

| Property              | Type                                          | Description    |
| :-------------------- | :-------------------------------------------- | :------------------------------------ |
| chatInfo              | [chatInfo](chatinfo.md) | The chat information associated with the virtual event session. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md). |
| endDateTime           | [DateTimeTimeZone](datetimetimezone.md) | The virtual event session end time.   |
| id | String | The unique identifier of the virtual event session. Read-only. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md).    |
| joinInformation | [itemBody](itembody.md) | The join information of the virtual event session. Read-only. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md). |
| joinMeetingIdSettings | [joinMeetingIdSettings](joinmeetingidsettings.md) | The **joinMeetingId** of the virtual event session. Read-only. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md). |
| joinWebUrl | String | The join URL of the virtual event session. Read-only. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md). |
| startDateTime | [DateTimeTimeZone](datetimetimezone.md) | The virtual event session start time. |
| subject | String | The subject of the virtual event session. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md). |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|attendanceReports|[meetingAttendanceReport](../resources/meetingattendancereport.md) collection|Attendance reports of this virtual event session. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md).|

## JSON representation

The following JSON representation shows the resource type.
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
  "audioConferencing": {"@odata.type": "microsoft.graph.audioConferencing"},
  "chatInfo": {"@odata.type": "microsoft.graph.chatInfo"},
  "endDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "id": "String (identifier)",
  "isEntryExitAnnounced": "Boolean",
  "joinInformation": {"@odata.type": "microsoft.graph.itemBody"},
  "joinMeetingIdSettings": {"@odata.type": "microsoft.graph.joinMeetingIdSettings"},
  "joinWebUrl": "String",
  "lobbyBypassSettings": {"@odata.type": "microsoft.graph.lobbyBypassSettings"},
  "recordAutomatically": "Boolean",
  "shareMeetingChatHistoryDefault": "String",
  "startDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "subject": "String",
  "videoTeleconferenceId": "String",
  "watermarkProtection": {"@odata.type": "microsoft.graph.watermarkProtectionValues"}
}
```

## See also
[List meetingAttendanceReports](../api/meetingattendancereport-list.md)
