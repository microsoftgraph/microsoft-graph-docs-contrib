---
title: "bookingsAvailability resource type"
description: "Represents the availability details of a booking service in a scheduling policy."
author: "vikailas"
ms.localizationpriority: medium
ms.prod: "bookings"
doc_type: resourcePageType
---

# bookingsAvailability resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the availability details of a booking service in a scheduling policy.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|availabilityType|bookingsServiceAvailabilityType|Availability type defined by the given **bookingsAvailability**. The possible values are: `bookWhenStaffAreFree`, `notBookable`, `customWeeklyHours`, `unknownFutureValue`.|
|businessHours|[bookingWorkHours](../resources/bookingworkhours.md) collection|The hours of operation in a week. The business hours value is set to `null` if the availability type isn't **customWeeklyHours**.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.bookingsAvailability"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.bookingsAvailability",
  "availabilityType": "String",
  "businessHours": [
    {
      "@odata.type": "microsoft.graph.bookingWorkHours"
    }
  ]
}
```

