---
title: "attendanceRecord resource type"
description: "Represents information associated with an attendance record in a meetingAttendanceReport."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 10/22/2024
---

# attendanceRecord resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information associated with an attendance record in a [meetingAttendanceReport](meetingattendancereport.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/attendancerecord-list.md)|[attendanceRecord](../resources/attendancerecord.md) collection|Get a list of [attendanceRecord](../resources/attendancerecord.md) objects and their properties.|

## Properties

| Property            | Type    | Description|
|:--------------------|:--------|:-----------|
| attendanceIntervals | [attendanceInterval](attendanceinterval.md) collection | The list of time periods between joining and leaving a meeting. |
| emailAddress | String | The email address of the user associated with this attendance record. |
| identity | [identity](identity.md) | The identity of the user associated with this attendance record. The specific type is one of the following derived types of [identity](identity.md), depending on the type of the user: [communicationsUserIdentity](communicationsUserIdentity.md), [azureCommunicationServicesUserIdentity](azureCommunicationServicesUserIdentity.md). |
| role | String | The role of the attendee. Possible values are: `None`, `Attendee`, `Presenter`, and `Organizer`.  |
| registrantId | String | The unique identifier of a [meetingRegistrant](meetingregistrantbase.md). Present when the participant is registered for the meeting. (deprecated) |
| registrationId (Deprecated)| String | The nique identifier of a virtualEventRegistration. Present for each participant registered for the virtualEventWebinar. |
| totalAttendanceInSeconds | Int32 | The total duration of the attendances in seconds. |

> [!TIP]
> The **registrantId** property is deprecated and will stop returning data on **December 12, 2024**. A new property will replace it by the end of 2024. For more information, see [Deprecation of the Microsoft Graph meeting registration beta APIs](https://devblogs.microsoft.com/microsoft365dev/deprecation-of-the-microsoft-graph-meeting-registration-beta-apis/).

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
  "emailAddress": "String",
  "totalAttendanceInSeconds": "Int32",
  "role": "String(None|Attendee|Presenter|Organizer)",
  "registrantId": "String",
  "registrationId": "String",
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
