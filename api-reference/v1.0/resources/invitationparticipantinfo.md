---
title: "invitationParticipantInfo resource type"
description: "The **InvitationParticipant** is used to represent a set of identities associated with a conversation invitation, and provides additional invitation parameters."
author: "ananmishr"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# invitationParticipantInfo resource type

Namespace: microsoft.graph

This resource is used to represent the entity that is being invited to a group call. 

## Properties

| Property                           | Type                          | Description                                                                          |
| :--------------------------------- | :---------------------------- | :----------------------------------------------------------------------------------- |
| hidden                             | Boolean                       | Optional. Whether to hide the participant from the roster. |
| identity                           | [identitySet](identityset.md) | The [identitySet](identityset.md) associated with this invitation.                   |
| participantId                      | String                        | Optional. The ID of the target participant.                                          |
| removeFromDefaultAudioRoutingGroup | Boolean                       | Optional. Whether to remove them from the main mixer. |
| replacesCallId                     | String                        | Optional. The call which the target identity is currently a part of. For peer-to-peer case, the call will be dropped once the participant is added successfully. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "replacesCallId"
  ],
  "@odata.type": "microsoft.graph.invitationParticipantInfo"
}-->
```json
{
  "identity": {"@odata.type": "#microsoft.graph.identitySet"},
  "participantId": "String",  
  "replacesCallId": "String",
  "removeFromDefaultAudioRoutingGroup": "Boolean",
  "hidden": "Boolean"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "invitationParticipantInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

