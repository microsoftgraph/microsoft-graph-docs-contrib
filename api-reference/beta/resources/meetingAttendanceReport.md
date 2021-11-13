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

Meeting attendance reports are online meeting artifacts. For details, see [Online meeting artifacts and permissions](/graph/cloud-communications-online-meeting-artifacts).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List meetingAttendanceReports](../api/meetingattendancereport-list.md)|[meetingAttendanceReport](../resources/meetingattendancereport.md) collection|Get a list of the [meetingAttendanceReport](../resources/meetingattendancereport.md) objects and their properties.|
|[Get meetingAttendanceReport](../api/meetingattendancereport-get.md)|[meetingAttendanceReport](../resources/meetingattendancereport.md)|Read the properties and relationships of a [meetingAttendanceReport](../resources/meetingattendancereport.md) object.|

## Properties

| Property              | Type                                               | Description                     |
|:----------------------|:---------------------------------------------------|:--------------------------------|
| id                    | String   | The ID of an attendance report. Read-only. |
| meetingEndDateTime    | DateTime | The meeting end time in UTC. Read-only.   |
| meetingStartDateTime  | DateTime | The meeting start time in UTC. Read-only.   |
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
  "@odata.type": "#microsoft.graph.meetingAttendanceReport",
  "meetingEndDateTime": "String (timestamp)",
  "meetingStartDateTime": "String (timestamp)",
  "totalParticipantCount": "Int32",

  "attendanceRecords": [{"@odata.type": "#microsoft.graph.attendanceRecord"}]
}
```
