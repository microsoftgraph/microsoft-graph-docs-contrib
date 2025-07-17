---
title: "timeSlot resource type"
description: "Represents a time slot for a meeting."
ms.localizationpriority: medium
author: "vrod9429"
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 08/08/2024
---

# timeSlot resource type

Namespace: microsoft.graph

Represents a time slot for a meeting.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|end|[dateTimeTimeZone](datetimetimezone.md)|The date, time, and time zone that a period ends. |
|start|[dateTimeTimeZone](datetimetimezone.md)|The date, time, and time zone that a period begins.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.timeSlot"
}-->

```json
{
  "end": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "start": {"@odata.type": "microsoft.graph.dateTimeTimeZone"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "timeSlot resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

