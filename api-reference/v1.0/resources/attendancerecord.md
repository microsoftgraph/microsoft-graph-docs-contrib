---
title: "attendanceRecord resource type"
description: "Contains information associated with an attendance record in a meetingAttendanceReport."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 10/21/2024
---

# attendanceRecord resource type

Namespace: microsoft.graph

Contains information associated with an attendance record in a [meetingAttendanceReport](meetingattendancereport.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/attendancerecord-list.md)|[attendanceRecord](../resources/attendancerecord.md) collection|Get a list of [attendanceRecord](../resources/attendancerecord.md) objects and their properties.|

## Properties

| Property            | Type    | Description|
|:--------------------|:--------|:-----------|
| attendanceIntervals | [attendanceInterval](attendanceinterval.md) collection | List of time periods between joining and leaving a meeting. |
| emailAddress | String | Email address of the user associated with this attendance record. |
| identity | [identity](identity.md) | Identity of the user associated with this attendance record. |
| role | String | Role of the attendee. Possible values are: `None`, `Attendee`, `Presenter`, and `Organizer`.  |
| totalAttendanceInSeconds | Int32 | Total duration of the attendances in seconds. |

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.attendanceRecord",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.attendanceRecord",
  "attendanceIntervals": [
    {
      "@odata.type": "#microsoft.graph.attendanceInterval"
    }
  ],
  "emailAddress": "String",
  "identity": {
    "@odata.type": "#microsoft.graph.identity"
  },
  "role": "String(None|Attendee|Presenter|Organizer)",
  "totalAttendanceInSeconds": "Int32"
}
```
