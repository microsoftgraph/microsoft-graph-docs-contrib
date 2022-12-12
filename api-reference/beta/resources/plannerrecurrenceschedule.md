---
title: "plannerRecurrenceSchedule resource type"
description: "Represents the schedule for recurrence for a Planner Task in Microsoft 365"
author: "DaMoksha"
ms.localizationpriority: medium
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerRecurrenceSchedule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**plannerRecurrenceSchedule** represents a schedule for task recurrence within Planner. At present this includes a recurrence pattern definition (`pattern`), a start date for that pattern (`patternStartDateTime`), and a system-generated property indicating the next occurrence date (`nextOccurrenceDateTime`).

The **pattern** is a [recurrencePattern](recurrencePattern.md). Please see below [Planner-specific notes about the recurrencePattern](#planner-specific-notes-about-the-recurrencepattern)

The **patternStartDateTime** indicates the starting date and time of the series as a `DateTimeOffset`. This provides consistency with all of Planner's other date properties, e.g. **plannerTask.dueDateTime** (whose value is calculated from the `pattern` and the `patternStartDateTime`). A non-null value must be assigned to `patternStartDateTime` whenever the `pattern` property is used. Clients should generally re-assign this value when making a change to the `recurrence.schedule.pattern` to indicate the starting date of the new pattern, however if clients do not include a value then the service will generally continue the series using a sane default value based on the schedule (see notes and clarifications below).

The pattern and pattern start date may be null to accommodate future scenarios that define a recurrence schedule in a different way. A possible future scenario might provide a different means of specifying dates of recurrence which is not algorithmic and may not be appropriate to describe with the word "pattern". Consumers of **plannerRecurrenceSchedule** should be able to accommodate null values for the `pattern` and `patternStartDateTime` property, and understand that there may be a different, _new_ mechanism for specifying dates of recurrence.

The **nextOccurrenceDateTime** provides the service-calculated date that will be used as the `dueDateTime` for the next task in the series (future scenarios may apply the value to the next task's `task.startDateTime` rather than `task.dueDateTime`). Today, the nextOccurrenceDateTime is calculated from the `pattern` along with either the `patternStartDateTime` or an _anchor value_ that tracks the current originally scheduled date of the given task. For future recurrence models, the `nextOccurrenceDateTime` may be calculated from other future properties, or may be null if recurrence ends automatically or if the next occurrence cannot be calculated. After `nextInSeriesTaskId` is set -- meaning that the new task has been created -- the new task's `dueDateTime` may be edited and this value on the old task will not be updated; thus this value becomes only a historical record. The service may or may not delete this value when it becomes stale.

Note that Planner does not utilize the **recurrenceRange** resource type at this time.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|pattern|[recurrencePattern](../resources/recurrencepattern.md)|The pattern for recurrence. Must be assigned a value while it is the only supported schedule type, and `patternStartDateTime`e below must also be specified. May be null in future scenarios with different schedule specifications.|
|patternStartDateTime|DateTimeOffset|The start date for the recurrence pattern. Must be assigned a value when `pattern` is specified.|
|nextOccurrenceDateTime|DateTimeOffset|The next date for this `schedule`: when a new task is instantiated to continue the recurrence series, this date will be used for the new task's `dueDateTime`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerRecurrenceSchedule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerRecurrenceSchedule",
  "pattern": {
    "type": "weekly",
    "interval": 1,
    "firstDayOfWeek": "sunday",
    "dayOfMonth": null,
    "daysOfWeek": ["monday","wednesday","friday"],
    "index": null,
    "month": null
  },
  "patternStartDateTime": "2022-02-22T02:10:33Z",
  "nextOccurrenceDateTime": "2022-04-29T02:10:33Z"
}
```

## Planner-specific notes about the recurrencePattern

Planner-specific restrictions for **recurrencePattern**:

- `relativeMonthly` and `relativeYearly` patterns may not specify more than one day for `daysOfWeek`.
- For `weekly` patterns, if `daysOfWeek` contains more than one day, the `interval` must be 1.

Clarifications about **recurrencePattern**:

- Whenever any property within recurrencePattern is changed, all relevant pattern properties must be specified. For example, a pattern with `type` `daily` and `interval` `1` cannot be patched with just `interval` `2`: doing so will result in a 400 Bad Request. `type` `daily` must also be specified, even though the type is not changing. This is normal behavior for the **recurrencePattern** resource type, however within Planner this is uncommon for complex properties. Note, assigning null to unused properties is optional: for example, for the daily pattern you could assign `month` to `null` or not assign it. Planner will return responses that explicitly include these properties with null assignments.
- For `absoluteMonthly` patterns, if the selected `dayOfMonth` does not exist in a particular month, the _last_ day of the month will be substituted.
  - Example: if `dayOfMonth` is 31 and we are recurring for April, the recurrence will appear on April 30.
  - Example: if `dayOfMonth` is 29 or 30 or 31 and we are recurring for February, the recurrence will appear on the _last_ day of February.
- Similarly, for `absoluteYearly` patterns, the 29th of February will be replaced by the 28th of February in non-leap years.
- The `firstDayOfWeek` property is used to distinguish between what is considered _this week_ and what is considered _next week_. This comes into play when _changing_ a weekly pattern. The _next_ task will be scheduled for _next_ week; and `firstDayOfWeek` determines when _next_ week begins. Here is an example, with one _Given_ and 3 alternate _When/Then_ results.
  - Given: existing `pattern` is weekly every Wednesday with `firstDayOfWeek` Sunday; the `dueDateTime` is Wed 2/2.
    - When: The pattern is changed to be every Tuesday, Then: `nextOccurrenceDateTime` will be Tues 2/8.
    - When: The pattern is changed to be every Thursday, Then: `nextOccurrenceDateTime` will be Thurs 2/10.
    - When: The pattern is changed to be every Thursday, and `firstDayOfWeek` is changed to Thursday, Then: `nextOccurrenceDateTime` will be Thurs 2/3.
  - Note particularly the difference of Thurs 2/10 vs Thurs 2/3: when `firstDayOfWeek` is Thursday, Thurs 2/3 is _not in the same week_ as Wed 2/2 because a new week starts on Thursday; whereas if the `firstDayOfWeek` is not Thursday, then Thurs 2/3 is in the _same week_ as Wed 2/2 and Thurs 2/10 is in the _next week_.
  - If a client re-assigns the `patternStartDateTime` when changing the pattern, then the `firstDayOfWeek` will not come into play.

## Notes about the schedule and due date

The `dueDateTime` may be edited by clients to have a different value, without affecting the schedule and the `nextOccurrenceDateTime`. For example, if a task is late and the due date is changed to accommodate that lateness, the next task in the series will appear as originally scheduled, unless the `pattern` and/or `patternStartDateTime` are explicitly updated. Thus, postponing the due date will _not_ result in _skipping dates_ according to the defined schedule. This differs from a _meeting_ model, where _today's date_ plays a role in determining when the next meeting will occur: knowing _today's date_ is relevant for calculating the next meeting date, but it is not relevant for calculating the next task due date.

Here is a single _Given_ with three distinct _When/Then_ possibilities, to illustrate:

- Given: a weekly Wednesday task was created with due date 2/2; its `nextOccurrenceDateTime` is 2/9. The task is overdue, and the due date has been changed to 2/16, although this does not affect `nextOccurrenceDateTime`. We fork to 3 distinct and mutually exclusive possibilities:
  - When: the overdue task is marked complete, Then: the next task in the series will be created with a due date 2/9 (not 2/23). Since the recurrence schedule was not changed, 2/9 follows the original 2/2 due date.
  - When: the overdue task's `pattern` is changed to weekly on Thursdays, Then: `nextOccurrenceDateTime` is changed to 2/10.
  - When: the overdue task's `patternStartDateTime` is changed to 2/9, Then: `nextOccurrenceDateTime` is changed to 2/16 (the next date after the pattern start date, according to the pattern).

Things to note from the above:

- The default behavior, when `patternStartDateTime` is not explicitly reassigned, is that the schedule continues based on the _original_ due date (in this case, 2/2 rather than the current due date 2/16).
- If the `patternStartDateTime` is changed then the `nextOccurrenceDateTime` will be re-calculated using that new start date.
