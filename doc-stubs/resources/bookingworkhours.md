---
title: "bookingWorkHours resource type"
description: "This type represents the set of working hours in a single day of the week."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# bookingWorkHours resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This type represents the set of working hours in a single day of the week.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|day|dayOfWeek|The day of the week represented by this instance. The possible values are: `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`.|
|timeSlots|[bookingWorkTimeSlot](../resources/bookingworktimeslot.md) collection|A list of start/end times during a day.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.bookingWorkHours"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.bookingWorkHours",
  "day": "String",
  "timeSlots": [
    {
      "@odata.type": "microsoft.graph.bookingWorkTimeSlot"
    }
  ]
}
```

