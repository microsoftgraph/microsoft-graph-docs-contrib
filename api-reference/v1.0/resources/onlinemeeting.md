---
title: "onlineMeeting resource type"
description: "Contains information about a meeting."
author: "awang119"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "cloud-communications"
ms.date: 11/01/2024
---

# onlineMeeting resource type

Namespace: microsoft.graph

Contains information about a meeting, including the URL used to join a meeting, the attendees list, and the description.

> [!CAUTION]
>
> Microsoft Graph online meeting APIs that support Microsoft Teams live events are deprecated and stopped returning data on September 30, 2024. New Microsoft Graph APIs will replace these APIs in spring of 2025. For more information, see [Retirement of Teams live events API on Microsoft Graph](https://devblogs.microsoft.com/microsoft365dev/deprecation-of-teams-live-events-api-on-microsoft-graph/).

## Methods

| Method                                                             | Return Type                       | Description                                                                                                  |
| :----------------------------------------------------------------- | :-------------------------------- | :----------------------------------------------------------------------------------------------------------- |
| [Create](../api/application-post-onlinemeetings.md)  | [onlineMeeting](onlinemeeting.md) | Create an online meeting.                                                                                    |
| [Get](../api/onlinemeeting-get.md)                   | [onlineMeeting](onlinemeeting.md) | Read the properties and relationships of an **onlineMeeting** object.                                        |
| [Update](../api/onlinemeeting-update.md)                           | [onlineMeeting](onlinemeeting.md) | Update the properties of an **onlineMeeting** object. |
| [Delete](../api/onlinemeeting-delete.md)             | None                              | Delete an **onlineMeeting** object.                                                                                    |
| [Create or get](../api/onlinemeeting-createorget.md) | [onlineMeeting](onlinemeeting.md) | Create an **onlineMeeting** object with a custom, external ID. If the meeting already exists, retrieve its properties. |
| [List transcripts](../api/onlinemeeting-list-transcripts.md) | [callTranscript](calltranscript.md) collection | Retrieve the list of transcripts of an **onlineMeeting**. |
| [List recordings](../api/onlinemeeting-list-recordings.md) | [callRecording](callrecording.md) collection | Retrieve the list of recordings of an **onlineMeeting**. |

> [!NOTE]
>
> - A bearer token is required for the `Authorization` header for all the methods listed in the previous table. For details about how to get the `token` for the `Authorization` header, see [Get access on behalf of a user](/graph/auth-v2-user?tabs=http#3-request-an-access-token).
> - The expiry time for online meetings is set to 60 days after the meeting's start or end time. If the meeting is updated or activated before it expires, the expiry time will be extended by another 60 days.

## Properties

| Property   | Type  | Description  |
| :-------------------- | :-------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------- |
| allowAttendeeToEnableCamera     | Boolean                       | Indicates whether attendees can turn on their camera. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).                         |
| allowAttendeeToEnableMic     | Boolean                       | Indicates whether attendees can turn on their microphone. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).                         |
| allowBreakoutRooms | Boolean | Indicates whether breakout rooms are enabled for the meeting. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| allowCopyingAndSharingMeetingContent | Boolean | Indicates whether the ability to copy and share meeting content is enabled for the meeting. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| allowedLobbyAdmitters | [allowedLobbyAdmitterRoles](../resources/onlinemeetingbase.md#allowedlobbyadmitterroles-values) | Specifies the users who can admit from the lobby. The possible values are: `organizerAndCoOrganizersAndPresenters`, `organizerAndCoOrganizers`, `unknownFutureValue`. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| allowedPresenters     | [onlineMeetingPresenters](#onlinemeetingpresenters-values)                       | Specifies who can be a presenter in a meeting. Possible values are listed in the following table. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).                         |
| allowLiveShare | [meetingLiveShareOptions](../resources/onlinemeetingbase.md#meetingliveshareoptions-values) | Indicates whether live share is enabled for the meeting. The possible values are: `enabled`, `disabled`, `unknownFutureValue`. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| allowMeetingChat      | [meetingChatMode](#meetingchatmode-values) | Specifies the mode of meeting chat. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| allowParticipantsToChangeName | Boolean | Specifies if participants are allowed to rename themselves in an instance of the meeting. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| allowPowerPointSharing | Boolean | Indicates whether PowerPoint live is enabled for the meeting. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| allowTeamworkReactions | Boolean | Indicates whether Teams reactions are enabled for the meeting. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md). |
| allowRecording | Boolean | Indicates whether recording is enabled for the meeting. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| allowTeamworkReactions | Boolean | Indicates whether Teams reactions are enabled for the meeting. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| allowTranscription | Boolean | Indicates whether transcription is enabled for the meeting. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| allowWhiteboard | Boolean | Indicates whether whiteboard is enabled for the meeting. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| audioConferencing     | [audioConferencing](audioconferencing.md)     | The phone access (dial-in) information for an online meeting. Read-only. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).                                                  |
| chatInfo              | [chatInfo](chatinfo.md)                       | The chat information associated with this online meeting. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).                                                                 |
| chatRestrictions      | [chatRestrictions](../resources/chatrestrictions.md) | Specifies the configuration settings for meeting chat restrictions. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| creationDateTime      | DateTime                                      | The meeting creation time in UTC. Read-only.                                                                               |
| endDateTime           | DateTime                                      | The meeting end time in UTC. Required when you create an online meeting.                    
| externalId            | String | The external ID that is a custom identifier. Optional. |
| joinWebUrl            | String                                        | The join URL of the online meeting. The format of the URL may change; therefore, users shouldn't rely on any information extracted from parsing the URL. Read-only. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| participants          | [meetingParticipants](meetingparticipants.md) | The participants associated with the online meeting, including the organizer and the attendees.                       |
| subject               | String                                        | The subject of the online meeting. Required when you create an online meeting.                                                                                        |
| id                    | String                                        | The default ID associated with the online meeting. Read-only. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).                                                             |
| isEndToEndEncryptionEnabled | Boolean | Indicates whether end-to-end encryption (E2EE) is enabled for the online meeting. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| isEntryExitAnnounced  | Boolean                                       | Indicates whether to announce when callers join or leave. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).                                                                    |
| joinInformation       | [itemBody](itembody.md)                       | The join information in the language and locale variant specified in the `Accept-Language` request HTTP header. Read-only. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| joinMeetingIdSettings | [joinMeetingIdSettings](joinmeetingidsettings.md) | Specifies the **joinMeetingId**, the meeting passcode, and the requirement for the passcode. Once an **onlineMeeting** is created, the **joinMeetingIdSettings** can't be modified. To make any changes to this property, the meeting needs to be canceled and a new one needs to be created. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).                 |
| lobbyBypassSettings   | [lobbyBypassSettings](lobbybypasssettings.md) | Specifies which participants can bypass the meeting lobby. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).                                                              |
| meetingOptionsWebUrl | String | Provides the URL to the Teams meeting options page for the specified meeting. This link allows *only the organizer* to configure meeting settings. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| meetingTemplateId | String | The ID of the [meeting template](/microsoftteams/create-custom-meeting-template). |
| recordAutomatically | Boolean | Indicates whether to record the meeting automatically. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
|sensitivityLabelAssignment|[onlineMeetingSensitivityLabelAssignment](../resources/onlinemeetingsensitivitylabelassignment.md)|Specifies the sensitivity label applied to the Teams meeting.|
| shareMeetingChatHistoryDefault | [meetingChatHistoryDefaultMode](#meetingchathistorydefaultmode-values) | Specifies whether meeting chat history is shared with participants. The possible values are: `all`, `none`, `unknownFutureValue`. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| startDateTime         | DateTime                                      | The meeting start time in UTC.                                                                                             |
| videoTeleconferenceId | String                                        | The video teleconferencing ID. Read-only. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).                                                                                 |
| watermarkProtection | [watermarkProtectionValues](watermarkprotectionvalues.md)     | Specifies whether the client application should apply a watermark a content type. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| attendeeReport (deprecated) | Stream | The content stream of the attendee report of a [Microsoft Teams live event](/microsoftteams/teams-live-events/what-are-teams-live-events). Read-only. |
| broadcastSettings (deprecated)    | [broadcastMeetingSettings](broadcastmeetingsettings.md)                      | Settings related to a live event.                                                                  |
| isBroadcast (deprecated) | Boolean                                       | Indicates whether this meeting is a [Teams live event](/microsoftteams/teams-live-events/what-are-teams-live-events).                  |

### onlineMeetingPresenters values

| Value              | Description                                                   |
| ------------------ | ------------------------------------------------------------- |
| everyone           | Everyone is a presenter. Default.                             |
| organization       | Everyone in organizer’s organization is a presenter.          |
| roleIsPresenter    | Only the participants whose role is presenter are presenters. |
| organizer          | Only the organizer  is a presenter.                           |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.              |

> [!TIP]
>
> When creating or updating an online meeting with **allowedPresenters** set to `roleIsPresenter`, include a full list of **attendees** with the specified attendees' **role** set to `presenter` in the request body.

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
| attendanceReports | [meetingAttendanceReport](meetingattendancereport.md) collection | The attendance reports of an online meeting. Read-only. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |
| recordings | [callRecording](callrecording.md) collection | The recordings of an online meeting. Read-only. |
| transcripts | [callTranscript](calltranscript.md) collection | The transcripts of an online meeting. Read-only. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onlineMeeting"
}-->
```json
{
  "allowAttendeeToEnableCamera": "Boolean",
  "allowAttendeeToEnableMic": "Boolean",
  "allowBreakoutRooms": "Boolean",
  "allowCopyingAndSharingMeetingContent": "Boolean",
  "allowedLobbyAdmitters": "String",
  "allowedPresenters": "String",
  "allowLiveShare": "String",
  "allowMeetingChat": "String",
  "allowParticipantsToChangeName": "Boolean",
  "allowPowerPointSharing": "Boolean",
  "allowRecording": "Boolean",
  "allowTeamworkReactions": "Boolean",
  "allowTranscription": "Boolean",
  "allowWhiteboard": "Boolean",
  "attendeeReport": "Stream",
  "audioConferencing": {"@odata.type": "microsoft.graph.audioConferencing"},
  "broadcastSettings": {"@odata.type": "microsoft.graph.broadcastMeetingSettings"},
  "chatInfo": {"@odata.type": "microsoft.graph.chatInfo"},
  "chatRestrictions": {"@odata.type": "microsoft.graph.chatRestrictions"},
  "creationDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "externalId": "String",
  "id": "String (identifier)",
  "isEndToEndEncryptionEnabled": "Boolean",
  "isBroadcast": "Boolean",
  "isEntryExitAnnounced": "Boolean",
  "joinInformation": {"@odata.type": "microsoft.graph.itemBody"},
  "joinMeetingIdSettings": {"@odata.type": "microsoft.graph.joinMeetingIdSettings"},
  "joinWebUrl": "String",
  "lobbyBypassSettings": {"@odata.type": "microsoft.graph.lobbyBypassSettings"},
  "meetingOptionsWebUrl": "String",
  "meetingTemplateId": "String",
  "participants": {"@odata.type": "microsoft.graph.meetingParticipants"},
  "recordAutomatically": "Boolean",
  "sensitivityLabelAssignment": {
      "@odata.type": "microsoft.graph.onlineMeetingSensitivityLabelAssignment"
  },
  "shareMeetingChatHistoryDefault": "String",
  "startDateTime": "String (timestamp)",
  "subject": "String",
  "videoTeleconferenceId": "String",
  "watermarkProtection": "String"
}
```
