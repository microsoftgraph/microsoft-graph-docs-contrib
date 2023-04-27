---
title: "attendanceRecord resource type"
description: "Contains information associated with an attendance record in a meetingAttendanceReport."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# attendanceRecord resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information associated with an attendance record in a [meetingAttendanceReport](meetingattendancereport.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List attendanceRecords](../api/attendancerecord-list.md)|[attendanceRecord](../resources/attendancerecord.md) collection|Get a list of [attendanceRecord](../resources/attendancerecord.md) objects and their properties.|

## Properties

| Property            | Type    | Description|
|:--------------------|:--------|:-----------|
| attendanceIntervals | [attendanceInterval](attendanceinterval.md) collection | List of time periods between joining and leaving a meeting. |
| emailAddress | String | Email address of the user associated with this atttendance record. |
| identity | [identity](identity.md) | Identity of the user associated with this atttendance record. The specific type will be one of the following derived types of [identity](identity.md), depending on the type of the user: [communicationsUserIdentity](communicationsUserIdentity.md), [azureCommunicationServicesUserIdentity](azureCommunicationServicesUserIdentity.md). |
| role | String | Role of the attendee. Possible values are: `None`, `Attendee`, `Presenter`, and `Organizer`.  |
| registrantId | String | Unique identifier of a [meetingRegistrant](meetingregistrantbase.md). Presents when the participant has registered for the meeting. |
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
  "registrantId": "String",
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
