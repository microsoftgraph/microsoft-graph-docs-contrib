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

Represents a date value used by the **startDateTime**, **dueDateTime**, and **finishDateTime** properties of a [task](../resources/task.md).

When creating or updating a task, supply only **date**. The **time**, **timeZone**, and **isTimeSpecified** properties describe returned values and must not be sent in write requests.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|date|Date|The date component of the value.|
|isTimeSpecified|Boolean|Indicates whether a specific time (not just a date) was provided. Read-only.|
|time|TimeOfDay|The optional time-of-day component of the value. Read-only.|
|timeZone|String|Time zone the time value is expressed in, if time is set. Read-only.|

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
