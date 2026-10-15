---
title: "dateWithOptionalTime resource type"
description: "A date value with an optional time-of-day component, used for task start, due, and finish dates."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# dateWithOptionalTime resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **dueDateTime** property of the [task](task.md) resource uses this type. The **finishDateTime** property of the [task](task.md) resource uses this type. The **startDateTime** property of the [task](task.md) resource uses this type.

A date value with an optional time-of-day component, used for [task](task.md) start, due, and finish dates.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|date|Date|The date component of the value.|
|isTimeSpecified|Boolean|Indicates whether a specific time (not just a date) was provided.|
|time|TimeOfDay|The optional time-of-day component of the value.|
|timeZone|String|Time zone the time value is expressed in, if time is set.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.dateWithOptionalTime"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.dateWithOptionalTime",
  "date": "Date",
  "time": "String (time of day)",
  "timeZone": "String",
  "isTimeSpecified": "Boolean"
}
```

