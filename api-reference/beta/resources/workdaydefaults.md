---
title: "workDayDefaults resource type"
description: "Default working-day start and end times for a plan, used by planCalendar."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# workDayDefaults resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **workDayDefaults** property of the [planCalendar](plancalendar.md) resource uses this type.

Default working-day start and end times for a [plan](plan.md), used by [planCalendar](plancalendar.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|endTime|TimeOfDay|Default end time of the working day.|
|startTime|TimeOfDay|Default start time of the working day.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.workDayDefaults"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.workDayDefaults",
  "startTime": "String (time of day)",
  "endTime": "String (time of day)"
}
```

