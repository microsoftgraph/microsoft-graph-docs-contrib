---
title: "planCalendar resource type"
description: "Working-time calendar settings for a plan, including the plan's time zone and default working days."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# planCalendar resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **calendar** property of the [plan](plan.md) resource uses this type.

Working-time calendar settings for a [plan](plan.md), including the plan's time zone and default working days.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|timeZone|String|Time zone the plan's calendar is expressed in.|
|workDayDefaults|[workDayDefaults](../resources/workdaydefaults.md)|Default working-day start and end times for the plan.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.planCalendar"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.planCalendar",
  "timeZone": "String",
  "workDayDefaults": {
    "@odata.type": "microsoft.graph.workDayDefaults"
  }
}
```

