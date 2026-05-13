---
title: "meetingEngagement resource type"
description: "Contains information associated with a meeting participant interaction in an attendanceRecord."
author: "garchiro7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 09/11/2024
---

# meetingEngagement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information associated with real-time participant interaction behaviors during a meeting, including reactions (like, love, applause, etc.), hand raises, camera toggles, and microphone mute/unmute events in an [attendanceRecord](attendancerecord.md).

## Properties

| Property   | Type                                    | Description |
| ---------- | --------------------------------------- | ----------- |
| `engagementType` | microsoft.graph.meetingEngagementType | The category of the engagement event. Required, non-nullable. |
| `engagementSubType` | String                     | The specific engagement action within the type (e.g., `like`, `love`, `applause`, `laugh`, `surprised` for reactions; `raiseHand` for hand; `cameraOn` for camera; `unmute`, `mute` for microphone). |
| `dateTime` | DateTimeOffset             | The UTC date and time when the engagement event occurred, in ISO 8601 format. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.meetingEngagement"
}-->

```json
{
    "engagementType": "String(reaction, hand, camera, microphone, unknownFutureValue)",
    "engagementSubType": "String",
    "dateTime": "DateTimeOffset"
}  
```
