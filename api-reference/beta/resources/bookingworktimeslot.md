---
title: "bookingWorkTimeSlot resource type"
description: "Defines the start and end times for work."
ms.localizationpriority: medium
author: "arvindmicrosoft"
ms.prod: "bookings"
doc_type: resourcePageType
---

# bookingWorkTimeSlot resource type

Namespace: microsoft.graph

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
 
Defines the start and end times for work.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|end|TimeOfDay|The time of the day when work stops. For example, 17:00:00.0000000.|
|start|TimeOfDay|The time of the day when work starts. For example, 08:00:00.0000000.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bookingWorkTimeSlot"
}-->

```json
{
  "end": "String (timestamp)",
  "start": "String (timestamp)"
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


