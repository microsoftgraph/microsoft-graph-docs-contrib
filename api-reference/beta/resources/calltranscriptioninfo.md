---
title: "callTranscriptionInfo resource type"
description: "Represents a single DTMF event."
author: "rzhang"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# callTranscriptionInfo resource type

Namespace: microsoft.graph

Represents a single DTMF event.

## Properties

| Property       | Type    | Description|
|:---------------|:--------|:----------|
| state | String | The possible values are: `notStarted`, `active`, `inactive`. |
| lastModifiedDateTime | DateTime | The state modified time in UTC. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.callTranscriptionInfo"
}-->
```json
{
  "state": "notStarted | active | inactive",
  "lastModifiedDateTime": "String (timestamp)"
}
```


