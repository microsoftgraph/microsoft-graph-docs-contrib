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

Contains information about a meeting, including the URL used to join a meeting, the attendees list, and the description.

## Methods

| Method                                                             | Return Type                       | Description                                                                                                  |
| :----------------------------------------------------------------- | :-------------------------------- | :----------------------------------------------------------------------------------------------------------- |
| [Create onlineMeeting](../api/application-post-onlineMeetings.md)  | [onlineMeeting](onlinemeeting.md) | Create an online meeting.                                                                                    |
| [Get onlineMeeting](../api/onlinemeeting-get.md)                   | [onlineMeeting](onlinemeeting.md) | Read the properties and relationships of an **onlineMeeting** object.                                        |
| [Update](../api/onlinemeeting-update.md)                           | [onlineMeeting](onlinemeeting.md) | Update the properties of an **onlineMeeting** object. |
| [Delete onlineMeeting](../api/onlinemeeting-delete.md)             | None                              | Delete an **onlineMeeting** object.                                                                                    |
| [Create or get onlineMeeting](../api/onlinemeeting-createorget.md) | [onlineMeeting](onlinemeeting.md) | Create an **onlineMeeting** object with a custom, external ID. If the meeting already exists, retrieve its properties. |
| [List transcripts of an onlineMeeting](../api/onlinemeeting-list-transcripts.md) | [callTranscript](calltranscript.md) collection | Retrieve the list of transcripts of an **onlineMeeting**. |
| [List recordings of an onlineMeeting](../api/onlinemeeting-list-recordings.md) | [callRecording](callrecording.md) collection | Retrieve the list of recordings of an **onlineMeeting**. |

> [!NOTE]
> 
> A bearer token is required for the `Authorization` header for all the methods listed in the previous table. For details about how to get the `token` for the `Authorization` header, see [Get access on behalf of a user](/graph/auth-v2-user?tabs=http#3-request-an-access-token).

> [!CAUTION] 
> 
> Graph Online Meeting APIs that support Microsoft Teams live event is deprecated and will stop functioning on September 30, 2024. New Graph APIs will replace this in Spring of 2024. For more information, see [Retirement of Teams live events API on Microsoft Graph](https://devblogs.microsoft.com/microsoft365dev/deprecation-of-teams-live-events-api-on-microsoft-graph/). 

## Properties

| Property   | Type  | Description  |
| :-------------------- | :-------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------- |
| allowAttendeeToEnableCamera     | Boolean                       | Indicates whether attendees can turn on their camera.                          |
| allowAttendeeToEnableMic     | Boolean                       | Indicates whether attendees can turn on their microphone.                          |
| allowedPresenters     | [onlineMeetingPresenters](#onlinemeetingpresenters-values)                       | Specifies who can be a presenter in a meeting. Possible values are listed in the following table.                          |
| allowMeetingChat      | [meetingChatMode](#meetingchatmode-values) | Specifies the mode of meeting chat. |
| allowParticipantsToChangeName | Boolean | Specifies if participants are allowed to rename themselves in an instance of the meeting. |
| allowTeamworkReactions | Boolean | Indicates whether Teams reactions are enabled for the meeting. |
| attendeeReport (deprecated) | Stream | The content stream of the attendee report of a [Microsoft Teams live event](/microsoftteams/teams-live-events/what-are-teams-live-events). Read-only. |
| audioConferencing     | [audioConferencing](audioconferencing.md)     | The phone access (dial-in) information for an online meeting. Read-only.                                                   |
| broadcastSettings (deprecated)     | [broadcastMeetingSettings](broadcastMeetingSettings.md)                      | Settings related to a live event.                                                                  |
| chatInfo              | [chatInfo](chatinfo.md)                       | The chat information associated with this online meeting.                                                                  |
| creationDateTime      | DateTime                                      | The meeting creation time in UTC. Read-only.                                                                               |
| endDateTime           | DateTime                                      | The meeting end time in UTC.                                                                                               |
| id                    | String                                        | The default ID associated with the online meeting. Read-only.                                                              |
| isBroadcast (deprecated) | Boolean                                       | Indicates if this is a [Teams live event](/microsoftteams/teams-live-events/what-are-teams-live-events).                  |
| isEntryExitAnnounced  | Boolean                                       | Indicates whether to announce when callers join or leave.                                                                     |
| joinInformation       | [itemBody](itembody.md)                       | The join information in the language and locale variant specified in the `Accept-Language` request HTTP header. Read-only. |
| joinMeetingIdSettings | [joinMeetingIdSettings](joinmeetingidsettings.md) | Specifies the **joinMeetingId**, the meeting passcode, and the requirement for the passcode. Once an **onlineMeeting** is created, the **joinMeetingIdSettings** can't be modified. To make any changes to this property, the meeting needs to be canceled and a new one needs to be created.                  |
| joinWebUrl            | String                                        | The join URL of the online meeting. Read-only.                                                                             |
| lobbyBypassSettings   | [lobbyBypassSettings](lobbyBypassSettings.md) | Specifies which participants can bypass the meeting   lobby.                                                               |
| participants          | [meetingParticipants](meetingparticipants.md) | The participants associated with the online meeting.  This includes the organizer and the attendees.                       |
| recordAutomatically | Boolean | Indicates whether to record the meeting automatically. |
| shareMeetingChatHistoryDefault | [meetingChatHistoryDefaultMode](#meetingchathistorydefaultmode-values) | Specifies whether meeting chat history is shared with participants. Possible values are: `all`, `none`, `unknownFutureValue`. |
| startDateTime         | DateTime                                      | The meeting start time in UTC.                                                                                             |
| subject               | String                                        | The subject of the online meeting.                                                                                         |
| videoTeleconferenceId | String                                        | The video teleconferencing ID. Read-only.                                                                                  |
| watermarkProtection | [watermarkProtectionValues](watermarkprotectionvalues.md)     | Specifies whether a watermark should be applied to a content type by the client application. |

### onlineMeetingPresenters values

| Value              | Description                                                   |
| ------------------ | ------------------------------------------------------------- |
| everyone           | Everyone is a presenter (This is default option).             |
| organization       | Everyone in organizer’s organization is a presenter.          |
| roleIsPresenter    | Only the participants whose role is presenter are presenters. |
| organizer          | Only the organizer  is a presenter.                           |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.             |

> [!TIP]
>
> When creating or updating an online meeting with **allowedPresenters** set to `roleIsPresenter`, include a full list of **attendees** with the specified attendees' **role** set to `presenter` in the request body.

### meetingChatMode values

| Value              | Description                                                            |
| ------------------ | ---------------------------------------------------------------------- |
| enabled            | Meeting chat is enabled.                                               |
| disabled           | Meeting chat is disabled.                                              |
| limited            | Meeting chat is enabled but only for the duration of the meeting call. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.                      |

### meetingChatHistoryDefaultMode values

| Value              | Description                                                            |
| ------------------ | ---------------------------------------------------------------------- |
| all                | All meeting chat history is shared.                                    |
| none               | No meeting chat history is shared.                                     |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.                      |

## Relationships

| Relationship | Type | Description |
| ------------ | ---- | ----------- |
| attendanceReports | [meetingAttendanceReport](meetingattendancereport.md) collection | The attendance reports of an online meeting. Read-only. |
| recordings | [callRecording](callrecording.md) collection | The recordings of an online meeting. Read-only. |
| transcripts | [callTranscript](calltranscript.md) collection | The transcripts of an online meeting. Read-only. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

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
  "audioConferencing": {"@odata.type": "microsoft.graph.audioConferencing"},
  "chatInfo": {"@odata.type": "microsoft.graph.chatInfo"},
  "creationDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "isEntryExitAnnounced": "Boolean",
  "joinInformation": {"@odata.type": "microsoft.graph.itemBody"},
  "joinMeetingIdSettings": {"@odata.type": "microsoft.graph.joinMeetingIdSettings"},
  "joinWebUrl": "String",
  "lobbyBypassSettings": {"@odata.type": "microsoft.graph.lobbyBypassSettings"},
  "participants": {"@odata.type": "microsoft.graph.meetingParticipants"},
  "recordAutomatically": "Boolean",
  "startDateTime": "String (timestamp)",
  "subject": "String",
  "videoTeleconferenceId": "String",
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

