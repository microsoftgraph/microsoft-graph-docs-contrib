---
title: "attendanceRecord resource type"
description: "Contains information associated with an attendance record in a meetingAttendanceReport."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 10/22/2024
---

# attendanceRecord resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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
| externalRegistrationInformation | [virtualEventExternalRegistrationInformation](../resources/virtualeventexternalregistrationinformation.md) | The external information for a virtual event registration. |
| identity | [identity](identity.md) | Identity of the user associated with this attendance record. The specific type will be one of the following derived types of [identity](identity.md), depending on the type of the user: [communicationsUserIdentity](communicationsUserIdentity.md), [azureCommunicationServicesUserIdentity](azureCommunicationServicesUserIdentity.md). |
| role | String | Role of the attendee. The possible values are: `None`, `Attendee`, `Presenter`, and `Organizer`.  |
| registrantId | String | Unique identifier of a [meetingRegistrant](meetingregistrantbase.md). Presents when the participant has registered for the meeting. (deprecated) |
| registrationId | String | Unique identifier of a virtualEventRegistration. Presents for all participant who has registered for the virtualEventWebinar. |
| totalAttendanceInSeconds | Int32 | Total duration of the attendances in seconds. |

> [!TIP]
> The **registrantId** property is deprecated and will stop returning data on **December 12, 2024**. There will be a new property replacing this by the end of 2024. For more information, see [Deprecation of the Microsoft Graph meeting registration beta APIs](https://devblogs.microsoft.com/microsoft365dev/deprecation-of-the-microsoft-graph-meeting-registration-beta-apis/).

## Relationships
None.

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
  ],
  "externalRegistrationInformation": {
    "@odata.type": "#microsoft.graph.virtualEventExternalRegistrationInformation",
      "referrer": "String",
      "registrationId": "String"
  }
}
```
