---
title: "meetingAttendanceReport resource type"
description: "Contains information associated with meeting attendance report."
author: "mkhribech"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# meetingAttendanceReport resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information associated with meeting attendance report.

## Properties

| Property              | Type                                               | Description                     |
|:----------------------|:---------------------------------------------------|:--------------------------------|
| meetingEndDateTime    | DateTime | The meeting end time in UTC. Read-only.   |
| meetingStartDateTime  | DateTime | The meeting end time in UTC. Read-only.   |
| totalParticipantCount | Int32 | Total number of participants. Read-only.  |

## Relationships

| Relationship | Type | Description |
| ------------ | ---- | ----------- |
| attendanceRecords | [attendanceRecord](attendanceRecord.md) collection | The list of attendance records. Read-only. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.meetingAttendanceReport"
}-->

```json
{
  "meetingEndDateTime": "String (timestamp)",
  "meetingStartDateTime": "String (timestamp)",
  "totalParticipantCount": "Int32",

  "attendanceRecords": [{"@odata.type": "#microsoft.graph.attendanceRecord"}]
}
```
