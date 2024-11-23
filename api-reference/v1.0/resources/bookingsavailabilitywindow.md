---
title: "bookingsAvailabilityWindow resource type"
description: "Represents the availability details of a booking service in a scheduling policy between two dates."
author: "PurvaEkatpure"
ms.localizationpriority: medium
ms.subservice: "microsoft-bookings"
doc_type: resourcePageType
ms.date: 07/30/2024
---

# bookingsAvailabilityWindow resource type

Namespace: microsoft.graph

Represents the availability details of a booking service in a scheduling policy between two dates.

Inherits from [bookingsAvailability](../resources/bookingsavailability.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|availabilityType|bookingsServiceAvailabilityType|Availability type defined by the given **bookingsAvailability**. The possible values are: `bookWhenStaffAreFree`, `notBookable`, `customWeeklyHours`, `unknownFutureValue`. Inherited from [bookingsAvailability](../resources/bookingsavailability.md).|
|businessHours|[bookingWorkHours](../resources/bookingworkhours.md) collection|The hours of operation in a week. The business hours value is set to `null` if the availability type isn't `customWeeklyHours`. Inherited from [bookingsAvailability](../resources/bookingsavailability.md).|
|endDate|Date|End date of the availability window.|
|startDate|Date|Start date of the availability window.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.bookingsAvailabilityWindow"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.bookingsAvailabilityWindow",
  "availabilityType": "String",
  "businessHours": [{"@odata.type": "microsoft.graph.bookingWorkHours"}],
  "endDate": "String (Date)",
  "startDate": "String (Date)"
}
```
