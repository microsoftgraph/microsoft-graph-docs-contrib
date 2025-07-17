---
title: "virtualEventSession resource type"
description: "Represents information about a virtual event session."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 08/08/2024
---

# virtualEventSession resource type

Namespace: microsoft.graph

Represents a session in a [virtualEvent](../resources/virtualevent.md).

Inherits from [onlineMeetingBase](../resources/onlinemeetingbase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/virtualevent-list-sessions.md)|[virtualEventSession](../resources/virtualeventsession.md) collection|Get a list of all [virtualEventSession](../resources/virtualeventsession.md) objects under a virtual event.|
|[Get](../api/virtualeventsession-get.md)|[virtualEventSession](../resources/virtualeventsession.md)|Read the properties and relationships of a [virtualEventSession](../resources/virtualeventsession.md) object.|

## Properties

| Property              | Type                                          | Description    |
| :-------------------- | :-------------------------------------------- | :------------------------------------ |
| allowAttendeeToEnableCamera | Boolean | Indicates whether attendees can turn on their camera. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| allowAttendeeToEnableMic | Boolean | Indicates whether attendees can turn on their microphone. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| allowBreakoutRooms | Boolean | Indicates whether breakout rooms are enabled for the virtual event session. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| allowLiveShare | [meetingLiveShareOptions](../resources/onlinemeetingbase.md#meetingliveshareoptions-values) | Indicates whether live share is enabled for the virtual event session. Possible values are: `enabled`, `disabled`, `unknownFutureValue`. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| allowMeetingChat      | [meetingChatMode](#meetingchatmode-values) | Specifies the mode of meeting chat. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| allowParticipantsToChangeName | Boolean | Specifies whether participants are allowed to rename themselves in an instance of the meeting. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| allowPowerPointSharing | Boolean | Indicates whether PowerPoint live is enabled for the virtual event session. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| allowRecording | Boolean | Indicates whether recording is enabled for the virtual event session. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| allowTeamworkReactions | Boolean | Indicates whether Teams reactions are enabled for the virtual event session. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| allowTranscription | Boolean | Indicates whether transcription is enabled for the virtual event session. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| allowWhiteboard | Boolean | Indicates whether whiteboard is enabled for the virtual event session. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| allowedLobbyAdmitters | [allowedLobbyAdmitterRoles](../resources/onlinemeetingbase.md#allowedlobbyadmitterroles-values) | Specifies the users who can admit from the lobby. Possible values are: `organizerAndCoOrganizersAndPresenters`, `organizerAndCoOrganizers`, `unknownFutureValue`. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| allowedPresenters     | [onlineMeetingPresenters](#onlinemeetingpresenters-values)| Specifies who can be a presenter in a virtual event session. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| anonymizeIdentityForRoles    | onlineMeetingRole collection | Specifies whose identity is anonymized in the virtual event session. Possible values are: `attendee`. The `attendee` value can't be removed through a PATCH operation once added. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).|
| audioConferencing     | [audioConferencing](audioconferencing.md)     | The phone access (dial-in) information for the virtual event session. Read-only. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| chatRestrictions | [chatRestrictions](../resources/chatrestrictions.md) | Specifies the configuration settings for meeting chat restrictions. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| chatInfo              | [chatInfo](chatinfo.md) | The chat information associated with the virtual event session. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| endDateTime           | [DateTimeTimeZone](../resources/datetimetimezone.md) | The virtual event session end time.   |
| id | String | The unique identifier of the virtual event session. Read-only. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| isEntryExitAnnounced  | Boolean | Indicates whether to announce when callers join or leave. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| joinInformation | [itemBody](itembody.md) | The join information of the virtual event session. Read-only. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| joinMeetingIdSettings | [joinMeetingIdSettings](joinmeetingidsettings.md) | Specifies the **joinMeetingId**, the meeting passcode, and the requirement for the passcode. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| joinWebUrl | String | The join URL of the virtual event session. Read-only. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| lobbyBypassSettings | [lobbyBypassSettings](lobbyBypassSettings.md) | Specifies which participants can bypass the meeting lobby. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| recordAutomatically | Boolean | Indicates whether to record the virtual event session automatically. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| startDateTime | [DateTimeTimeZone](../resources/datetimetimezone.md) | The virtual event session start time. |
| subject | String | The subject of the virtual event session. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| videoOnDemandWebUrl | String | The [URL of the video on demand (VOD)](/microsoftteams/manage-vod-publishing) for Microsoft Teams events that allows webinar and town hall organizers to quickly publish and share event recordings. |
| videoTeleconferenceId | String | The video teleconferencing ID. Read-only. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| watermarkProtection | [watermarkProtectionValues](watermarkprotectionvalues.md)     | Specifies whether the client application should apply a watermark to a content type. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |

### onlineMeetingPresenters values

| Value              | Description                                                   |
| ------------------ | ------------------------------------------------------------- |
| everyone           | Everyone is a presenter. Default.                             |
| organization       | Everyone in organizer’s organization is a presenter.          |
| roleIsPresenter    | Only the participants whose role is presenter are presenters. |
| organizer          | Only the organizer  is a presenter.                           |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.              |

### meetingChatMode values

| Value              | Description                                                            |
| ------------------ | ---------------------------------------------------------------------- |
| enabled            | Meeting chat is enabled.                                               |
| disabled           | Meeting chat is disabled.                                              |
| limited            | Meeting chat is enabled but only during the meeting call. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.                       |

### meetingChatHistoryDefaultMode values

| Value              | Description                                                            |
| ------------------ | ---------------------------------------------------------------------- |
| all                | All meeting chat history is shared.                                    |
| none               | No meeting chat history is shared.                                     |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.                       |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|attendanceReports|[meetingAttendanceReport](../resources/meetingattendancereport.md) collection|Attendance reports of this virtual event session. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualEventSession",
  "openType": false,
  "baseType": "microsoft.graph.onlineMeetingBase"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventSession",
  "allowAttendeeToEnableCamera": "Boolean",
  "allowAttendeeToEnableMic": "Boolean",
  "allowBreakoutRooms": "Boolean",
  "allowedLobbyAdmitters": "String",
  "allowedPresenters": "String",
  "allowLiveShare": "String",
  "allowMeetingChat": "String",
  "allowPowerPointSharing": "Boolean",
  "allowParticipantsToChangeName": "Boolean",
  "allowTeamworkReactions": "Boolean",
  "allowWhiteboard": "Boolean",
  "audioConferencing": {"@odata.type": "microsoft.graph.audioConferencing"},
  "chatInfo": {"@odata.type": "microsoft.graph.chatInfo"},
  "chatRestrictions":{"@odata.type": "microsoft.graph.chatRestrictions"},
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
  "videoOnDemandWebUrl": "String",
  "videoTeleconferenceId": "String",
  "watermarkProtection": {"@odata.type": "microsoft.graph.watermarkProtectionValues"}
}
```

## Related content
[List meetingAttendanceReports](../api/meetingattendancereport-list.md)
