---
title: "onlineMeeting resource type"
description: "Captures information about the meeting, including the join URL, the attendees list, and the description."
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# onlineMeeting resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Captures information about the meeting, including the join URL, the attendees list, and the description.

## Methods

| Method         | Return Type | Description |
|:---------------|:--------|:----------|
| [Get onlineMeeting](../api/onlinemeeting-get.md) | [onlineMeeting](onlinemeeting.md) | Read properties and relationships of onlineMeeting object. |

## Properties

| Property                  | Type                                                   | Description                                                                                                                |
| :------------------------ | :----------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------- |
| accessLevel               | String                                                 | The access level that controls admission to the online meeting. Possible values are: `everyone`, `invited`, `locked`, `sameEnterprise`, `sameEnterpriseAndFederated`|
| audioConferencing         | [audioConferencing](audioconferencing.md)              | Represents phone access information for an onlineMeeting. |
| canceledDateTime          | DateTime                                               | The time in UTC when the meeting was canceled. |
| chatInfo                  | [chatInfo](chatinfo.md)                                | The chat related information associated with this meeting. |
| creationDateTime          | DateTime                                               | Meeting creation time in UTC. Readonly. Server generated. |
| endDateTime               | DateTime                                               | Meeting end time in UTC, as was set when the meeting was created. |
| entryExitAnnouncement     | Boolean                                                | The attendance announcements status for the online meeting. When attendance announcements are enabled, the online meeting will announce the names of the participantswho join the meeting through audio. |
| expirationDateTime        | DateTime                                               | Expiry time of the meeting in UTC after which the online meeting will be deleted automatically.Readonly, Server generated. Current default is 180 days for scheduled meetings. |
| id                        | String                                                 | The ID associated with the online meeting. Used in a GET HTTP request as the ID. Read-only. Server generated. |
| isCancelled               | Boolean                                                | Value indicating, Whether the meeting has been canceled. |
| joinUrl                   | String                                                 | The URL that is used when the online meeting is joined from the web. |
| isBroadcast               | Boolean                                                | The flag to determine whether it's a broadcast meeting. |
| participants              | [meetingParticipants](meetingparticipants.md)          | The participants associated with the online meeting.  This includes the organizer and the attendees. |
| startDateTime             | DateTime                                               | Meeting start time in UTC, as was set when the meeting was created. |
| subject                   | String                                                 | The subject of the online meeting. |
| capabilities              | String collection                                      | The list of meeting capabilities. Possible values are: `questionAndAnswer`. |
| videoTeleconferenceId     | String                                                 | The videio teleconferencing id. |


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
  "accessLevel": "everyone | invited | locked | sameEnterprise | sameEnterpriseAndFederated",
  "audioConferencing": {"@odata.type": "#microsoft.graph.audioConferencing"},
  "canceledDateTime": "String (timestamp)",
  "chatInfo": {"@odata.type": "#microsoft.graph.chatInfo"},
  "creationDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "entryExitAnnouncement": true,
  "expirationDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "isCancelled": false,
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