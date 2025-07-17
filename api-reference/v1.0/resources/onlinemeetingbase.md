---
title: "onlineMeetingbase resource type"
description: "Contains basic information about a meeting."
author: "awang119"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "cloud-communications"
ms.date: 08/08/2024
---

# onlineMeetingBase resource type

Namespace: microsoft.graph

Represents a base online meeting. The base type of [onlineMeeting](onlinemeeting.md) and [virtualEventSession](virtualEventSession.md).

Inherits from [entity](../resources/entity.md).

> [!TIP]
> This is an abstract type and can't be used directly. Use the derived types [onlineMeeting](onlinemeeting.md) and [virtualEventSession](virtualEventSession.md) instead.

## Properties

| Property              | Type                                          | Description    |
| :-------------------- | :-------------------------------------------- | :------------------------------------ |
| allowAttendeeToEnableCamera | Boolean | Indicates whether attendees can turn on their camera. |
| allowAttendeeToEnableMic | Boolean | Indicates whether attendees can turn on their microphone. |
| allowBreakoutRooms | Boolean | Indicates whether breakout rooms are enabled for the meeting. |
| allowedPresenters     | [onlineMeetingPresenters](#onlinemeetingpresenters-values)| Specifies who can be a presenter in a meeting. |
| allowMeetingChat      | [meetingChatMode](#meetingchatmode-values) | Specifies the mode of the meeting chat. |
| allowLiveShare | [meetingLiveShareOptions](#meetingliveshareoptions-values) | Indicates whether live share is enabled for the meeting. Possible values are: `enabled`, `disabled`, `unknownFutureValue`. |
| allowParticipantsToChangeName | Boolean | Specifies if participants are allowed to rename themselves in an instance of the meeting. |
| allowTeamworkReactions | Boolean | Indicates if Teams reactions are enabled for the meeting. |
| allowTranscription | Boolean | Indicates whether transcription is enabled for the meeting. |
| allowPowerPointSharing | Boolean | Indicates whether PowerPoint live is enabled for the meeting. |
| allowRecording | Boolean | Indicates whether recording is enabled for the meeting. |
| allowWhiteboard | Boolean | Indicates whether whiteboard is enabled for the meeting. |
| allowedLobbyAdmitters | [allowedLobbyAdmitterRoles](#allowedlobbyadmitterroles-values) | Specifies the users who can admit from the lobby. Possible values are: `organizerAndCoOrganizersAndPresenters`, `organizerAndCoOrganizers`, `unknownFutureValue`. |
| allowedPresenters     | [onlineMeetingPresenters](#onlinemeetingpresenters-values)| Specifies who can be a presenter in a meeting. |
| anonymizeIdentityForRoles    | onlineMeetingRole collection | Specifies whose identity is anonymized in the meeting. Possible values are: `attendee`. The `attendee` value can't be removed through a PATCH operation once added.|
| audioConferencing     | [audioConferencing](audioconferencing.md)     | The phone access (dial-in) information for an online meeting. Read-only. |
| chatInfo              | [chatInfo](chatinfo.md) | The chat information associated with this online meeting.  |
| chatRestrictions      | [chatRestrictions](../resources/chatrestrictions.md) | Specifies the configuration settings for meeting chat restrictions. |
| id | String | The default ID associated with the online meeting. Read-only.    |
| isEntryExitAnnounced  | Boolean | Indicates whether to announce when callers join or leave. |
| joinInformation | [itemBody](itembody.md) | The join information in the language and locale variant specified in 'Accept-Language' request HTTP header. Read-only. |
| joinMeetingIdSettings | [joinMeetingIdSettings](joinmeetingidsettings.md) | Specifies the **joinMeetingId**, the meeting passcode, and the requirement for the passcode. Once an **onlineMeeting** is created, the **joinMeetingIdSettings** can't be modified. To make any changes to this property, you must cancel this meeting and create a new one. |
| joinWebUrl | String | The join URL of the online meeting. Read-only. |
| lobbyBypassSettings | [lobbyBypassSettings](lobbyBypassSettings.md) | Specifies which participants can bypass the meeting lobby. |
| recordAutomatically | Boolean | Indicates whether to record the meeting automatically. |
| shareMeetingChatHistoryDefault | meetingChatHistoryDefaultMode |Specifies whether meeting chat history is shared with participants.  Possible values are: `all`, `none`, `unknownFutureValue`.|
| subject | String | The subject of the online meeting. |
| videoTeleconferenceId | String | The video teleconferencing ID. Read-only. |
| watermarkProtection | [watermarkProtectionValues](watermarkprotectionvalues.md)     | Specifies whether the client application should apply a watermark to a content type.  |

### allowedLobbyAdmitterRoles values

| Value                                 | Description                                       |
|---------------------------------------|---------------------------------------------------|
| organizerAndCoOrganizersAndPresenters | Meeting organizer, co-organizers, and presenters. |
| organizerAndCoOrganizers              | Meeting organizer and co-organizers.              |
| unknownFutureValue                    | Evolvable enumeration sentinel value. Don't use.  |

### meetingChatMode values

| Value              | Description                                                            |
| ------------------ | ---------------------------------------------------------------------- |
| enabled            | Meeting chat is enabled.                                  |
| disabled           | Meeting chat is disabled.                                 |
| limited            | Meeting chat is enabled but only during the meeting call. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.                       |

### meetingChatHistoryDefaultMode values

| Value              | Description                                                            |
| ------------------ | ---------------------------------------------------------------------- |
| all                | All meeting chat history is shared.                                    |
| none               | No meeting chat history is shared.                                     |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.                       |

### meetingLiveShareOptions values

| Value              | Description                                                            |
| ------------------ | ---------------------------------------------------------------------- |
| enabled            | Meeting live share is enabled.                                         |
| disabled           | Meeting live share is disabled.                                        |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.                       |

### onlineMeetingPresenters values

| Value              | Description                                                   |
| ------------------ | ------------------------------------------------------------- |
| everyone           | Everyone is a presenter. Default.                             |
| organization       | Everyone in organizer’s organization is a presenter.          |
| roleIsPresenter    | Only the participants whose role is presenter are presenters. |
| organizer          | Only the organizer is a presenter.                            |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.              |

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
  "allowBreakoutRooms": "Boolean",
  "allowMeetingChat": {"@odata.type": "microsoft.graph.meetingChatMode"},
  "allowTeamworkReactions": "Boolean",
  "allowedLobbyAdmitters": "String",
  "allowedPresenters": "String",
  "allowLiveShare": "String",
  "allowMeetingChat": {"@odata.type": "microsoft.graph.meetingChatMode"},
  "allowPowerPointSharing": "Boolean",
  "allowRecording": "Boolean",
  "allowTeamworkReactions": "Boolean",
  "allowTranscription": "Boolean",
  "allowWhiteboard": "Boolean",
  "anonymizeIdentityForRoles": ["String"],
  "audioConferencing": {"@odata.type": "microsoft.graph.audioConferencing"},
  "chatInfo": {"@odata.type": "microsoft.graph.chatInfo"},
  "chatRestrictions":{"@odata.type": "microsoft.graph.chatRestrictions"},
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
