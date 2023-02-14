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

Represents recurrence for a [Planner task](plannertask.md) in Microsoft 365. This resource allows clients to define and edit recurrence for a Planner Task. To add or edit recurrence, clients specify the **schedule**. For details, see [plannerRecurrenceSchedule](../resources/plannerrecurrenceschedule.md). To cancel recurrence, clients set the same **schedule** to `null`. In addition to the schedule, the **plannerTaskRecurrence** resource provides several more system-generated, read-only properties, useful for tracking and understanding recurrence. For a Planner task, once recurrence has been defined, it can't be set to `null`; although for tasks that have never had recurrence defined, recurrence is `null`.

Given a non-recurring task, a client might make it into a recurring task by specifying **schedule**. When the schedule is added, Planner populates the **seriesId** and **occurrenceId** properties, as well as other properties. The **occurrenceId** is `1` that indicates that this is the first task in a series. The second task in the series has an **occurrenceId** of `2`. The **seriesId** is a unique new string, created for the first task. The second task in the series and all other future tasks, inherits the **seriesId** from the first task, indicating that they are part of the same _recurring series_.

When a _task with active recurrence_ is marked complete (**percentComplete** set to `100`), a new task is created to continue the series. Alternately, if a _task with active recurrence_ is deleted without cancelling recurrence, a new task is also created to continue the series. If the series should be discontinued, the **schedule** should first be set to `null`, then the task can be deleted and recurrence stops.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|nextInSeriesTaskId|String|The **taskId** of the next task in this series. This value is assigned at the time the next task in the series is created, and is `null` prior to that time.|
|occurrenceId|Int32|The 1-based index of this task within the recurrence series. The first task in a series has the value `1`, the next task in the series has the value `2`, and so on.|
|previousInSeriesTaskId|String|The **taskId** of the previous task in this series. `null` for the first task in a series since no predecessor. All subsequent tasks in the series have a value that corresponds to their predecessors.|
|recurrenceStartDateTime|DateTimeOffset|The date and time when this recurrence series begin. For the first task in a series (**occurrenceId** = 1) this value is copied from `schedule.patternStartDateTime`. For subsequent tasks in the series (**occurrenceId** >= 2) this value is copied from the previous task and never changes; it preserves the start date of the recurring series. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|schedule|[plannerRecurrenceSchedule](../resources/plannerrecurrenceschedule.md)|The schedule for recurrence. Clients define and edit recurrence by specifying the schedule. If **nextInSeriesTaskId** isn't assigned, clients might terminate the series by assigning `null` to this property.|
|seriesId|String|The recurrence series this task belongs to. A GUID-based value that serves as the unique identifier for a series.|

## Relationships

None.

## JSON representation

The following is an example JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerTaskRecurrence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerTaskRecurrence",
  "nextInSeriesTaskId": null,
  "occurrenceId": 2,
  "previousInSeriesTaskId": "2C-0IBG4kEqTv29ghsqlpf8ACJq_",
  "recurrenceStartDateTime": "2022-02-22T02:10:33Z",
  "schedule": {
    "pattern": {
      "type": "daily",
      "interval": 33,
      "firstDayOfWeek": "sunday",
      "dayOfMonth": 0,
      "daysOfWeek": [],
      "index": "first",
      "month": 0
    },
    "nextOccurrenceDateTime": "2022-04-29T02:10:33Z",
    "patternStartDateTime": "2022-02-22T02:10:33Z"
  },
  "seriesId": "qOqWwPLt4U-LIsWV5ByUuA"
}
```
