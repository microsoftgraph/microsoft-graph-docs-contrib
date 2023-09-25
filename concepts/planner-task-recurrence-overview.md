---
title: "Configuring task recurrence in Planner (preview)"
description: "Learn how to use recurrence with Planner tasks to automate the creation of repetitive tasks."
author: "DavidMoksha"
ms.localizationpriority: medium
ms.prod: "planner"
doc_type: conceptualPageType
---

# Configuring task recurrence in Planner (preview)

This article describes how to use recurrence with [Planner tasks](/graph/api/resources/plannertask) to automate the creation of repetitive tasks. The **recurrence** property on a Planner task allows users to automate the creation of future tasks that represent real-life tasks that need to be completed repetitively.

## User scenarios

The following scenarios are supported:

- Add recurrence behavior to an existing task, thus creating a recurring series. Alternately, create a new task with recurrence defined. The end result for both is the same: a recurring task, the first in a recurring series. Users specify the schedule for recurrence.

- Edit the recurrence schedule for an existing recurring series.

- Continue a series. Marking a task complete results in the generation of a new task to continue the series, according to the recurrence schedule. If the active task in a series is deleted, the user should be prompted to determine whether they want to continue or terminate the series. If the client doesn't know about recurrence and doesn't offer a prompt, the series should continue. It shouldn't be terminated accidentally.

- Terminate a series by:
  - Deleting the active task in the series (and choosing **yes** to terminate the series).
  - Terminating the series without deleting the active task.

- Revive a series. If recurrence was terminated, it should be possible to reinstate the series.

### Conceptual differences between recurring meetings and recurring tasks

This section describes a real-life scenario for recurring tasks, to illustrate the interesting differences between recurring meetings and recurring tasks, and to explore the problem space of changes to a recurrence pattern.

The following example involves a report that must be completed regularly and utilizes a recurring task to track completion of the report.

The report and its associated task are due every 2 weeks on Friday; the series started on May 14, 2021. The first report is due on that date, Friday, May 14. Fast forward to January 7, 2022, 34 weeks later. The person who did the reports took some time off in December, and nobody completed the reports. The current recurring task (and corresponding report) is due on December 10. The report and its associated task are now 4 weeks overdue.

>**Note:** At this point, the contrast between recurring meetings and events becomes apparent. Meetings don't need to be _marked complete_ in order for an automated system to schedule the next meeting on the calendar. Completing an overdue task can generate another task that is due in the past, but there is no concept of _completing a meeting in the past_. The next instance of a meeting is always in the future, based on _today's date_. The _today's date_ isn't used to calculate due dates of recurring tasks, in order to avoid losing track of late work.

For this task, if the recurrence schedule isn't edited, and the December 10 task is marked complete, the next task for the series is instantiated with a due date of December 24.

However, suppose a decision is made that going forward, this report should be done every 3 weeks, rather than every 2 weeks. The decision might even be that the 3-week cadence should be retroactive for the overdue reports. This change invites different possible options for how the continuation of the series can be defined:

- Should the December 10 due date be changed?
- When should the next task be due?

The following is the current state of the recurring task, and decision:

- The current task has a due date of December 10, 2021.
- The previous completed task was due on November 26, 2021.
- A decision is made to change the cadence from 2 weeks to 3 weeks; the change applies retroactively for the overdue reports.

Given the context, two options are possible, and both are valid customer stories for how the series can be changed to accommodate the new 3-week cadence.

Option 1: Change the December 10 task to be due 3 weeks after the previous November 26 task. The current task has its due date changed to December 17, and the following task is due on January 7.

Option 2: Keep the current December 10 due date, and change the cadence for the following task that is due on December 31.

Planner supports both of these options; _today's date_ doesn't factor into how these different cases are handled. This example is explored further in [Example 1: Changing the pattern with and without changes to patternStartDateTime](#example-1-changing-the-pattern-with-and-without-changes-to-patternstartdatetime).

## Definitions

The following terms are used to discuss and describe Planner tasks with recurrence:

### Definition of a task with active recurrence

If the following three conditions are met, a **plannerTask** has _active recurrence:_

- **percentComplete** property has a value less than `100`.
- **recurrence.nextInSeriesTaskId** is `null` or undefined.
- **recurrence.schedule** contains a valid **plannerRecurrenceSchedule** with a non-null **nextOccurrenceDateTime**.

A task with _active recurrence_ (call it _task A_) can trigger the recurrence mechanism of the service that creates a new task (_task B_) to continue the recurring series. When that happens, _task A_ has its **recurrence.nextInSeriesTaskId** set to the ID of _task B_. Because _task A_ no longer meets condition 2, it no longer has _active recurrence_. _Task A_ can never have _active recurrence_ ever again, as **nextInSeriesTaskId** is a read-only property and the service never deletes its value.

### Definition of a recurrence series

A _recurrence series_ (also known as _recurring series_) is a sequential series of tasks. The series begins when recurrence is first defined on one task, and the series continues through automatic creation of new tasks with the same **recurrence.seriesId**.

- Tasks sharing the same **recurrence.seriesId** belong to the same _recurrence series_.
- Each task in the series has a distinct **recurrence.occurenceId**.
- The first task in the series has an **occurrenceId** of `1`.
- When the first task has its recurrence mechanism triggered (by being marked complete or deleted, while it has _active recurrence_), then the second task is created with an **occurenceId** of `2`. This process continues until the _recurrence series_ is terminated.

### Avoiding the ambiguous term recurring task

In common speech, the term _recurring task_ sometimes refers to the unique _task with active recurrence_ within a series; and sometimes refers to the _recurrence series_ itself, or all the tasks within the recurrence series. This ambiguity is common in spoken English: in the same way, _the weekly report_ might refer to one instance of the report, or to the recurring responsibility of doing the report each week. Due to this ambiguity, the usage of the term _recurring task_ is avoided; instead, one of the following terms is preferred: _task with active recurrence_ or _recurrence series_.

## Resource type details

Working with recurrence for Planner tasks entails the use of many resource types: [plannerTaskRecurrence](/graph/api/resources/plannertaskrecurrence), [plannerRecurrenceSchedule](/graph/api/resources/plannerrecurrenceschedule), and [recurrencePattern](/graph/api/resources/recurrencepattern). the following sections provide more details about the latter two resource types.

### plannerRecurrenceSchedule

The [plannerRecurrenceSchedule](/graph/api/resources/plannerrecurrenceschedule) encapsulates a recurrence pattern definition (**pattern**), a start date for that pattern (**patternStartDateTime**), and a system-generated property that indicates the next occurrence date (**nextOccurrenceDateTime**).

The **pattern** is a [recurrencePattern](/graph/api/resources/recurrencepattern); for details, see [Planner-specific notes about the recurrencePattern](#planner-specific-notes-about-the-recurrencepattern).

The **patternStartDateTime** indicates the starting date and time of the series as a **DateTimeOffset**. A non-null value must be assigned to **patternStartDateTime** whenever the **pattern** property is used; this is currently the only way to define recurrence. Clients should generally reassign this value when they make a change to the **recurrence.schedule.pattern** to indicate the starting date of the new pattern; however, if clients don't include a value, the service continues the series using a default value based on the schedule. For more details, see the following notes and clarifications.

The **nextOccurrenceDateTime** is a read-only system-generated field. It provides the service-calculated date that is used as the **dueDateTime** for the next [plannerTask](/graph/api/resources/plannertask) in the series. The **nextOccurrenceDateTime** is calculated from the **pattern** along with either the **patternStartDateTime** or an _anchor value_ that tracks the originally scheduled date of the given task.

>**Note:** Planner doesn't currently use the **recurrenceRange** resource type.

### Planner-specific notes about the recurrencePattern

The following are Planner-specific restrictions for [recurrencePattern](/graph/api/resources/recurrencepattern):

- `relativeMonthly` and `relativeYearly` patterns might not specify more than one day for **daysOfWeek**.
- For `weekly` patterns, if **daysOfWeek** contains more than one day, the **interval** must be `1`.

Clarifications about **recurrencePattern**:

- Whenever any property within a **recurrencePattern** is changed, all relevant pattern properties must be specified. For example, a pattern with **type** = `daily` and **interval** = `1` can't be patched with only **interval** = `2`; otherwise, the service returns a `400 Bad Request` response code. The **type** = `daily` property must also be specified, even though the **type** isn't changing. This is normal behavior for the **recurrencePattern** resource type, although some other Planner properties work differently.

- Unused properties are automatically assigned a default value.
  - For example, the **month** property is only used for yearly patterns, with valid values from `1` to `12`. However, `daily`, `weekly`, and `monthly` patterns have `0` assigned to the **month** property, because `0` is the default for an integer value.
  - Enum properties, including **firstDayOfWeek** and **index**, get default values that correspond to the first enum value: `sunday` and `first`, respectively.

- For `absoluteMonthly` patterns, if the selected **dayOfMonth** doesn't exist in a particular month, the _last_ day of the month is substituted.
  - Example: if **dayOfMonth** is `31` and you recur for April, the selected date is April 30.
  - Example: if **dayOfMonth** is `29`, `30`, or `31` and you recur for February, the selected date is the _last_ day of February.

- Similarly, for `absoluteYearly` patterns with **month** = `2` and **dayOfMonth** = `29`, the selected date in non-leap years is February 28.

- For `weekly` patterns, the **firstDayOfWeek** property is used to distinguish between what is considered _this week_ and what is considered _next week_. This is relevant when you _change_ a `weekly` pattern. The _next task_ is scheduled for _next week_, and **firstDayOfWeek** determines when _next week_ begins.

#### Examples of how firstDayOfWeek affects changes to a weekly pattern

Given a _task with active recurrence_ with the following properties:

- It occurs weekly every Wednesday: the **pattern** has **type** = `weekly`, **interval** = `1`, **daysOfWeek** = [`wednesday`], and **firstDayOfWeek** = `sunday`
- The **dueDateTime** is Wednesday 2/2
- The **nextOccurrenceDateTime** is Wednesday 2/9

Three changes to the **pattern** are possible, and the resulting **nextOccurrenceDateTime** are shown in the following table.

|Pattern change|Resulting nextOccurrenceDateTime|
|:---|:---|
|Weekly every Tuesday|Tuesday 2/8|
|Weekly every Thursday|Thursday 2/10|
|Weekly every Thursday and **firstDayOfWeek** changed to Thursday|Thursday 2/3|

Note the difference of Thursday 2/10 vs. Thursday 2/3. When **firstDayOfWeek** = `Thursday`, Thursday 2/3 is _not in the same week_ as Wednesday 2/2 because a new week starts on Thursday; whereas if the **firstDayOfWeek** isn't `Thursday`, then Thursday 2/3 is in the _same week_ as Wednesday 2/2, and Thursday 2/10 is in the _next week_.

### Notes about the schedule and due date

The **dueDateTime** may be edited by clients to have a different value (including `null`), without affecting the schedule and the **nextOccurrenceDateTime**. For example, if a task is late and the due date is changed to accommodate that lateness, the next task in the series appears as originally scheduled, unless the **pattern** and/or the **patternStartDateTime** are explicitly updated. Hence, postponing the due date doesn't result in _skipping dates_ according to the defined schedule. This differs from a _meeting_ model, where _today's date_ plays a role in determining when the next meeting occurs. Knowing _today's date_ is relevant for calculating the next meeting or event date, but it isn't relevant for calculating the next task due date.

#### Example 1: Changing the pattern with and without changes to patternStartDateTime

Given a _task with active recurrence_ with the following properties:

- The recurrence pattern specifies every 2 weeks on Friday, for example, **type** = `weekly`, **interval** = `2`, **daysOfWeek** = [`friday`], and **firstDayOfWeek** = `sunday`.
- The previous completed task was due on November 26, 2021.
- The current task is due on December 10, 2021.
- The **nextOccurrenceDateTime** is December 24, 2021 (two weeks after the current due date).

A decision is made to change the cadence from 2 weeks to 3 weeks. Thus, the pattern is modified to have **interval** = `3` along with the same values for weekly on Fridays.

Three distinct possibilities are examined, each yielding different due dates for the next task in the series:

|Change description|Resulting nextOccurrenceDateTime|
|:---|:---|
|Change the **patternStartDateTime** to December 10, 2021|December 31, 2021|
|Change the **patternStartDateTime** to December 17, 2021|January 7, 2022|
|Don't change the **patternStartDateTime**|December 31, 2021|

In the first example, the **patternStartDateTime** is set to be the same value as the **dueDateTime**, for example, December 10. The **nextOccurrenceDateTime** is set to 3 weeks after the **patternStartDateTime**, being December 31. Conceptually, this represents the cadence change taking effect only for the following task rather than for this task.

In the second example, the **patternStartDateTime** is set to be 3 weeks after November 26, being December 17. Again, the **nextOccurrenceDateTime** is set to 3 weeks after the **patternStartDateTime**, this time January 7. Conceptually, this represents the cadence change taking effect from November 26 (the previous task) rather than from December 10 (original due date of the current task).

We generally recommend that the **dueDateTime** of a task be changed to coincide with a new **patternStartDateTime**; however this isn't required. If the **dueDateTime** isn't changed along with the **patternStartDateTime** in the second example, users continue to see a December 10 due date for the current task. When it is complete, the next task in the series is scheduled for January 7. Because this might be confusing for users, we recommend that you assign the **dueDateTime** and **patternStartDateTime** together.

The third example is similar to the first, except that it doesn't specify the **patternStartDateTime**. A **patternStartDateTime** that is long back, like in August, can't be used. In this case, the **nextOccurrenceDateTime** is calculated based on the _original due date_ of December 10, resulting in a **nextOccurrenceDateTime** of December 31, similar to the first example. Note that the _original due date_ isn't exposed, though it is used in this calculation. This means that the **dueDateTime** can be changed to another value, or even changed to be `null`, but the **dueDateTime** value is ignored for this calculation, using instead the _original due date_. This is another reason why we recommend that you change the **dueDateTime** and **patternStartDateTime** together.

#### Example 2: Due date doesn't affect next occurrence

Given a _task with active recurrence_ with the following properties:

- It occurs weekly every Wednesday: the **pattern** has **type** = `weekly`, **interval** = `1`, **daysOfWeek** = [`wednesday`], and **firstDayOfWeek** = `sunday`.
- The **dueDateTime** is Wed 2/16.
- The **nextOccurrenceDateTime** is Wed 2/9.
- The _original due date_ is Wednesday 2/2. This value isn't publicly exposed, although it can be inferred from the **nextOccurrenceDateTime**.

The following is an examination of three possible changes.

|Change|Resulting nextOccurrenceDateTime|
|:---|:---|
|No change|Tuesday 2/9|
|**pattern** changed to be weekly every Thursday; no change to **patternStartDateTime**|Thursday 2/10|
|**patternStartDateTime** changed to 2/9; no change to **pattern**|Wednesday 2/16|

In all three examples, the **dueDateTime** isn't changed from its modified value of Wednesday 2/16, and the next task in the series is created with a **dueDateTime** equal to the **nextOccurrenceDateTime** in the previous table.

> **Note:**
>
> - The default behavior, when **patternStartDateTime** isn't explicitly reassigned, is that the schedule continues based on the _original due date_. In this case, the _original due date_ is 2/2, while the current **dueDateTime** is 2/16.
> - If the **patternStartDateTime** is changed, the **nextOccurrenceDateTime** is recalculated using that new start date.
> - If the due date is changed to `null` rather than 2/16, or to any other date in the future or past, the previous examples would be unaffected.

## Developer scenarios

### Create a recurring series

The **recurrence.schedule** is the only client-editable sub-property of **recurrence**. By adding a **recurrence.schedule** (whether or not **recurrence** is already defined), clients can change a non-recurring task into a task with _active recurrence_.

The other two conditions mentioned in the definition of _active recurrence_ influence whether a **recurrence.schedule** can be added:

- The **percentComplete** property must be less than `100`.
- The **recurrence.nextInSeriesTaskId** property must be `null` or unassigned.

Other **recurrence** sub-properties are read-only. If they aren't already assigned, the service automatically generates them when the **recurrence.schedule** is added.

### Trigger recurrence

The following shows two ways that a the recurrence mechanism can be triggered on a _task with active recurrence_:

- [Update the task](/graph/api/plannertask-update) and set **percentComplete** to `100` (also referred to as _completing the task_ or _marking the task complete_).
- [Delete the task](/graph/api/plannertask-delete).

In the previous definition for a _task with active recurrence, if any of the three conditions isn't met, the recurrence mechanism isn't triggered (no new task is created and **nextInSeriesTaskId** isn't assigned.)

Instantiation of the new task usually happens immediately, which occasionally causes a delay in the creation of the new task.

The new task has the following properties copied from the now-complete task: **title**, **description**, **checklist items** (set to incomplete), **assignments**, **priority**, and **categories**. The **percentComplete** of the new task is set to `0`. The **dueDateTime** of the new task is set according to the recurrence schedule. The following sub-properties of recurrence are copied: **seriesId**, **recurrenceStartDateTime**, and **schedule**; **schedule.nextOccurrenceDateTime**  is newly calculated for the new task. The other recurrence properties are given appropriate values for the new task.

### Discover the next task in a series

If _task C_ has recurrence defined, and a user marks _task C_ complete (**percentComplete** = `100`), then _task D_ is created to continue the recurrence series. _Task C_ has its **recurrence.nextInSeriesTaskId** property populated with the ID of _task D_.

On the other hand, if _task C_ is deleted, and the deletion triggers recurrence, a client must discover the ID of _task D_ by some other means. For example, by querying tasks in the same bucket or by consuming the delta sync feed.

### Edit a recurring series

A task with active recurrence can have its recurrence schedule edited. Note that **recurrence.schedule** is the only sub-property of recurrence that can be edited.

For example, a task with active recurrence and a schedule of _weekly every Wednesday_, can have its schedule changed to _monthly on the 15th day of each month_.

### Terminate a recurring series

To terminate a recurring series, set the **recurrence.schedule** property to `null`. You can only do this when **nextInSeriesTaskId** is `null` or unassigned.

### Revive recurrence after termination

After removing the **recurrence.schedule**, you can add a new **recurrence.schedule** to the task that revives the series.

Follow the previous steps for _Create a recurring series_. The same restrictions apply. The original **recurrence.seriesId** and other sub-properties of **recurrence** are unchanged, effectively reinstating or continuing the original series.

### Identify the task with active recurrence, within a recurrence series

Given a **recurrence.seriesId**, a maximum of one task with that **seriesId** can have _active recurrence_.

Completed tasks are hidden from most views. It is uncommon for a user to be viewing a task that has been marked complete. Deleted tasks can't be viewed. This means that in most cases, only one task with active recurrence exists in a recurrence series. If the task with active recurrence has had its recurrence deactivated via the schedule being deleted, no tasks with active recurrence in that series exist.

#### Rare exceptional scenarios

The following scenarios are rare, though possible. While they might appear to a client to be exceptions, in fact the service always maintains integrity for the rule: a maximum of one _task with active recurrence_ in a given _recurrence series_. Guidance is given for disambiguation.

##### Causes

The following shows two possible causes for information appearing to be out of sync:

- Information hasn't yet reached the fast client-facing storage of Planner. The authoritative information source of Planner has the data, but the data hasn't yet been replicated to the request-optimized storage that returns data to clients.

- The recurrence mechanism encountered a temporary failure. This means that the new task to continue a series hasn't yet been created; it is usually created within a few seconds or minutes.

##### Two tasks with active recurrence in the same recurrence series

If a client observes two tasks with active recurrence in the same recurrence series, the task with the smaller **occurrenceId** can be assumed to have already had its recurrence mechanism triggered. The back-end storage of Planner has the **nextInSeriesTaskId** set, but that information hasn't reached the fast client-facing storage yet. The task with the larger **occurrenceId** is the unique _task with active recurrence_.

##### A task with active recurrence has a smaller occurrenceId than another in the same recurrence series

Similar to the previous "two tasks with active recurrence", this second situation might be observed if the task with the larger **occurrenceId** has its recurrence deactivated (**recurrence.schedule** = `null`). The existence of a task with a larger **occurrenceId** implies that any tasks with smaller **occurrenceId** in that series don't have _active recurrence_, even if the task with the larger **occurrenceId** doesn't have _active recurrence_ either.

##### Zero tasks with active recurrence in a series

This is a truly ambiguous situation, as either of the following might be the case:

- The recurrence mechanism was delayed by a transient failure; it will be retried.
- The recurrence mechanism succeeded but the new task hasn't yet been added to the fast client-facing store.
- The new task was created, but then it was deleted by another client.

The first two are temporary states, that are guaranteed to be remedied by the service, typically within a few seconds or minutes. The third is generally permanent. It's probably inaccurate to describe this scenario as _rare or exceptional_; however, it was described previously to bring attention to the fact that there is ambiguity in the observed state due to the possibility of the first two cases.

### Find all the tasks in a recurring series

Developers working with Planner are familiar with the existing API to get all tasks in a plan. Planner doesn't yet have an API to get all tasks in a _recurrence series_; however, by getting all tasks in a plan, you can usually obtain all the tasks in a _recurrence series_.

The **recurrence.seriesId** property on each **plannerTask** is an identifier that is distinct to a particular _recurring series_ that one or more tasks belong to. When assigned, this value can never change. The **recurrence.occurrenceId** is an integer value that indicates the ordering of the tasks within a series. The first task in a series (the task where recurrence was first added) is given an **occurrenceId** of `1`.

> **Note:**
>
> - If some tasks in the series have been deleted, the indices might contain gaps.
> - If users have moved the recurring series to a different plan, then you need to look in other plans to see other tasks in the series; however, users are typically primarily interested in the recurring series within one plan. Tasks may not be moved across group boundaries; if all the plans in a group are queried, you can find all the tasks that could have been moved out of the original plan.

## REST operation examples

The following requests and responses represent an ordered sequence of operations. They might be used as test cases for clients implementing Planner task recurrence, by substituting appropriate identifiers (for task, plan, recurrence series, and so on.) Many error cases are interspersed to illustrate incorrect changes to particular states.

### Add a due date and recurrence to an existing plannerTask

The following example request and response show how to recurrence to a task. The task with ID `Q7SNdWp5ekeJTpRRSCcZ3pUAD6kV` already exists and has **recurrence** = `null`. To add recurrence, you need to assign the required properties of **recurrence.schedule**. The unused **recurrencePattern** properties (**month**, **dayOfMonth**, **firstDayOFWeek**, and **index**) shouldn't be included.

#### Request

```json
PATCH https://graph.microsoft.com/beta/planner/tasks/Q7SNdWp5ekeJTpRRSCcZ3pUAD6kV

{
    "recurrence": {
        "schedule": {
            "pattern": {
                "type": "daily",
                "interval": 2
            },
            "patternStartDateTime": "2021-11-13T10:30:00Z"
        }
    },
    "dueDateTime": "2021-11-13T10:30:00Z"
}
```

#### Response

```json
HTTP/1.1 204 NO CONTENT
```

### Get the previous task

The following example request and response show how to retrieve the task with newly added recurrence.

#### Request

```json
GET https://graph.microsoft.com/beta/planner/tasks/Q7SNdWp5ekeJTpRRSCcZ3pUAD6kV
```

#### Response

The following are notes about the response:

- The unused **recurrencePattern** properties (**month**, **dayOfMonth**, **firstDayOFWeek**, and **index**) are assigned default values by the service.
- The **nextOccurrenceDateTime** is calculated from the schedule. In this case, the **patternStartDateTime** is November 13, and the **pattern** defines every-other-day; this gives a **nextOccurrenceDateTime** of two days after the **patternStartDateTime**, being November 15.
- The **seriesId** and **occurrenceId** are automatically generated. The **seriesId** is a new GUID, encoded in the Planner identifier format. Because this is the first task in a series, it gets an **occurrenceId** of `1`.
- The **recurrenceStartDateTime** gets assigned the same value as the **patternStartDateTime**. This is true for the first task in a series (**occurrenceId** = `1`). However, for future tasks in the series, the value of **recurrenceStartDateTime** doesn't change even if the **patternStartDateTime** changes; it tracks the beginning of recurrence, as contrasted with pattern changes.
- The **previousInSeriesTaskId** is always `null`, because this is the first task in the series (**occurrenceId** = `1`).
- The **nextInSeriesTaskId** is assigned if and when the next task is created to continue the series.

```json
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#planner/tasks/$entity",
    "@odata.etag": "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBASCc=\"",
    "planId": "4CaQUsrKXkyMDBhpF9cu-JUAAZ1V",
    "bucketId": "mVAeurfATUOEkpxi-60a9pUAJDxm",
    "title": "Water the plants",
    "orderHint": "8586352620867692777",
    "assigneePriority": "",
    "percentComplete": 0,
    "priority": 5,
    "startDate": null,
    "createdDateTime": "2019-08-20T23:46:38.708303Z",
    "hasDescription": false,
    "previewType": "automatic",
    "completedDateTime": null,
    "completedBy": null,
    "referenceCount": 0,
    "checklistItemCount": 0,
    "activeChecklistItemCount": 0,
    "conversationThreadId": null,
    "id": "Q7SNdWp5ekeJTpRRSCcZ3pUAD6kV",
    "createdBy": {
        "user": {
            "displayName": null,
            "id": "edcfc4b0-be77-4866-948a-b93267e151f8"
        }
    },
    "appliedCategories": {},
    "assignments": {},
    "recurrence": {
        "seriesId": "w5tLb5HceUmpuiYlhdXyHg",
        "occurrenceId": 1,
        "previousInSeriesTaskId": null,
        "nextInSeriesTaskId": null,
        "recurrenceStartDateTime": "2021-11-13T10:30:00Z",
        "schedule": {
            "patternStartDateTime": "2021-11-13T10:30:00Z",
            "nextOccurrenceDateTime": "2021-11-15T10:30:00Z",
            "pattern": {
                "type": "daily",
                "interval": 2,
                "firstDayOfWeek": "sunday",
                "dayOfMonth": 0,
                "daysOfWeek": [],
                "index": "first",
                "month": 0
            }
        }
    },
    "dueDateTime": "2021-11-13T10:30:00Z",
    "creationSource": null
}
```

### Mark the task complete, triggering recurrence (1st task in the series)

The following example request and response show how to set **percentComplete** to `100` (also referred to as _completing the task_ or _marking the task complete_).

#### Request

The following is an example of a request that is identical for a task with or without recurrence.

```json
PATCH https://graph.microsoft.com/beta/planner/tasks/Q7SNdWp5ekeJTpRRSCcZ3pUAD6kV

{
    "percentComplete": 100
}
```

#### Response

```json
HTTP/1.1 204 NO CONTENT
```

### Get the now-complete task and discover the ID of the next (2nd) task in the series

The following example request and response show how to retrieve the task after it has been marked complete.

#### Request

```json
GET https://graph.microsoft.com/beta/planner/tasks/Q7SNdWp5ekeJTpRRSCcZ3pUAD6kV
```

#### Response

The following is an example of the request. Because **nextInSeriesTaskId** is assigned, this task can no longer have _active recurrence_ configured.

```json
HTTP/1.1 200 OK
Content-type: application/json

{
    "_comment": "other fields omitted for brevity",
    "percentComplete": 100,
    "recurrence": {
        "seriesId": "w5tLb5HceUmpuiYlhdXyHg",
        "occurrenceId": 1,
        "previousInSeriesTaskId": null,
        "nextInSeriesTaskId": "GxOo0ms1iEu3eBI1-6lk85UAI5FI",
        "recurrenceStartDateTime": "2021-11-13T10:30:00Z",
        "schedule": {
            "patternStartDateTime": "2021-11-13T10:30:00Z",
            "nextOccurrenceDateTime": "2021-11-15T10:30:00Z",
            "pattern": {
                "type": "daily",
                "interval": 2,
                "firstDayOfWeek": "sunday",
                "dayOfMonth": 0,
                "daysOfWeek": [],
                "index": "first",
                "month": 0
            }
        }
    },
    "dueDateTime": "2021-11-13T10:30:00Z",
}
```

### Get the new task in the series (2nd occurrence)

The following example request and response show how to retrieve the new task in the series, ID for which was discovered from the **nextInSeriesTaskId** in the previous response.

#### Request

The example request (`GxOo0ms1iEu3eBI1-6lk85UAI5FI`) contains the following differences when compared with the previous example (`Q7SNdWp5ekeJTpRRSCcZ3pUAD6kV`):

- **dueDateTime** has been assigned the value from the previous **nextOccurrenceDateTime** of the task.
- **nextOccurrenceDateTime** has been calculated according to the **schedule**: the next occurrence after the previous **dueDateTime**.
- **occurrenceId** is `2` rather than `1`
- **percentComplete** is `0`.

```json
GET https://graph.microsoft.com/beta/planner/tasks/GxOo0ms1iEu3eBI1-6lk85UAI5FI
```

#### Response

```json
HTTP/1.1 200 OK
Content-type: application/json

{
    "_comment": "other fields omitted for brevity",
    "planId": "4CaQUsrKXkyMDBhpF9cu-JUAAZ1V",
    "bucketId": "mVAeurfATUOEkpxi-60a9pUAJDxm",
    "title": "Water the plants",
    "percentComplete": 0,
    "id": "GxOo0ms1iEu3eBI1-6lk85UAI5FI",
    "appliedCategories": {},
    "assignments": {},
    "recurrence": {
        "seriesId": "w5tLb5HceUmpuiYlhdXyHg",
        "occurrenceId": 2,
        "previousInSeriesTaskId": "Q7SNdWp5ekeJTpRRSCcZ3pUAD6kV",
        "nextInSeriesTaskId": null,
        "recurrenceStartDateTime": "2021-11-13T10:30:00Z",
        "schedule": {
            "patternStartDateTime": "2021-11-13T10:30:00Z",
            "nextOccurrenceDateTime": "2021-11-17T10:30:00Z",
            "pattern": {
                "type": "daily",
                "interval": 2,
                "firstDayOfWeek": "sunday",
                "dayOfMonth": 0,
                "daysOfWeek": [],
                "index": "first",
                "month": 0
            }
        }
    },
    "dueDateTime": "2021-11-15T10:30:00Z"
}
```

### Edit recurrence on the task to be one day per week and set the due date to null

The following example request and response show how to assign a `null` **dueDateTime** and a different **pattern** to a _task with active recurrence_.

#### Request

```json
PATCH https://graph.microsoft.com/beta/planner/tasks/GxOo0ms1iEu3eBI1-6lk85UAI5FI

{
    "recurrence": {
        "schedule": {
            "pattern": {
                "type": "weekly",
                "interval": 1,
                "daysOfWeek": [ "tuesday" ],
                "firstDayOfWeek": "sunday"
            }
        }
    },
    "dueDateTime": null
}
```

#### Response

```json
HTTP/1.1 204 NO CONTENT
```

### Get the task again to see the result of the edit

The following example request and response show how to retrieve the task after the previous edits. You can expect to see the **recurrence.schedule.pattern** specified previously: weekly on Tuesdays, along with **dueDateTime** = `null`.

#### Request

```json
GET https://graph.microsoft.com/beta/planner/tasks/GxOo0ms1iEu3eBI1-6lk85UAI5FI
```

#### Response

In the following example, a task can have active recurrence along with a `null` due date. The **nextOccurrenceDateTime** is re-calculated and now is on November 23, a Tuesday, from the **daysOfWeek**. This next occurrence is calculated based on the original **dueDateTime** of the task of November 15, a Monday.

```json
HTTP/1.1 200 OK
Content-type: application/json

{
    "_comment": "other fields omitted for brevity",
    "planId": "4CaQUsrKXkyMDBhpF9cu-JUAAZ1V",
    "bucketId": "mVAeurfATUOEkpxi-60a9pUAJDxm",
    "title": "Water the plants",
    "percentComplete": 0,
    "id": "GxOo0ms1iEu3eBI1-6lk85UAI5FI",
    "appliedCategories": {},
    "assignments": {},
    "recurrence": {
        "seriesId": "w5tLb5HceUmpuiYlhdXyHg",
        "occurrenceId": 2,
        "previousInSeriesTaskId": "Q7SNdWp5ekeJTpRRSCcZ3pUAD6kV",
        "nextInSeriesTaskId": null,
        "recurrenceStartDateTime": "2021-11-13T10:30:00Z",
        "schedule": {
            "patternStartDateTime": "2021-11-13T10:30:00Z",
            "nextOccurrenceDateTime": "2021-11-23T10:30:00Z",
            "pattern": {
                "type": "weekly",
                "interval": 1,
                "firstDayOfWeek": "sunday",
                "dayOfMonth": 0,
                "daysOfWeek": [ "tuesday" ],
                "index": "first",
                "month": 0
            }
        }
    },
    "dueDateTime": null
}
```

### Remove the recurrence schedule

The following example request and response show how to assign a `null` **recurrence.schedule**, thereby terminating recurrence on this task.

#### Request

```json
PATCH https://graph.microsoft.com/beta/planner/tasks/GxOo0ms1iEu3eBI1-6lk85UAI5FI

{
    "recurrence": {
        "schedule": null
    }
}
```

#### Response

```json
HTTP/1.1 204 NO CONTENT
```

### Get the task with the recurrence schedule deleted

The following example request and response show how to retrieve the task after the previous edits.

#### Request

```json
GET https://graph.microsoft.com/beta/planner/tasks/GxOo0ms1iEu3eBI1-6lk85UAI5FI
```

#### Response

The following is an example of the response that has the recurrence series info retained (**recurrence.schedule** = `null`). If a new schedule is specified, this task still belongs to the same series.

```json
HTTP/1.1 200 OK
Content-type: application/json

{
    "_comment": "other fields omitted for brevity",
    "recurrence": {
        "seriesId": "w5tLb5HceUmpuiYlhdXyHg",
        "occurrenceId": 2,
        "previousInSeriesTaskId": "Q7SNdWp5ekeJTpRRSCcZ3pUAD6kV",
        "nextInSeriesTaskId": null,
        "schedule": null,
        "recurrenceStartDateTime": "2021-11-13T10:30:00Z"
    },
    "dueDateTime": null
}
```

### Error case: Attempt to add a new recurrence schedule without specifying the patternStartDateTime

The following example request and response show a bad request, an attempt to add a new **recurrence.schedule** without specifying the **patternStartDateTime**.

#### Request

```json
PATCH https://graph.microsoft.com/beta/planner/tasks/GxOo0ms1iEu3eBI1-6lk85UAI5FI

{
    "recurrence": {
        "schedule": {
            "pattern": {
                "type": "daily",
                "interval": 5
            }
        }
    }
}
```

#### Response

The following is an example of the response that shows an error that describes the problem. The response object contains a bug because the error message should mention `Recurrence.Schedule.PatternStartDateTime` rather than `Recurrence.Schedule.Range`. This is currently a known issue.

```json
HTTP/1.1 400 BAD REQUEST
Content-type: application/json

{
    "error": {
        "code": "",
        "message": "Schema validation has failed. Validation for field 'Recurrence.Schedule.Range', on entity 'Task' has failed: A non-null value must be specified for this field.",
        "innerError": {
            "request-id": "922f7646-513a-4f63-a231-9cf2d7b647cb",
            "date": "2021-06-22T21:37:35"
        }
    }
}
```

### Reinstate recurrence on the task by adding a new schedule

The following example request and response show how to assign a new **recurrence.schedule** to a task that currently has **recurrence.schedule** = `null`.

> **Note:** The **dueDateTime** isn't assigned.

#### Request

```json
PATCH https://graph.microsoft.com/beta/planner/tasks/GxOo0ms1iEu3eBI1-6lk85UAI5FI

{
    "recurrence": {
        "schedule": {
            "pattern": {
                "type": "absoluteMonthly",
                "interval": 2,
                "dayOfMonth": 25
            },
            "patternStartDateTime": "2021-11-25T10:30:00Z"
        }
    }
}
```

#### Response

```json
HTTP/1.1 204 NO CONTENT
```

### Get the task with the new recurrence schedule

The following example request and response show how to retrieve the task with the new recurrence schedule.
The **recurrence** properties (except **schedule**) remain unchanged, and the task has _active recurrence_, even while the **dueDateTime** property remains `null`.

#### Request

```json
GET https://graph.microsoft.com/beta/planner/tasks/GxOo0ms1iEu3eBI1-6lk85UAI5FI
```

#### Response

```json
HTTP/1.1 200 OK
Content-type: application/json

{
    "_comment": "other fields omitted for brevity",
    "planId": "4CaQUsrKXkyMDBhpF9cu-JUAAZ1V",
    "bucketId": "mVAeurfATUOEkpxi-60a9pUAJDxm",
    "title": "Water the plants",
    "percentComplete": 0,
    "id": "GxOo0ms1iEu3eBI1-6lk85UAI5FI",
    "appliedCategories": {},
    "assignments": {},
    "recurrence": {
        "seriesId": "w5tLb5HceUmpuiYlhdXyHg",
        "occurrenceId": 2,
        "previousInSeriesTaskId": "Q7SNdWp5ekeJTpRRSCcZ3pUAD6kV",
        "nextInSeriesTaskId": null,
        "recurrenceStartDateTime": "2021-11-13T10:30:00Z",
        "schedule": {
            "patternStartDateTime": "2021-11-25T10:30:00Z",
            "nextOccurrenceDateTime": "2022-01-25T10:30:00Z",
            "pattern": {
                "type": "absoluteMonthly",
                "interval": 2,
                "firstDayOfWeek": "sunday",
                "dayOfMonth": 25,
                "daysOfWeek": [],
                "index": "first",
                "month": 0
            }
        }
    },
    "dueDateTime": null
}
```

### Error case: Attempt to edit a read-only property

The following example request and response show a bad request, an attempt to assign a value to the **recurrence.seriesId** property that is read-only.

#### Request

```json
PATCH https://graph.microsoft.com/beta/planner/tasks/GxOo0ms1iEu3eBI1-6lk85UAI5FI

{
    "recurrence": {
        "seriesId": "abc"
    }
}
```

#### Response

The following response object shows an error that describes the problem.

```json
HTTP/1.1 400 BAD REQUEST
Content-type: application/json

{
    "error": {
        "code": "",
        "message": "Invalid recurrence sub-property assignment(s): \"seriesId\".",
        "innerError": {
            "request-id": "922f7646-513a-4f63-a231-9cf2d7b647cb",
            "date": "2021-06-22T21:37:35"
        }
    }
}
```

### Mark the task complete, triggering recurrence (2nd task in the series, with null dueDateTime)

The following example request and response show how to set **percentComplete** to `100` (also referred to as _completing the task_ or _marking the task complete_).

#### Request

The following request is identical for a task with or without recurrence.

```json
PATCH https://graph.microsoft.com/beta/planner/tasks/GxOo0ms1iEu3eBI1-6lk85UAI5FI

{
    "percentComplete": 100
}
```

#### Response

```json
HTTP/1.1 204 NO CONTENT
```

### Get the now-complete task and discover the ID of the next (third) task in the series

The following example request and response show how to retrieve the task after it has been marked complete.

#### Request

```json
GET https://graph.microsoft.com/beta/planner/tasks/GxOo0ms1iEu3eBI1-6lk85UAI5FI
```

#### Response

```json
HTTP/1.1 200 OK
Content-type: application/json

{
    "_comment": "other fields omitted for brevity",
    "planId": "4CaQUsrKXkyMDBhpF9cu-JUAAZ1V",
    "bucketId": "mVAeurfATUOEkpxi-60a9pUAJDxm",
    "title": "Water the plants",
    "percentComplete": 100,
    "id": "GxOo0ms1iEu3eBI1-6lk85UAI5FI",
    "appliedCategories": {},
    "assignments": {},
    "recurrence": {
        "seriesId": "w5tLb5HceUmpuiYlhdXyHg",
        "occurrenceId": 2,
        "previousInSeriesTaskId": "Q7SNdWp5ekeJTpRRSCcZ3pUAD6kV",
        "nextInSeriesTaskId": "-6zr7XfE6E2JvxCSmE7Wdf8AClON",
        "recurrenceStartDateTime": "2021-11-13T10:30:00Z",
        "schedule": {
            "patternStartDateTime": "2021-11-25T10:30:00Z",
            "nextOccurrenceDateTime": "2022-01-25T10:30:00Z",
            "pattern": {
                "type": "absoluteMonthly",
                "interval": 2,
                "firstDayOfWeek": "sunday",
                "dayOfMonth": 25,
                "daysOfWeek": [],
                "index": "first",
                "month": 0
            }
        }
    },
    "dueDateTime": null
}
```

### Error case: Attempt to delete the recurrence schedule when the nextInSeriesTaskId is already assigned

The following example request and response show a bad request, an attempt to assign a value to the **recurrence.schedule** property after the **nextInSeriesTaskId** property has been assigned.

#### Request

```json
PATCH https://graph.microsoft.com/beta/planner/tasks/Q7SNdWp5ekeJTpRRSCcZ3pUAD6kV

{
    "recurrence": {
        "schedule": null
    }
}
```

#### Response

The following response object shows an error that describes the problem.

```json
HTTP/1.1 400 BAD REQUEST
Content-type: application/json

{
    "error": {
        "code": "",
        "message": "Schema validation has failed. Validation for field 'Recurrence', on entity 'Task' has failed: Cannot add/edit/delete recurrence when the next instance should already be created.",
        "innerError": {
            "request-id": "922f7646-513a-4f63-a231-9cf2d7b647cb",
            "date": "2021-06-22T21:37:35"
        }
    }
}
```

### Get the new task in the series (3rd occurrence)

The following example request and response show how to retrieve the new task in the series, ID for which you discovered from the **nextInSeriesTaskId** in the previous response. The **dueDateTime** has been assigned to the value presented in the previous **nextOccurrenceDateTime** of the task, even though the previous **dueDateTime** of the task was `null`.

#### Request

```json
GET https://graph.microsoft.com/beta/planner/tasks/-6zr7XfE6E2JvxCSmE7Wdf8AClON
```

#### Response

```json
HTTP/1.1 200 OK
Content-type: application/json

{
    "_comment": "other fields omitted for brevity",
    "planId": "4CaQUsrKXkyMDBhpF9cu-JUAAZ1V",
    "bucketId": "mVAeurfATUOEkpxi-60a9pUAJDxm",
    "title": "Water the plants",
    "percentComplete": 0,
    "id": "-6zr7XfE6E2JvxCSmE7Wdf8AClON",
    "appliedCategories": {},
    "assignments": {},
    "recurrence": {
        "seriesId": "w5tLb5HceUmpuiYlhdXyHg",
        "occurrenceId": 3,
        "previousInSeriesTaskId": "GxOo0ms1iEu3eBI1-6lk85UAI5FI",
        "nextInSeriesTaskId": null,
        "recurrenceStartDateTime": "2021-11-13T10:30:00Z",
        "schedule": {
            "patternStartDateTime": "2021-11-25T10:30:00Z",
            "nextOccurrenceDateTime": "2022-03-25T10:30:00Z",
            "pattern": {
                "type": "absoluteMonthly",
                "interval": 2,
                "firstDayOfWeek": "sunday",
                "dayOfMonth": 25,
                "daysOfWeek": [],
                "index": "first",
                "month": 0
            }
        }
    },
    "dueDateTime": "2022-01-25T10:30:00Z"
}
```
