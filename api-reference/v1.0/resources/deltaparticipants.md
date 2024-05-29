---
title: "deltaParticipants resource type"
description: "Represents a notification for the creation, update, or deletion of a participant in a meeting."
author: "sasthana"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# deltaParticipants resource type

Namespace: microsoft.graph

Represents a notification for the creation, update, or deletion of a [participant](participant.md) in a meeting. This resource is published by communications servers as a notification of participant changes since the last update.

## Properties

| Property       | Type         | Description                                |
|:---------------|:-------------|:-------------------------------------------|
| sequenceNumber | Int64        | The sequence number for the roster update that is used to identify the notification order. |

## Relationships

| Relationship | Type |Description|
|:---------------|:--------|:----------|
| participants   | [participant](participant.md) collection | The collection of participants that were updated since the last roster update. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deltaParticipants"
} -->
```json
{
  "@odata.type": "#microsoft.graph.deltaParticipants",
  "sequenceNumber": "Int64"
}
```
