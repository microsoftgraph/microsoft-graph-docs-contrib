---
title: "onlineMeetingbase resource type"
description: "Contains basic information about a meeting."
author: "awang119"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "cloud-communications"
---

# onlineMeetingBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a base online meeting. The base type of [onlineMeeting](onlinemeeting.md) and [virtualEventSession](virtualEventSession.md).

Inherits from [entity](../resources/entity.md).

> [!TIP]
> This is an abstract type and can't be used directly. Use the derived types [onlineMeeting](onlinemeeting.md) and [virtualEventSession](virtualEventSession.md) instead.

## Properties

| Property              | Type                                          | Description    |
| :-------------------- | :-------------------------------------------- | :------------------------------------ |
| allowAttendeeToEnableCamera | Boolean | Indicates whether attendees can turn on their camera. |
| allowAttendeeToEnableMic | Boolean | Indicates whether attendees can turn on their microphone. |
| allowMeetingChat      | [meetingChatMode](#meetingchatmode-values) | Specifies the mode of meeting chat. |
| allowParticipantsToChangeName | Boolean | Specifies if participants are allowed to rename themselves in an instance of the meeting. |
| allowTeamworkReactions | Boolean | Indicates if Teams reactions are enabled for the meeting. |
| allowTranscription | Boolean | Indicates whether transcription is enabled for the meeting. |
| allowRecording | Boolean | Indicates whether recording is enabled for the meeting. |
| allowedPresenters     | [onlineMeetingPresenters](#onlinemeetingpresenters-values)| Specifies who can be a presenter in a meeting. |
| anonymizeIdentityForRoles    | onlineMeetingRole collection | Specifies whose identity is anonymized in the meeting. Possible values are: `attendee`. The `attendee` value can't be removed through a PATCH operation once added.|
| audioConferencing     | [audioConferencing](audioconferencing.md)     | The phone access (dial-in) information for an online meeting. Read-only. |
| chatInfo              | [chatInfo](chatinfo.md) | The chat information associated with this online meeting.  |
| id | String | The default ID associated with the online meeting. Read-only.    |
| isEntryExitAnnounced  | Boolean | Indicates whether to announce when callers join or leave. |
| joinInformation | [itemBody](itembody.md) | The join information in the language and locale variant specified in 'Accept-Language' request HTTP header. Read-only. |
| joinMeetingIdSettings | [joinMeetingIdSettings](joinmeetingidsettings.md) | Specifies the **joinMeetingId**, the meeting passcode, and the requirement for the passcode. Once an **onlineMeeting** is created, the **joinMeetingIdSettings** can't be modified. To make any changes to this property, the meeting needs to be canceled and a new one needs to be created. |
| joinWebUrl | String | The join URL of the online meeting. Read-only. |
| lobbyBypassSettings | [lobbyBypassSettings](lobbyBypassSettings.md) | Specifies which participants can bypass the meeting lobby. |
| recordAutomatically | Boolean | Indicates whether to record the meeting automatically. |
| shareMeetingChatHistoryDefault | meetingChatHistoryDefaultMode |Specifies whether meeting chat history is shared with participants.  Possible values are: `all`, `none`, `unknownFutureValue`.|
| subject | String | The subject of the online meeting. |
| videoTeleconferenceId | String | The video teleconferencing ID. Read-only. |
| watermarkProtection | [watermarkProtectionValues](watermarkprotectionvalues.md)     | Specifies whether the client application should apply a watermark to a content type.  |

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

| Relationship | Type | Description |
| ------------ | ---- | ----------- |
| attendanceReports | [meetingAttendanceReport](meetingattendancereport.md) collection | The attendance reports of an online meeting. Read-only. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onlineMeetingBase",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
```json
{
  "allowAttendeeToEnableCamera": "Boolean",
  "allowAttendeeToEnableMic": "Boolean",
  "allowMeetingChat": {"@odata.type": "microsoft.graph.meetingChatMode"},
  "allowTeamworkReactions": "Boolean",
  "allowedPresenters": "String",
  "anonymizeIdentityForRoles": ["String"],
  "audioConferencing": {"@odata.type": "microsoft.graph.audioConferencing"},
  "chatInfo": {"@odata.type": "microsoft.graph.chatInfo"},
  "id": "String (identifier)",  
  "isEntryExitAnnounced": "Boolean",
  "joinInformation": {"@odata.type": "microsoft.graph.itemBody"},
  "joinMeetingIdSettings": {"@odata.type": "microsoft.graph.joinMeetingIdSettings"},
  "joinWebUrl": "String",
  "lobbyBypassSettings": {"@odata.type": "microsoft.graph.lobbyBypassSettings"},
  "recordAutomatically": "Boolean",
  "shareMeetingChatHistoryDefault": "microsoft.graph.meetingChatHistoryDefaultMode",
  "subject": "String",
  "videoTeleconferenceId": "String",
  "watermarkProtection": {"@odata.type": "microsoft.graph.watermarkProtectionValues"}
}
```
