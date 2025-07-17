---
title: "recordingInfo resource type"
description: "Represents recording information for a participant."
author: "ananmishr"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# recordingInfo resource type

Namespace: microsoft.graph

Represents recording information for a participant.

## Properties

| Property        | Type    | Description|
|:----------------|:--------|:----------|
| initiator     | [identitySet](identitySet.md) | The identities of the recording initiator. |
| recordingStatus | String | Possible values are: `unknown`, `notRecording`, `recording`, or `failed`. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "initiator"
  ],
  "@odata.type": "microsoft.graph.recordingInfo"
}-->
```json
{
  "initiator": {"@odata.type": "#microsoft.graph.identitySet"},
  "recordingStatus": "unknown | notRecording | recording | failed"
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

