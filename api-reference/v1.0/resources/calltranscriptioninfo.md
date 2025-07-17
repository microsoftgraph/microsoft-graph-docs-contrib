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
| lastModifiedDateTime | DateTime | The state modified time in UTC. |
| state | String | Possible values are: `notStarted`, `active`, `inactive`. |

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
  "lastModifiedDateTime": "String (timestamp)",
  "state": "notStarted | active | inactive"
}
```

