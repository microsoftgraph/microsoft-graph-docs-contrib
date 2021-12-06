---
title: "attendanceInterval resource type"
description: "Contains information associated with attendance interval in attendanceRecord."
author: "mkhribech"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# attendanceInterval resource type

Namespace: microsoft.graph

Contains information associated with attendance interval in attendanceRecord.

## Properties

| Property            | Type    | Description|
|:--------------------|:--------|:-----------|
| joinDateTime | DateTime | Time attendee joined in UTC. |
| leaveDateTime | DateTime | Time attendee left in UTC. |
| durationInSeconds | Int32 | Duration of the meeting interval in seconds; that is, the difference between **joinDateTime** and **leaveDateTime**. |

> [!TIP]
> When data is lacking, the value of **joinDateTime** or **leaveDateTime** will be set to `null`, and the value of **durationInSeconds** will be set to `0` in the response body of the [Get meeting attendance report](/graph/api/meetingattendancereport-get?view=graph-rest-v1.0&preserve-view=true) operation.

## JSON representation

The following is a JSON representation of the resource.

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
