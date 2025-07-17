---
title: "participant resource type"
description: "Represents a participant in a call."
author: "ananmishr"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# participant resource type

Namespace: microsoft.graph

Represents a participant in a [call](call.md).

## Methods

| Method                                                 | Return Type                                                 | Description                                    |
|:-------------------------------------------------------|:------------------------------------------------------------|:-----------------------------------------------|
| [List participant](../api/participant-get.md)          | [participant](participant.md)                               | Retrieve a list of **participant** objects in the call. |
| [Get participant](../api/participant-get.md)           | [participant](participant.md)                               | Read properties of the **participant** object. |
| [Delete participant](../api/participant-delete.md)         | None   | Delete a participant in a call.                  |
| [Invite](../api/participant-invite.md)                 | [inviteParticipantsOperation](../resources/inviteparticipantsoperation.md)                        | Invite a participant to the call.              |
| [Mute participant](../api/participant-mute.md)         | [muteParticipantOperation](muteparticipantoperation.md)     | Mute a participant in a call.                  |
| [Start hold music](../api/participant-startholdmusic.md) | [startHoldMusicOperation](startholdmusicoperation.md) | Place a participant on hold while playing music on the background. |
| [Stop hold music](../api/participant-stopholdmusic.md) | [stopHoldMusicOperation](stopholdmusicoperation.md) | Reincorporate a participant previously put on hold to the call. |

## Properties

| Property             | Type                                     | Description                                                  |
| :------------------- | :--------------------------------------- | :------------------------------------------------------------|
| id                   | String                                   | The participant ID.                                          |
| info                 | [participantInfo](participantinfo.md)    | Information about the participant.                          |
| isInLobby            | Boolean                                  | `true` if the participant is in lobby.                          |
| isMuted              | Boolean                                  | `true` if the participant is muted (client or server muted).    |
| mediaStreams         | [mediaStream](mediastream.md) collection | The list of media streams.                                   |
| metadata             | String                                   | A blob of data provided by the participant in the roster.     |
| recordingInfo        | [recordingInfo](recordinginfo.md)        | Information about whether the participant has recording capability. |
| removedState         | [removedState](removedstate.md)          | Indicates the reason why the **participant** was removed from the roster. |
| restrictedExperience | [onlineMeetingRestricted](onlinemeetingrestricted.md)        | Indicates the reason or reasons media content from this participant is restricted. |
| rosterSequenceNumber | Int64        | Indicates the roster sequence number in which the **participant** was last updated. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.participant"
}-->
```json
{
  "id": "String (identifier)",
  "info": {"@odata.type": "#microsoft.graph.participantInfo"},
  "isInLobby": "Boolean",
  "isMuted": "Boolean",
  "mediaStreams": [ { "@odata.type": "#microsoft.graph.mediaStream" } ],
  "metadata": "String",
  "recordingInfo": { "@odata.type": "#microsoft.graph.recordingInfo" },
  "removedState": { "@odata.type": "#microsoft.graph.removedState" },
  "restrictedExperience": { "@odata.type": "#microsoft.graph.onlineMeetingRestricted" },
  "rosterSequenceNumber": "Int64"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "participant resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

