---
title: "attendanceRecord resource type"
description: "Contains information associated with an attendance record in a meeting attendance report."
author: "mkhribech"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# attendanceRecord resource type

Namespace: microsoft.graph

Contains information associated with an attendance record in a meeting attendance report.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List attendanceRecords](../api/attendancerecord-list.md)|[attendanceRecord](../resources/attendancerecord.md) collection|Get a list of [attendanceRecord](../resources/attendancerecord.md) objects and their properties.|

## Properties

| Property            | Type    | Description|
|:--------------------|:--------|:-----------|
| attendanceIntervals | [attendanceInterval](attendanceInterval.md) collection | List of time periods between joining and leaving. |
| emailAddress | String | Email address. |
| identity | [Identity](identity.md) | Identifier, such as display name. |
| role | String | Role of the attendee. Possible values are `None`, `Attendee`, `Presenter`, and `Organizer`.  |
| totalAttendanceInSeconds | Int32 | Total duration of the attendances in seconds. |

## JSON representation

The following is a JSON representation of the resource.
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
  "emailAddress": "String",
  "totalAttendanceInSeconds": "Int32",
  "role": "String(None|Attendee|Presenter|Organizer)",
  "identity": {
    "@odata.type": "#microsoft.graph.identity"
  },
  "attendanceIntervals": [
    {
      "@odata.type": "#microsoft.graph.attendanceInterval"
    }
  ]
}

```
