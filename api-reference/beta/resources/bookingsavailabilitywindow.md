---
title: "bookingsAvailabilityWindow resource type"
description: "Represents the availability details of a booking service in a scheduling policy between two dates"
author: "vikailas"
ms.localizationpriority: medium
ms.subservice: "microsoft-bookings"
doc_type: resourcePageType
---

# bookingsAvailabilityWindow resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the availability details of a booking service in a scheduling policy between two dates.

Inherits from [bookingsAvailability](../resources/bookingsavailability.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|availabilityType|bookingsServiceAvailabilityType|Availability type defined by the given bookingsAvailability. The possible values are: `bookWhenStaffAreFree`, `notBookable`, `customWeeklyHours`, `unknownFutureValue`.|
|businessHours|[bookingWorkHours](../resources/bookingworkhours.md) collection|The hours of operation in a week. The business hours value is set to `null` if the availability type isn't customWeeklyHours.|
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
  "businessHours": [
    {
      "@odata.type": "microsoft.graph.bookingWorkHours"
    }
  ],
  "startDate": "Date",
  "endDate": "Date"
}
```

