---
title: "onlineMeeting resource type"
description: "Contains information about a meeting."
author: "awang119"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "cloud-communications"
---

# onlineMeeting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about a meeting, including the URL used to join a meeting, the attendees list, and the description.

This resource supports subscribing to [change notifications](/graph/webhooks). See [subscribe to online meetings](/graph/changenotifications-for-onlinemeeting) for more details.

## Methods

| Method | Return Type |Description |
| ------ | ----------- | ---------- |
| [Create](../api/application-post-onlineMeetings.md) | [onlineMeeting](onlinemeeting.md) | Create an online meeting. |
| [Get](../api/onlinemeeting-get.md) | [onlineMeeting](onlinemeeting.md) | Read the properties and relationships of an **onlineMeeting** object. |
| [Update](../api/onlinemeeting-update.md) | [onlineMeeting](onlinemeeting.md) | Update the properties of an **onlineMeeting** object. |
| [Delete](../api/onlinemeeting-delete.md) | None | Delete an **onlineMeeting** object. |
| [Create or get onlineMeeting](../api/onlinemeeting-createorget.md) | [onlineMeeting](onlinemeeting.md) | Create an online meeting with a custom, external ID. If the meeting already exists, retrieve its properties. |
| [List transcripts of an onlineMeeting](../api/onlinemeeting-list-transcripts.md) | [callTranscript](callTranscript.md) collection | Retrieve the list of transcripts of an **onlineMeeting**. |

## Properties

| Property              | Type                                          | Description    |
| :-------------------- | :-------------------------------------------- | :------------------------------------ |
| allowAttendeeToEnableCamera | Boolean | Indicates whether attendees can turn on their camera. |
| allowAttendeeToEnableMic | Boolean | Indicates whether attendees can turn on their microphone. |
| allowMeetingChat      | [meetingChatMode](#meetingchatmode-values) | Specifies the mode of meeting chat. |
| allowParticipantsToChangeName | Boolean | Specifies if participants are allowed to rename themselves in an instance of the meeting. |
| allowTeamworkReactions | Boolean | Indicates if Teams reactions are enabled for the meeting. |
| allowedPresenters     | [onlineMeetingPresenters](#onlinemeetingpresenters-values)| Specifies who can be a presenter in a meeting. |
| alternativeRecording  | Stream | The content stream of the alternative recording of a [Microsoft Teams live event](/microsoftteams/teams-live-events/what-are-teams-live-events). Read-only. |
| attendeeReport        | Stream | The content stream of the attendee report of a [Teams live event](/microsoftteams/teams-live-events/what-are-teams-live-events). Read-only.   |
| audioConferencing     | [audioConferencing](audioconferencing.md)     | The phone access (dial-in) information for an online meeting. Read-only. |
| broadcastSettings     | [broadcastMeetingSettings](broadcastMeetingSettings.md)     | Settings related to a live event.      |
| chatInfo              | [chatInfo](chatinfo.md) | The chat information associated with this online meeting.  |
| creationDateTime      | DateTime | The meeting creation time in UTC. Read-only.     |
| endDateTime           | DateTime | The meeting end time in UTC.   |
| externalId            | String | The external ID. A custom ID. Optional.      |
| id | String | The default ID associated with the online meeting. Read-only.    |
| isBroadcast | Boolean | Indicates whether this is a [Teams live event](/microsoftteams/teams-live-events/what-are-teams-live-events). |
| isEntryExitAnnounced  | Boolean | Indicates whether to announce when callers join or leave. |
| joinInformation | [itemBody](itembody.md) | The join information in the language and locale variant specified in 'Accept-Language' request HTTP header. Read-only. |
| joinMeetingIdSettings | [joinMeetingIdSettings](joinmeetingidsettings.md) | Specifies the **joinMeetingId**, the meeting passcode, and the requirement for the passcode. Once an **onlineMeeting** is created, the **joinMeetingIdSettings** cannot be modified. To make any changes to this property, the meeting needs to be canceled and a new one needs to be created. |
| joinWebUrl | String | The join URL of the online meeting. Read-only. |
| lobbyBypassSettings | [lobbyBypassSettings](lobbyBypassSettings.md) | Specifies which participants can bypass the meeting lobby. |
| participants | [meetingParticipants](meetingparticipants.md) | The participants associated with the online meeting. This includes the organizer and the attendees. |
| recordAutomatically | Boolean | Indicates whether to record the meeting automatically. |
| recording | Stream | The content stream of the recording of a [Teams live event](/microsoftteams/teams-live-events/what-are-teams-live-events). Read-only. |
| startDateTime | DateTime | The meeting start time in UTC. |
| subject | String | The subject of the online meeting. |
| videoTeleconferenceId | String | The video teleconferencing ID. Read-only. |
| watermarkProtection | [watermarkProtectionValues](watermarkprotectionvalues.md)     | Specifies whether a watermark should be applied to a content type by the client application. |
| autoAdmittedUsers (deprecated) | String | The setting that specifies the type of participants that will automatically be allowed into the online meeting. Possible values are: `everyone`, `everyoneInSameAndFederatedCompany`, `everyoneInCompany`, `invitedUsersInCompany`, `organizer`. Read-only. |
| capabilities (deprecated) | meetingCapabilities collection | The list of meeting capabilities. Possible values are: `questionAndAnswer`,`unknownFutureValue`. |

> [!CAUTION]
>
>- The **autoAdmittedUsers** property is deprecated. Use the **scope** property of [lobbyBypassSettings](lobbyBypassSettings.md) instead.
>- The **capabilities** property is deprecated. Use the **isQuestionAndAnswerEnabled** property of [broadcastMeetingSettings](broadcastMeetingSettings.md) instead.

### onlineMeetingPresenters values

| Value              | Description                                                   |
| ------------------ | ------------------------------------------------------------- |
| everyone           | Everyone is a presenter (This is default option).             |
| organization       | Everyone in organizer’s organization is a presenter.          |
| roleIsPresenter    | Only the participants whose role is presenter are presenters. |
| organizer          | Only the organizer  is a presenter.                           |
| unknownFutureValue | Unknown future value.                                         |

> [!TIP]
>
> When creating or updating an online meeting with **allowedPresenters** set to `roleIsPresenter`, include a full list of **attendees** with the specified attendees' **role** set to `presenter` in the request body.

### meetingChatMode values

| Value              | Description                                                            |
| ------------------ | ---------------------------------------------------------------------- |
| enabled            | Meeting chat is enabled.                                               |
| disabled           | Meeting chat is disabled.                                              |
| limited            | Meeting chat is enabled but only for the duration of the meeting call. |
| unknownFutureValue | Unknown future value.                                                  |

## Relationships

| Relationship | Type | Description |
| ------------ | ---- | ----------- |
| attendanceReports | [meetingAttendanceReport](meetingAttendanceReport.md)  collection | The attendance reports of an online meeting. Read-only. |
| registration | [meetingRegistrationBase](meetingregistrationbase.md) | The registration that has been enabled for an online meeting. One online meeting can only have one registration enabled.|
| meetingAttendanceReport (deprecated) | [meetingAttendanceReport](meetingAttendanceReport.md) | The attendance report of the latest online meeting session. Read-only. |
| transcripts | [callTranscript](callTranscript.md) collection | The transcripts of an online meeting. Read-only. |

> [!TIP]
>
>- The **meetingAttendanceReport** property is deprecated. It will remain in beta for backward compatibility. Going forward, please use **attendanceReports** property to retrieve attendance reports of an online meeting.
>- The type of **registration** can be [meetingRegistration](meetingregistration.md) or [externalMeetingRegistration](externalmeetingregistration.md), both of which inherit from [meetingRegistrationBase](meetingregistrationbase.md).

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  "externalId"
  ],
  "@odata.type": "microsoft.graph.onlineMeeting"
}-->
```json
{
  "allowAttendeeToEnableCamera": "Boolean",
  "allowAttendeeToEnableMic": "Boolean",
  "allowMeetingChat": {"@odata.type": "microsoft.graph.meetingChatMode"},
  "allowTeamworkReactions": "Boolean",
  "allowedPresenters": "String",
  "alternativeRecording": "Stream",
  "attendeeReport": "Stream",
  "audioConferencing": {"@odata.type": "microsoft.graph.audioConferencing"},
  "broadcastSettings": {"@odata.type": "microsoft.graph.broadcastSettings"},
  "chatInfo": {"@odata.type": "microsoft.graph.chatInfo"},
  "creationDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "id": "String (identifier)",  
  "isBroadcast": "Boolean",
  "isEntryExitAnnounced": "Boolean",
  "joinInformation": {"@odata.type": "microsoft.graph.itemBody"},
  "joinMeetingIdSettings": {"@odata.type": "microsoft.graph.joinMeetingIdSettings"},
  "joinWebUrl": "String",
  "lobbyBypassSettings": {"@odata.type": "microsoft.graph.lobbyBypassSettings"},
  "participants": {"@odata.type": "microsoft.graph.meetingParticipants"},
  "recordAutomatically": "Boolean",
  "recording": "Stream",
  "startDateTime": "String (timestamp)",  
  "subject": "String",
  "videoTeleconferenceId": "String",
  "watermarkProtection": {"@odata.type": "microsoft.graph.watermarkProtectionValues"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "onlineMeeting resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
