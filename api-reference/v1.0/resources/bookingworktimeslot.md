---
title: "bookingWorkTimeSlot resource type"
description: "Defines the start and end times for work."
ms.localizationpriority: medium
author: "arvindmicrosoft"
ms.subservice: "microsoft-bookings"
doc_type: resourcePageType
ms.date: 08/08/2024
---

# bookingWorkTimeSlot resource type

Namespace: microsoft.graph

Defines the start and end times for work.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|endTime|TimeOfDay|The time of the day when work stops. For example, 17:00:00.0000000.|
|startTime|TimeOfDay|The time of the day when work starts. For example, 08:00:00.0000000.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bookingWorkTimeSlot"
}-->

```json
{
  "endTime": "String (timestamp)",
  "startTime": "String (timestamp)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "bookingWorkTimeSlot resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


