---
title: "attendanceRecord resource type"
description: "Contains information associated with attendance record in meeting attendance report."
author: "xiaofengyue"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# attendanceRecord resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information associated with attendance record in meeting attendance report.

## Properties

| Property            | Type    | Description|
|:--------------------|:--------|:-----------|
| identity | microsoft.graph.Identity | Identifier, such as display name, etc |
| emailAddress | String | Email address |
| totalAttendanceInSeconds | Int32 | Total duration of the meetings in seconds |
| attendanceIntervals | [microsoft.graph.attendanceInterval](attendanceInterval.md) collection | List of time periods between joining and leaving |
| role | String | Role of the attendee, such as organizer |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.attendanceRecord"
}-->
```json
{
    "emailAddress": "String",
    "totalAttendanceInSeconds": "Int32",
    "role": "String",
    "identity": {
        "id": "String",
        "displayName": "String"
    },
    "attendanceIntervals": [
        {
            "joinDateTime": "DateTime",
            "leaveDateTime": "DateTime",
            "durationInSeconds": "Int32"
        }
    ]
}

```
