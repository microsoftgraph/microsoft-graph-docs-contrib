---
title: "deltaParticipants resource type"
description: "Represents a notification for the creation, update, or deletion of a participant in a meeting[Reference link HERE]. This resource is published by communications servers to notify changed participants since last update."
author: "sasthana"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# deltaParticipants resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a notification for the creation, update, or deletion of a participant in a meeting[Reference link HERE]. This resource is published by communications servers to notify changed participants since last update.

## Properties

| Property       | Type                                     | Description                                |
|:---------------|:-----------------------------------------|:-------------------------------------------|
| sequenceNumber | Int64                                  | The sequence number for the roster update. |
| participants   | [participant](participant.md) collection | The collection of participants that were updated since the last roster update. |

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
  "sequenceNumber": 1
}
```
