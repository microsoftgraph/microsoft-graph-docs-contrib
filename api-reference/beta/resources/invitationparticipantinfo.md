---
title: "invitationParticipantInfo resource type"
description: "Represents an entity that is being invited to a group call."
author: "ananmishr"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# invitationParticipantInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an entity that is being invited to a group call. 

## Properties

| Property                           | Type                          | Description                                                                          |
| :--------------------------------- | :---------------------------- | :----------------------------------------------------------------------------------- |
| endpointType                       | endpointType                        | The type of endpoint. Possible values are: `default`, `voicemail`, `skypeForBusiness`, `skypeForBusinessVoipPhone` and `unknownFutureValue`. |
| identity                           | [identitySet](identityset.md) | The [identitySet](identityset.md) associated with this invitation.                   |
| participantId                      | String                        | Optional. The ID of the target participant.                                          |
| replacesCallId                     | String                        | Optional. The call which the target identity is currently a part of. For peer-to-peer case, the call will be dropped once the participant is added successfully. |
| removeFromDefaultAudioRoutingGroup | Boolean                       | Optional. Whether to remove them from the main mixer. |
| hidden                             | Boolean                       | Optional. Whether to hide the participant from the roster. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "endpointType",
    "replacesCallId"
  ],
  "@odata.type": "microsoft.graph.invitationParticipantInfo"
}-->
```json
{
  "endpointType": "String",
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


