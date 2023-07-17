---
title: "plannerTaskRecurrence resource type"
description: "Represents recurrence for a Planner task in Microsoft 365."
author: "DaMoksha"
ms.localizationpriority: medium
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerTaskRecurrence resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents recurrence for a [Planner task](plannertask.md) in Microsoft 365, allowing clients to define and edit recurrence for a Planner task. To add or edit recurrence, clients specify the **schedule**. For details, see [plannerRecurrenceSchedule](../resources/plannerrecurrenceschedule.md). To cancel recurrence, clients set the same **schedule** to `null`. The **plannerTaskRecurrence** resource also provides system-generated and read-only properties that are useful for tracking and understanding recurrence. For a Planner task, after recurrence has been defined, it can't be set to `null`. For tasks that have never had recurrence defined, recurrence is `null`.

Given a non-recurring task, a client can make it into a recurring task by specifying **schedule**. When the schedule is added, Planner populates the **seriesId** and **occurrenceId** properties, as well as other properties. An **occurrenceId** of `1` indicates that this is the first task in the series. The second task in the series has an **occurrenceId** of `2`. The **seriesId** is a unique new string, created for the first task. The second task and all future tasks in the series inherit the **seriesId** from the first task, indicating that they are part of the same _recurring series_.

When a _task with active recurrence_ is marked complete (**percentComplete** set to `100`), a new task is created to continue the series. Alternately, if a _task with active recurrence_ is deleted without cancelling recurrence, a new task is also created to continue the series. If the series should be discontinued, the **schedule** should first be set to `null`, then the task can be deleted and recurrence stops.

For more details, see [Configuring task recurrence in Planner](/graph/planner-task-recurrence-overview).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|nextInSeriesTaskId|String|The **taskId** of the next task in this series. This value is assigned at the time the next task in the series is created, and is `null` prior to that time.|
|occurrenceId|Int32|The 1-based index of this task within the recurrence series. The first task in a series has the value `1`, the next task in the series has the value `2`, and so on.|
|previousInSeriesTaskId|String|The **taskId** of the previous task in this series. `null` for the first task in a series since it has no predecessor. All subsequent tasks in the series have a value that corresponds to their predecessors.|
|recurrenceStartDateTime|DateTimeOffset|The date and time when this recurrence series begin. For the first task in a series (**occurrenceId** = `1`) this value is copied from **schedule.patternStartDateTime**. For subsequent tasks in the series (**occurrenceId** >= `2`) this value is copied from the previous task and never changes; it preserves the start date of the recurring series. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|schedule|[plannerRecurrenceSchedule](../resources/plannerrecurrenceschedule.md)|The schedule for recurrence. Clients define and edit recurrence by specifying the schedule. If **nextInSeriesTaskId** isn't assigned, clients may terminate the series by assigning `null` to this property.|
|seriesId|String|The recurrence series this task belongs to. A GUID-based value that serves as the unique identifier for a series.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource. For real-looking examples that include this resource, see [Configuring task recurrence in Planner](/graph/planner-task-recurrence-overview).
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerTaskRecurrence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerTaskRecurrence",
  "nextInSeriesTaskId": "String",
  "occurrenceId": "Int32",
  "previousInSeriesTaskId": "String",
  "recurrenceStartDateTime": "String (timestamp)",
  "schedule": { "@odata.type": "#microsoft.graph.plannerRecurrenceSchedule" },
  "seriesId": "String"
}
```
