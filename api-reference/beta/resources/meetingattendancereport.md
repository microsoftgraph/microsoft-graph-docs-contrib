---
title: "meetingAttendanceReport resource type"
description: "Contains information associated with a meeting attendance report."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# meetingAttendanceReport resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information associated with a meeting attendance report for an [onlineMeeting](../resources/onlinemeeting.md) or a [virtualEvent](../resources/virtualevent.md).

Meeting attendance reports are online meeting artifacts. For details, see [Online meeting artifacts and permissions](/graph/cloud-communications-online-meeting-artifacts).

The policies that apply to the [Teams attendance report](https://support.microsoft.com/office/manage-meeting-attendance-reports-in-microsoft-teams-ae7cf170-530c-47d3-84c1-3aedac74d310) also extend to Microsoft Graph, which means the same rules and retention periods, including a one-year retention policy from the meeting date, apply to the **meetingAttendanceReport** scenarios.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/meetingattendancereport-list.md)|[meetingAttendanceReport](../resources/meetingattendancereport.md) collection|Get a list of  [meetingAttendanceReport](../resources/meetingattendancereport.md) objects and their properties.|
|[Get](../api/meetingattendancereport-get.md)|[meetingAttendanceReport](../resources/meetingattendancereport.md)|Read the properties and relationships of a [meetingAttendanceReport](../resources/meetingattendancereport.md) object.|

## Properties

| Property              | Type                                               | Description                     |
|:----------------------|:---------------------------------------------------|:--------------------------------|
| externalEventInformation | [virtualEventExternalInformation](../resources/virtualeventexternalinformation.md) collection | The external information of a virtual event. Returned only for event organizers or coorganizers. Read-only. |
| id                    | String   | Unique identifier for the attendance report. Read-only. |
| meetingEndDateTime    | DateTimeOffset | UTC time when the meeting ended. Read-only.   |
| meetingStartDateTime  | DateTimeOffset | UTC time when the meeting started. Read-only.   |
| totalParticipantCount | Int32 | Total number of participants. Read-only.  |

## Relationships

| Relationship | Type | Description |
| ------------ | ---- | ----------- |
| attendanceRecords | [attendanceRecord](attendanceRecord.md) collection | List of attendance records of an attendance report. Read-only. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.meetingAttendanceReport"
}-->

```json
{
  "@odata.type": "#microsoft.graph.meetingAttendanceReport",
  "id": "String(identifier)",
  "meetingEndDateTime": "String (timestamp)",
  "meetingStartDateTime": "String (timestamp)",
  "totalParticipantCount": "Int32",
  "externalEventInformation": [{"@odata.type": "microsoft.graph.virtualEventExternalInformation"}],

  "attendanceRecords": [{"@odata.type": "#microsoft.graph.attendanceRecord"}]
}
```
