---
title: "incomingContext resource type"
description: "The context associated with an incoming call."
author: "ananmishr"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 03/21/2024
---

# incomingContext resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The context associated with an incoming call.

## Properties

| Property              | Type                          | Description                                                             |
|:----------------------|:------------------------------|:------------------------------------------------------------------------|
| observedParticipantId | String                        | The id of the participant that is under observation. Read-only.         |
| onBehalfOf            | [identitySet](identityset.md) | The identity that the call is happening on behalf of.                   |
| sourceParticipantId   | String                        | The id of the participant that triggered the incoming call. Read-only.  |
| transferor            | [identitySet](identityset.md) | The identity that transferred the call.                                 |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "observedParticipantId",
    "onBehalfOf",
    "transferor"
  ],
  "@odata.type": "microsoft.graph.incomingContext"
}-->
```json
{
  "observedParticipantId": "String",
  "onBehalfOf": {"@odata.type": "#microsoft.graph.identitySet"},
  "sourceParticipantId": "String",
  "transferor": {"@odata.type": "#microsoft.graph.identitySet"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "incomingContext resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


