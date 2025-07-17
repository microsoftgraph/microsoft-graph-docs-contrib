---
title: "attendanceInterval resource type"
description: "Contains information associated with an attendance interval in an attendanceRecord."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# attendanceInterval resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information associated with an attendance interval in an [attendanceRecord](attendancerecord.md).

## Properties

| Property            | Type    | Description|
|:--------------------|:--------|:-----------|
| durationInSeconds | Int32 | Duration of the meeting interval in seconds; that is, the difference between **joinDateTime** and **leaveDateTime**. |
| joinDateTime | DateTime | The time the attendee joined in UTC. |
| leaveDateTime | DateTime | The time the attendee left in UTC. |

> [!TIP]
> When data is lacking, the value of **joinDateTime** or **leaveDateTime** will be set to `null`, and the value of **durationInSeconds** will be set to `0` in the response body of the [Get meetingAttendanceReport](/graph/api/onlinemeeting-get?view=graph-rest-beta&preserve-view=true) method.

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.attendanceInterval"
}-->

```json
{
    "joinDateTime": "String (timestamp)",
    "leaveDateTime": "String (timestamp)",
    "durationInSeconds": "Int32"
}  
```
