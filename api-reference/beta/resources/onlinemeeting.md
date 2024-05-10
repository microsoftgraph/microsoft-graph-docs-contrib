---
title: "onlineMeeting resource type"
description: "Contains information about a meeting."
author: "awang119"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "cloud-communications"
---

# onlineMeeting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about a meeting, including the URL used to join a meeting, the attendees list, and the description.

This resource supports subscribing to [change notifications](/graph/webhooks). For more information, see [subscribe to online meetings](/graph/changenotifications-for-onlinemeeting).

Inherits from [onlineMeetingBase](../resources/onlineMeetingBase.md).

## Methods

| Method | Return Type |Description |
| :------ | :----------- | :---------- |
| [Create](../api/application-post-onlineMeetings.md) | [onlineMeeting](onlinemeeting.md) | Create an online meeting. |
| [Get](../api/onlinemeeting-get.md) | [onlineMeeting](onlinemeeting.md) | Read the properties and relationships of an **onlineMeeting** object. |
| [Update](../api/onlinemeeting-update.md) | [onlineMeeting](onlinemeeting.md) | Update the properties of an **onlineMeeting** object. |
| [Delete](../api/onlinemeeting-delete.md) | None | Delete an **onlineMeeting** object. |
| [Create or get onlineMeeting](../api/onlinemeeting-createorget.md) | [onlineMeeting](onlinemeeting.md) | Create an online meeting with a custom, external ID. If the meeting already exists, retrieve its properties. |
| [List transcripts of an onlineMeeting](../api/onlinemeeting-list-transcripts.md) | [callTranscript](calltranscript.md) collection | Retrieve the list of transcripts of an **onlineMeeting**. |
| [List recordings of an onlineMeeting](../api/onlinemeeting-list-recordings.md) | [callRecording](callrecording.md) collection | Get the list of [callRecording](../resources/callrecording.md) objects associated with an [onlineMeeting](../resources/onlinemeeting.md). |

> [!NOTE]
> 
> A bearer token is required for the `Authorization` header for all the methods listed in the previous table. For details about how to get the `token` for the `Authorization` header, see [Get access on behalf of a user](/graph/auth-v2-user?tabs=http#3-request-an-access-token).

> [!CAUTION]
> 
> Graph Online Meeting APIs that support Microsoft Teams live event is deprecated and will stop functioning on September 30, 2024. New Graph APIs will replace this in Spring of 2024. For more information, see [Retirement of Teams live events API on Microsoft Graph](https://devblogs.microsoft.com/microsoft365dev/deprecation-of-teams-live-events-api-on-microsoft-graph/). 

## Properties

| Property              | Type                                          | Description    |
| :-------------------- | :-------------------------------------------- | :------------------------------------ |
| allowAttendeeToEnableCamera | Boolean | Indicates whether attendees can turn on their camera. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md). |
| allowAttendeeToEnableMic | Boolean | Indicates whether attendees can turn on their microphone. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md). |
| allowMeetingChat      | [meetingChatMode](#meetingchatmode-values) | Specifies the mode of meeting chat. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md). |
| allowParticipantsToChangeName | Boolean | Specifies if participants are allowed to rename themselves in an instance of the meeting. |
| chatRestrictions      | [chatrestrictions](../resources/chatrestrictions.md) | Specifies the configuration for meeting chat restrictions.  |
| allowTeamworkReactions | Boolean | Indicates if Teams reactions are enabled for the meeting. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md). |
| allowTranscription | Boolean | Indicates whether transcription is enabled for the meeting. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md). |
| allowRecording | Boolean | Indicates whether recording is enabled for the meeting. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md). |
| allowedPresenters     | [onlineMeetingPresenters](#onlinemeetingpresenters-values)| Specifies who can be a presenter in a meeting. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md). |
| alternativeRecording (deprecated) | Stream | The content stream of the alternative recording of a [Microsoft Teams live event](/microsoftteams/teams-live-events/what-are-teams-live-events). Read-only. |
| anonymizeIdentityForRoles    | onlineMeetingRole collection | Specifies whose identity is anonymized in the meeting. Possible values are: `attendee`. The `attendee` value can't be removed through a PATCH operation once added. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md). |
| attendeeReport (deprecated)       | Stream | The content stream of the attendee report of a [Teams live event](/microsoftteams/teams-live-events/what-are-teams-live-events). Read-only.   |
| audioConferencing     | [audioConferencing](audioconferencing.md)     | The phone access (dial-in) information for an online meeting. Read-only. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md).|
| broadcastSettings (deprecated)   | [broadcastMeetingSettings](broadcastMeetingSettings.md)     | Settings related to a live event.      |
| chatInfo              | [chatInfo](chatinfo.md) | The chat information associated with this online meeting. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md). |
| creationDateTime      | DateTime | The meeting creation time in UTC. Read-only.     |
| endDateTime           | DateTime | The meeting end time in UTC. Required when you create an online meeting. |
| externalId            | String | The external ID. A custom ID. Optional.      |
| id | String | The default ID associated with the online meeting. Read-only. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md).    |
| isBroadcast (deprecated) | Boolean | Indicates whether this event is a [Teams live event](/microsoftteams/teams-live-events/what-are-teams-live-events). |
| isEntryExitAnnounced  | Boolean | Indicates whether to announce when callers join or leave. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md). |
| joinInformation | [itemBody](itembody.md) | The join information in the language and locale variant specified in 'Accept-Language' request HTTP header. Read-only. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md). |
| joinMeetingIdSettings | [joinMeetingIdSettings](joinmeetingidsettings.md) | Specifies the **joinMeetingId**, the meeting passcode, and the requirement for the passcode. Once an **onlineMeeting** is created, the **joinMeetingIdSettings** can't be modified. To make any changes to this property, the meeting needs to be canceled and a new one needs to be created. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md). |
| joinWebUrl | String | The join URL of the online meeting. Read-only. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md). |
| lobbyBypassSettings | [lobbyBypassSettings](lobbyBypassSettings.md) | Specifies which participants can bypass the meeting lobby. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md). |
| meetingTemplateId | String | The ID of the [meeting template](/microsoftteams/create-custom-meeting-template). |
| participants | [meetingParticipants](meetingparticipants.md) | The participants associated with the online meeting, including the organizer and the attendees. |
| recordAutomatically | Boolean | Indicates whether to record the meeting automatically. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md). |
| recording (deprecated) | Stream | The content stream of the recording of a [Teams live event](/microsoftteams/teams-live-events/what-are-teams-live-events). Read-only. |
| shareMeetingChatHistoryDefault | [meetingChatHistoryDefaultMode](#meetingchathistorydefaultmode-values) | Specifies whether meeting chat history is shared with participants.  Possible values are: `all`, `none`, `unknownFutureValue`. |
| startDateTime | DateTime | The meeting start time in UTC. Required when you create an online meeting. |
| subject | String | The subject of the online meeting. Required when you create an online meeting. |
| videoTeleconferenceId | String | The video teleconferencing ID. Read-only. |
| watermarkProtection | [watermarkProtectionValues](watermarkprotectionvalues.md)     | Specifies whether a watermark should be applied to a content type by the client application. |
| shareMeetingChatHistoryDefault | [meetingChatHistoryDefaultMode](#meetingchathistorydefaultmode-values) | Specifies whether meeting chat history is shared with participants.  Possible values are: `all`, `none`, `unknownFutureValue`. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md). |
| startDateTime | DateTime | The meeting start time in UTC. |
| subject | String | The subject of the online meeting. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md). |
| videoTeleconferenceId | String | The video teleconferencing ID. Read-only. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md). |
| watermarkProtection | [watermarkProtectionValues](watermarkprotectionvalues.md)     | Specifies whether the client application should apply a watermark to a content type. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md). |
| autoAdmittedUsers (deprecated) | String | The setting that specifies the type of participants that are automatically allowed into the online meeting. Possible values are: `everyone`, `everyoneInSameAndFederatedCompany`, `everyoneInCompany`, `invitedUsersInCompany`, `organizer`. Read-only. |
| capabilities (deprecated) | meetingCapabilities collection | The list of meeting capabilities. Possible values are: `questionAndAnswer`,`unknownFutureValue`. |

> [!CAUTION]
>
>- The **autoAdmittedUsers** property is deprecated. Use the **scope** property of [lobbyBypassSettings](lobbyBypassSettings.md) instead.
>- The **capabilities** property is deprecated. Use the **isQuestionAndAnswerEnabled** property of [broadcastMeetingSettings](broadcastMeetingSettings.md) instead.

### onlineMeetingPresenters values

| Value              | Description                                                   |
| ------------------ | ------------------------------------------------------------- |
| everyone           | Everyone is a presenter. Default.                             |
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
| limited            | Meeting chat is enabled but only during the meeting call. |
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
| attendanceReports | [meetingAttendanceReport](meetingattendancereport.md) collection | The attendance reports of an online meeting. Read-only. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md). |
| recordings | [callRecording](callrecording.md) collection | The recordings of an online meeting. Read-only. |
| transcripts | [callTranscript](calltranscript.md) collection | The transcripts of an online meeting. Read-only. |
| meetingAttendanceReport (deprecated) | [meetingAttendanceReport](meetingattendancereport.md) | The attendance report of the latest online meeting session. Read-only. |
| registration (deprecated) | [meetingRegistration](meetingregistration.md) | The registration that is enabled for an online meeting. One online meeting can only have one registration enabled.|

> [!TIP]
>
>- The **meetingAttendanceReport** property is deprecated. It will remain in beta for backward compatibility. Going forward, please use **attendanceReports** property to retrieve attendance reports of an online meeting.
>- The type of **registration** can only be [externalMeetingRegistration](externalmeetingregistration.md), which inherits from [meetingRegistrationBase](meetingregistrationbase.md) because [meetingRegistration](meetingregistration.md) is being deprecated and will not be supported by **July 31, 2024**. 

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
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
  "anonymizeIdentityForRoles": ["String"],
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
  "meetingTemplateId": "String",
  "participants": {"@odata.type": "microsoft.graph.meetingParticipants"},
  "recordAutomatically": "Boolean",
  "shareMeetingChatHistoryDefault": "microsoft.graph.meetingChatHistoryDefaultMode",
  "startDateTime": "String (timestamp)",  
  "subject": "String",
  "videoTeleconferenceId": "String",
  "watermarkProtection": {"@odata.type": "microsoft.graph.watermarkProtectionValues"}
}
```
