---
title: "recordingInfo resource type"
description: "Recording information for a participant."
author: "ananmishr"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# recordingInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Recording information for a participant.

## Properties

| Property        | Type    | Description|
|:----------------|:--------|:----------|
| initiatedBy     | [participantInfo](participantinfo.md) | The participant who initiated the recording. |
| recordingStatus | String | The possible values are: `unknown`, `notRecording`, `recording`, or `failed`. |
| initiator | [identitySet](identitySet.md) | The identities of recording initiator. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.recordingInfo"
}-->
```json
{
  "initiatedBy": {"@odata.type": "#microsoft.graph.participantInfo"},
  "recordingStatus": "unknown | notRecording | recording | failed",
  "initiator": {"@odata.type": "#microsoft.graph.initiator"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "recordingInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


