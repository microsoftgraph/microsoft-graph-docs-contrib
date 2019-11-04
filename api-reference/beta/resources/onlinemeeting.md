---
title: "onlineMeeting resource type"
description: "Captures information about the meeting, including the join URL, the attendees list, and the description."
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "microsoft-cloud communications"
doc_type: resourcePageType
---

# onlineMeeting resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about the meeting, including the join URL, the attendees list, and the description.

## Methods

| Method         | Return Type | Description |
|:---------------|:--------|:----------|
| [Get onlineMeeting](../api/onlinemeeting-get.md) | [onlineMeeting](onlinemeeting.md) | Read properties and relationships of online meeting object. |
| [Create onlineMeeting](../api/application-post-onlineMeetings.md) | [onlineMeeting](onlinemeeting.md) | Creates an online meeting. |

## Properties

| Property                  | Type                                                   | Description                                                                                                                |
| :------------------------ | :----------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------- |
| autoAdmittedUsers         | String                                                 | The setting which specifies the type of participants that will automatically be allowed into the online meeting. Read-only. Possible values are: `everyone`, `everyoneInSameAndFederatedCompany`, `everyoneInCompany`, `invitedUsersInCompany`, `organizer`|
| audioConferencing         | [audioConferencing](audioconferencing.md)              | The phone access (dial-in) information for an online meeting. Read-only. |
| canceledDateTime          | DateTime                                               | The time in UTC when the meeting was canceled. Read-only. |
| chatInfo                  | [chatInfo](chatinfo.md)                                | The chat information associated with this online meeting. |
| creationDateTime          | DateTime                                               | The Meeting creation time in UTC. Read-only. |
| startDateTime             | DateTime                                               | The Meeting start time in UTC. |
| endDateTime               | DateTime                                               | The Meeting end time in UTC. |
| id                        | String                                                 | The default id associated with the online meeting. Read-only. |
| isCanceled                | Boolean                                                | The value indicating if the meeting has been canceled. Read-only. |
| joinUrl                   | String                                                 | The join URL of the online meeting. Read-only.|
| isBroadcast               | Boolean                                                | The flag to determine whether it's a broadcast meeting. |
| participants              | [meetingParticipants](meetingparticipants.md)          | The participants associated with the online meeting.  This includes the organizer and the attendees. |
| subject                   | String                                                 | The subject of the online meeting. |
| capabilities              | String collection                                      | The list of meeting capabilities. Possible values are: `questionAndAnswer`. |
| videoTeleconferenceId     | String                                                 | The videio teleconferencing id. Read-only. |

### autoAdmittedUsers
| Value | Description  |
| :------------------------ | :----------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------- |
| organizer | This means only the meeting organizer is admitted directly.  Everyone else waits in the lobby, until admitted by the organizer  |
| invitedUsersInCompany | This means the meeting organizer and the users in the same company invited by the organizer join the meeting directly.  Everyone else waits in lobby until admitted.  |
| everyoneInCompany | This means everyone in the same company as the organizer join the meeting directly.  Federated, anonymous users wait in lobby until admitted.  |
| everyoneInSameAndFederatedCompany |  This means everyone in same company as the organizer and federated companies join the meeting directly.  Anonymous users wait in lobby until admitted.  |
| everyone | Any user is allowed, this means everyone (including anonymous users) can join the meeting directly without waiting in lobby.  |

## Relationships
None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onlineMeeting"
}-->
```json
{
  "autoAdmittedUsers": "everyone | everyoneInSameAndFederatedCompany | everyoneInCompany | invitedUsersInCompany | organizer",
  "audioConferencing": {"@odata.type": "#microsoft.graph.audioConferencing"},
  "canceledDateTime": "String (timestamp)",
  "chatInfo": {"@odata.type": "#microsoft.graph.chatInfo"},
  "creationDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "isCanceled": false,
  "joinUrl": "String",
  "isBroadcast": false,
  "participants": {"@odata.type": "#microsoft.graph.meetingParticipants"},
  "startDateTime": "String (timestamp)",
  "subject": "String",
  "capabilities": [ "questionAndAnswer" ],
  "videoTeleconferenceId": "String"
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
