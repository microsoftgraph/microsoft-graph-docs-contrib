---
title: "deltaParticipants resource type"
description: "Delta Participants type that is published by Communications servers to notify changed participants since last update."
author: "sasthana"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# deltaParticipants resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delta Participants type that is published by Communications servers to notify changed participants since last update.

## Properties

| Property       | Type                                     | Description                                |
|:---------------|:-----------------------------------------|:-------------------------------------------|
| sequenceNumber | Integer                                  | The sequence number for the roster update. |
| participants   | [participant](participant.md) collection | Read-only. Nullable.                       |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deltaParticipants"
} -->
```json
{
  "@odata.type": "#microsoft.graph.deltaParticipants",
  "participants": [{"@odata.type": "#microsoft.graph.participant"}],
  "sequenceNumber": "Integer"
}
```
