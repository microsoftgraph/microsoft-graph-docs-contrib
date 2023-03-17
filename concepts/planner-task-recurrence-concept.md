---
title: "Configuring task recurrence in Planner"
description: "Learn how to use recurrence with Planner tasks to automate creation of repetitive tasks."
author: "DavidMoksha"
ms.localizationpriority: medium
ms.prod: "planner"
---

# Configuring task recurrence in planner

This article describes how to use recurrence with [Planner task](/graph/api/resources/plannertask) to automate creation of repetitive tasks. The **recurrence** property on a Planner task allows users to automate creation of future tasks, representing a real-life task that needs to be completed repetitively.

## User scenarios

The following scenarios are supported:

- Add recurrence behavior to an existing task, thus creating a recurring series. Alternately, create a new task with recurrence defined. The end result for both is the same: a recurring task, the first in a recurring series. Users specify the schedule for recurrence.

- Edit the recurrence schedule for an existing recurring series.

- Continue a series:
  - Marking a task complete results in a new task being generated to continue the series, according to the recurrence schedule.
  - If the active task in a series is deleted, the user should be prompted to determine whether they want to continue the series or terminate the series. If the client does not know about recurrence and does not offer a prompt, the series should continue -- that is, it should not be terminated accidentally.

- Terminate a series:
  - By deleting the active task in the series (and saying yes to terminate the series), or
  - By terminating the series without deleting the active task.

- Revive a series: if recurrence was terminated via one of the above options, it should be possible to reinstate the series.

### Conceptual differences between recurring meetings and recurring tasks

Let's take a real-life scenario for recurring tasks, to illustrate the interesting differences between recurring meetings and recurring tasks, and to explore the problem space of changes to a recurrence pattern.

Our example involves a report that must be completed regularly. We utilize a recurring task to track completion of the report.

Let's say the report is due every 2 weeks on Friday (and so also is the task); and that the series started on May 14, 2021 -- so the first report is due on that date, Fri May 14.
Fast forward to Jan 7, 2022, 34 weeks later. The person doing the reports took some time off in December, and nobody completed the reports. The current recurring task (and corresponding report) is due Dec 10. The report (and the task) are now 4 weeks overdue.

At this point we can detect a contrast with recurring meetings and events. Meetings don't need to be _marked complete_ in order for an automated system to schedule the next meeting on the calendar. Whereas completing an overdue task can generate another task that is due in the past, there is no concept of _completing a meeting in the past_. The next instance of a meeting is always in the future, based on _today's date_. We don't use _today's date_ for calculating due dates of recurring tasks, because we don't want to lose track of late work.

Back to the example: for this task, if the recurrence schedule is not edited, and the Dec 10 task is marked complete, then the next task for the series is instantiated with a due date of Dec 24.

However, suppose it is decided that going forward, this report should be done every 3 weeks, rather than every 2 weeks.
It might even be decided that the 3-week cadence should be retroactive for the overdue reports.
This change invites different possible options of how we want to define the continuation of the series.

- Do we want to change the Dec 10 due date?
- When do we want the next task to be due?

Quickly reviewing the state of our recurring task, and our decision:

- The current task has a due date of Dec 10, 2021.
- The previous completed task was due on Nov 26, 2021.
- A decision is made to change the cadence from 2 weeks to 3 weeks; we will make that change retroactively for the overdue reports.

Given the above, we have two options, both valid customer stories, for how the series can be changed to accommodate the new 3-week cadence:

Option 1: Change the Dec 10 task to be due 3 weeks after our previous Nov 26 task. The current task will have its due date changed to Dec 17, and the following task will be due Jan 7.

Option 2: Keep the current Dec 10 due date, and change the cadence for the following task, which will be due Dec 31.

Planner supports both of these options; _today's date_ doesn't factor into how these different cases are handled. This example is explored further below, in [Example 1: Changing the pattern with and without changes to patternStartDateTime](#example-1-changing-the-pattern-with-and-without-changes-to-patternstartdatetime).

## Definitions

The following terms are used to discuss and describe Planner tasks with recurrence:

### Definition of a task with active recurrence

If the following three conditions are met, then a **plannerTask** has _active recurrence:_

1. **percentComplete** property has a value less than `100`.
2. **recurrence.nextInSeriesTaskId** is `null` or undefined.
3. **recurrence.schedule** contains a valid **plannerRecurrenceSchedule** with a non-null **nextOccurrenceDateTime**.

A task with _active recurrence_ (call it _task A_) can trigger the service's recurrence mechanism, which creates a new task (_task B_) to continue the recurring series. When that happens, _task A_ has its **nextInSeriesTaskId** set to the ID of _task B_. Since _task A_ no longer meets condition 2, it no longer has _active recurrence_. _Task A_ can never have _active recurrence_ ever again, as **nextInSeriesTaskId** is a read-only property and the service never deletes its value.

### Definition of a recurrence series

A _recurrence series_ (also known as  _recurring series_) is a sequential series of tasks. The series begins when recurrence is first defined on one task, and the series continues through automatic creation of new tasks with the same **recurrence.seriesId**.

Tasks sharing the same **recurrence.seriesId** belong to the same _recurrence series_.
Each task in the series has a distinct **recurrence.occurenceId**.
The first task in the series has an **occurrenceId** of `1`.
When the first task has its recurrence mechanism triggered (by being marked complete or deleted, while it has _active recurrence_) then the second task is created, with an **occurenceId** of `2`. This process continues until the _recurrence series_ is terminated.

### Avoiding the ambiguous term recurring task

In common speech, the term _Recurring Task_ sometimes refers to the unique _task with active recurrence_ within a series; and sometimes refers to the _recurrence series_ itself, or all the tasks within the recurrence series. This ambiguity is common in spoken English: in the same way, _the weekly report_ might refer to one instance of the report, or to the recurring responsibility of doing the report each week. Due to this ambiguity, we try to avoid use of the term _recurring task_, preferring instead one of the above terms: _task with active recurrence_, or _recurrence series_.

## Resource type details

Working with recurrence for Planner tasks entails the use of several resource types: [plannerTaskRecurrence](/graph/api/resources/plannertaskrecurrence), [plannerRecurrenceSchedule](/graph/api/resources/plannerrecurrenceschedule), and [recurrencePattern](/graph/api/resources/recurrencepattern); further details about the latter two of these resource types are presented here.

### plannerRecurrenceSchedule

As described in the resource documentation, the [plannerRecurrenceSchedule](/graph/api/resources/plannerrecurrenceschedule) encapsulates a recurrence pattern definition (**pattern**), a start date for that pattern (**patternStartDateTime**), and a system-generated property that indicates the next occurrence date (**nextOccurrenceDateTime**).

The **pattern** is a [recurrencePattern](/graph/api/resources/recurrencepattern); see the [Planner-specific notes about the recurrencePattern](#planner-specific-notes-about-the-recurrencepattern), below.

The **patternStartDateTime** indicates the starting date and time of the series as a **DateTimeOffset**. A non-null value must be assigned to **patternStartDateTime** whenever the **pattern** property is used; this is currently the only way to define recurrence. Clients should generally reassign this value when they make a change to the **recurrence.schedule.pattern** to indicate the starting date of the new pattern, however if clients don't include a value then the service continues the series using a sane default value based on the schedule (see notes and clarifications below).

The **nextOccurrenceDateTime** is a read-only system-generated field. It provides the service-calculated date that is used as the **dueDateTime** for the next [plannerTask](/graph/api/resources/plannertask) in the series. The **nextOccurrenceDateTime** is calculated from the **pattern** along with either the **patternStartDateTime** or an _anchor value_ that tracks the originally scheduled date of the given task.

Note, Planner doesn't utilize the **recurrenceRange** resource type at this time.

### Planner-specific notes about the recurrencePattern

Planner-specific restrictions for [recurrencePattern](/graph/api/resources/recurrencepattern):

- `relativeMonthly` and `relativeYearly` patterns may not specify more than one day for **daysOfWeek**.
- For `weekly` patterns, if **daysOfWeek** contains more than one day, the **interval** must be `1`.

Clarifications about **recurrencePattern**:

- Whenever any property within a **recurrencePattern** is changed, all relevant pattern properties must be specified. For example, a pattern with (**type** = `daily`) and (**interval** = `1`) cannot be patched with only (**interval** = `2`); otherwise, the service returns a `400 Bad Request` response code. The (**type** = `daily`) property must also be specified, even though the **type** is not changing.
  - Note, this is normal behavior for the **recurrencePattern** resource type, although some other Planner properties work differently.
- Unused properties are automatically assigned a default value.
  - For example, the **month** property is only used for yearly patterns, with valid values from `1` to `12`. However, `daily`, `weekly`, and `monthly` patterns have `0` assigned to the **month** property, since `0` is the default for an integer value.
  - Enum properties, including **firstDayOfWeek** and **index**, get default values that correspond to the first enum value: `sunday` and `first`, respectively.
- For `absoluteMonthly` patterns, if the selected **dayOfMonth** doesn't exist in a particular month, the _last_ day of the month is substituted.
  - Example: if **dayOfMonth** is `31` and we recur for April, the selected date is April 30.
  - Example: if **dayOfMonth** is `29`, `30`, or `31` and we recur for February, the selected date is the _last_ day of February.
- Similarly, for `absoluteYearly` patterns with (**month** = `2`) and (**dayOfMonth** = `29`), the selected date in non-leap years will be Feb 28.
- For `weekly` patterns, the **firstDayOfWeek** property is used to distinguish between what is considered _this week_ and what is considered _next week_. This comes into play when you _change_ a `weekly` pattern. The _next task_ is scheduled for _next week_, and **firstDayOfWeek** determines when _next week_ begins.

#### Examples of how firstDayOfWeek affects changes to a weekly pattern

Given a _task with active recurrence_ with the following properties:

- it occurs weekly every Wednesday, that is, the **pattern** has (**type** = `weekly`) and (**interval** = `1`) and (**daysOfWeek** = [`wednesday`]) and (**firstDayOfWeek** = `sunday`)
- The **dueDateTime** is Wednesday 2/2
- The **nextOccurrenceDateTime** is Wednesday 2/9

We examine 3 possible changes to the **pattern** along with the resulting **nextOccurrenceDateTime** for each:

|Pattern Change|Resulting nextOccurrenceDateTime|
|:---|:---|
|weekly every Tuesday|Tuesday 2/8|
|weekly every Thursday|Thursday 2/10|
|weekly every Thursday; and **firstDayOfWeek** changed to Thursday|Thursday 2/3|

Note particularly the difference of Thursday 2/10 vs. Thursday 2/3. When (**firstDayOfWeek** = `Thursday`), Thursday 2/3 is _not in the same week_ as Wednesday 2/2 because a new week starts on Thursday; whereas if the **firstDayOfWeek** isn't `Thursday`, then Thursday 2/3 is in the _same week_ as Wednesday 2/2, and Thursday 2/10 is in the _next week_.

### Notes about the schedule and due date

The **dueDateTime** may be edited by clients to have a different value (including `null`), without affecting the schedule and the **nextOccurrenceDateTime**. For example, if a task is late and the due date is changed to accommodate that lateness, the next task in the series appears as originally scheduled, unless the **pattern** and/or the **patternStartDateTime** are explicitly updated. Hence, postponing the due date doesn't result in _skipping dates_ according to the defined schedule. This differs from a _meeting_ model, where _today's date_ plays a role in determining when the next meeting occurs. Knowing _today's date_ is relevant for calculating the next meeting or event date, but it is not relevant for calculating the next task due date.

#### Example 1: Changing the pattern with and without changes to patternStartDateTime

Given a _task with active recurrence_ with the following properties:

- The recurrence pattern specifies every 2 weeks on Friday, i.e. (**type** = `weekly`) and (**interval** = `2`) and (**daysOfWeek** = [`friday`]) and (**firstDayOfWeek** = `sunday`)
- The previous completed task was due on Nov 26, 2021.
- The current task is due Dec 10, 2021.
- The **nextOccurrenceDateTime** is Dec 24, 2021 (two weeks after the current due date).

A decision is made to change the cadence from 2 weeks to 3 weeks. Thus we will change the pattern to have (**interval** = `3`) along with the same values for weekly on Fridays.

We examine three distinct possibilities, which will yield different due dates for the next task in the series:

|Change description|Resulting nextOccurrenceDateTime|
|:---|:---|
|Change the **patternStartDateTime** to Dec 10, 2021|Dec 31, 2021|
|Change the **patternStartDateTime** to Dec 17, 2021|Jan 7, 2022|
|Do not change the **patternStartDateTime**|Dec 31, 2021|

In the first example, we set the **patternStartDateTime** to be the same value as the **dueDateTime**, i.e. Dec 10. The **nextOccurrenceDateTime** is set to 3 weeks after the **patternStartDateTime**, being Dec 31. Conceptually this represents the cadence change taking effect only for the following task rather than for this task.

In the second example, we set the **patternStartDateTime** to be 3 weeks after Nov 26, being Dec 17. Again, the **nextOccurrenceDateTime** is set to 3 weeks after the **patternStartDateTime**, this time Jan 7. Conceptually this represents the cadence change taking effect from Nov 26 (the previous task) rather than from Dec 10 (original due date of the current task).

Note that it is generally recommended that a task's **dueDateTime** should be changed to coincide with a new **patternStartDateTime**; however this is not required. If the **dueDateTime** is not changed along with the **patternStartDateTime** in the second example, then users continue to see a Dec 10 due date for the current task; and when it is complete the next task in the series is scheduled for Jan 7. This may be confusing for users, thus it is recommended to assign the **dueDateTime** and **patternStartDateTime** together.

The third example is similar to the first, except that we don't specify the **patternStartDateTime**. The **patternStartDateTime** may be long back, like in August, so it cannot be used. In this case the **nextOccurrenceDateTime** is calculated based on the _original due date_ of Dec 10, resulting in a **nextOccurrenceDateTime** of Dec 31, similar to the first example. It should be noted that the _original due date_ is not exposed, though it is used in this calculation. This means that the **dueDateTime** can be changed to another value, or even changed to be null, but the **dueDateTime** value is ignored for this calculation, using instead the _original due date_. This is another reason why it is recommended to change the **dueDateTime** and **patternStartDateTime** together.

#### Example 2: Due date does not affect next occurrence

Given a _task with active recurrence_ with the following properties:

- it occurs weekly every Wednesday, that is, the **pattern** has (**type** = `weekly`) and (**interval** = `1`) and (**daysOfWeek** = [`wednesday`]) and (**firstDayOfWeek** = `sunday`)
- The **dueDateTime** is Wed 2/16.
- The **nextOccurrenceDateTime** is Wed 2/9.
- The _original due date_ is Wednesday 2/2. This value is not publicly exposed, although it can be inferred from the **nextOccurrenceDateTime**.

We examine 3 possible changes:

|Change|Resulting nextOccurrenceDateTime|
|:---|:---|
|no change|Tuesday 2/9|
|**pattern** changed to be weekly every Thursday; no change to **patternStartDateTime**|Thursday 2/10|
|**patternStartDateTime** changed to 2/9; no change to **pattern**|Wednesday 2/16|

In all 3 examples, the **dueDateTime** is not changed from its modified value of Wed 2/16; and the next task in the series is created with a **dueDateTime** equal to the **nextOccurrenceDateTime** in the above table.

Things to note from the above:

- The default behavior, when **patternStartDateTime** isn't explicitly reassigned, is that the schedule continues based on the _original due date_. In this case, the _original due date_ is 2/2, while the current **dueDateTime** is 2/16.
- If the **patternStartDateTime** is changed then the **nextOccurrenceDateTime** is recalculated using that new start date.
- If the due date were changed to `null` rather than 2/16, or to any other date in the future or past, the above examples would be unaffected.

## Developer scenarios

### Create a recurring series

The **recurrence.schedule** is the only client-editable sub-property of **recurrence**. By adding a **recurrence.schedule** (whether or not **recurrence** is already defined) clients can change a non-recurring task into a task with _active recurrence_.

The other two conditions mentioned in the above definition of _active recurrence_ influence whether a **recurrence.schedule** can be added:

- The **percentComplete** property must be less than `100`.
- The **recurrence.nextInSeriesTaskId** property must be `null` or unassigned.

Other **recurrence** sub-properties are read-only. Supposing they are not already assigned, the service automatically generate them when the **recurrence.schedule** is added.

### Trigger recurrence

There are two ways the recurrence mechanism can be triggered on a _task with active recurrence_:

- [Update the task](/graph/api/plannertask-update) and set **percentComplete** to `100` (also referred to as _completing the task_ or _marking the task complete_); or
- [Delete the task](/graph/api/plannertask-delete).

Please note the above definition for a _task with active recurrence:_ if any of the 3 conditions is not met, the recurrence mechanism will not be triggered (no new task is created and **nextInSeriesTaskId** isn't assigned.)

Instantiation of the new task usually happens immediately, though there may occasionally be a delay in creating the new task.

The new task will have the following properties copied from the now-complete task: **title**, **description**, **checklist items** (set to incomplete), **assignments**, **priority**, and **categories**. The **percentComplete** of the new task will be set to `0`. The **dueDateTime** of the new task will be set according to the recurrence schedule. The following sub-properties of recurrence are copied: **seriesId**, **recurrenceStartDateTime**, and **schedule** (excepting **schedule.nextOccurrenceDateTime** which is newly calculated for the new task). The other recurrence properties are given appropriate values for the new task.

### Discover the next task in a series

If _Task C_ has recurrence defined, and a user marks _Task C_ complete (**percentComplete** = `100`), then _Task D_ is created to continue the recurrence series. _Task C_ has its **recurrence.nextInSeriesTaskId** property populated with the ID of _task D_.

On the other hand, if _Task C_ is deleted, and the deletion triggers recurrence, then a client must discover the ID of _task D_ by some other means: for example by querying tasks in the same bucket, or by consuming the delta sync feed.

### Edit a recurring series

A task with active recurrence can have its recurrence schedule edited. Note that **recurrence.schedule** is the only sub-property of recurrence that may be edited.

Example: a task with active recurrence, and a schedule of _weekly every Wednesday_, can have its schedule changed to _monthly on the 15th day of each month_.

### Terminate a recurring series

In order to terminate a recurring series, set the **recurrence.schedule** property to `null`. This is only permitted when **nextInSeriesTaskId** is `null` or unassigned.

### Revive recurrence after termination

After removing the **recurrence.schedule**, it is possible to add a new **recurrence.schedule** to the task, which will revive the series.

Follow the steps for _Create a recurring series_, above. The same restrictions apply. The original **recurrence.seriesId** and other sub-properties of **recurrence** will be unchanged, effectively reinstating or continuing the original series.

### Identify the task with active recurrence, within a recurrence series

Given a **recurrence.seriesId**, a maximum of 1 task with that **seriesId** can have _active recurrence_.

Completed tasks are hidden from most views, so it is uncommon for a user to be viewing a task that has been marked complete. Deleted tasks cannot be viewed. This means that in most cases, there will be exactly 1 task with active recurrence, in a recurrence series. If the task with active recurrence has had its recurrence deactivated via the schedule being deleted, there will not be any tasks with active recurrence in that series.

#### Rare exceptional scenarios

The following scenarios are rare, though possible. Whereas they might appear to a client to be exceptions, in fact the back end of Planner maintains integrity for the following: A maximum of 1 _task with active recurrence_ in a given _recurrence series_. Guidance is given for disambiguation.

##### Causes

There are two causes for information appearing to be out of sync:

- Information hasn't yet reached Planner's fast client-facing storage. Planner's authoritative information source has the data, but the data hasn't yet been replicated to the request-optimized storage which returns data to clients.
- The recurrence mechanism encountered a temporary failure. This means that the new task to continue a series has not yet been created; it will usually be created within a few seconds or minutes.

##### Two tasks with active recurrence in the same recurrence series

If a client observes two tasks with active recurrence in the same recurrence series, then the task with the smaller **occurrenceId** can be assumed to have already had its recurrence mechanism triggered: Planner's back-end storage has the **nextInSeriesTaskId** set, but that information hasn't reached the fast client-facing storage yet. The task with the larger **occurrenceId** is the unique _task with active recurrence_.

##### A task with active recurrence has a smaller occurrenceId than another in the same recurrence series

Similar to the above "two tasks with active recurrence", this second situation may be observed if the task with the larger **occurrenceId** has its recurrence deactivated (**recurrence.schedule** set to `null`). The existence of a task with a larger **occurrenceId** implies that any tasks with smaller **occurrenceId** in that series do not have _active recurrence_ -- even if the task with the larger **occurrenceId** does not have _active recurrence_ either.

##### Zero tasks with active recurrence in a series

This is a truly ambiguous situation, as either of the following might be the case:

- The recurrence mechanism was delayed by a transient failure; it will be retried.
- The recurrence mechanism succeeded but the new task has not yet been added to the fast client-facing store.
- The new task was created, but then it was deleted by another client.

The first two are temporary states, that are guaranteed to be remedied by the service, typically within a few seconds or minutes.
The third is generally permanent. It's probably inaccurate to describe this scenario as _rare or exceptional_, however it is described here to bring attention to the fact that there is ambiguity in the observed state due to the possibility of the first two cases.

### Find all the tasks in a recurring series

Developers working with Planner will be familiar with the existing API to get all tasks in a Plan. Planner does not yet have an API to get all tasks in a _recurrence series_; however by getting all tasks in a Plan, one can usually obtain all the tasks in a _recurrence series_.

The **recurrence.seriesId** property on each **plannerTask** is an identifier that is distinct to a particular _recurring series_ that one or more tasks belong to. Once assigned, this value can never change. The **recurrence.occurrenceId** is an integer value indicating the ordering of the tasks within a series. The first task in a series (the task where recurrence was first added) is given an **occurrenceId** of `1`.

Note: If some tasks in the series have been deleted, there may be gaps in the indices.

Note: if users have moved the recurring series to a different Plan, then one will need to look in other plans to see other tasks in the series; however it is expected that users are primarily interested in the recurring series within one Plan. Tasks may not be moved across group boundaries, so if all the plans in a group are queried, one can find all the tasks that could have been moved out of the original Plan.

## Example REST operations

The following requests and responses represent an ordered sequence of operations. They may be used as test cases for clients implementing Planner task recurrence, by substituting appropriate identifiers (for task, plan, recurrence series, etc.)
Several error cases are interspersed, which illustrate incorrect changes to particular states.

### Add recurrence to an existing plannerTask, and add a due date for the task

This example request and response demonstrate adding recurrence to a task. In our example, the task with ID `Q7SNdWp5ekeJTpRRSCcZ3pUAD6kV` already exists and has **recurrence** = `null`.
In order to add recurrence, we assign the required properties of **recurrence.schedule**.
The unused **recurrencePattern** properties (**month**, **dayOfMonth**, **firstDayOFWeek**, and **index**) should not be included.

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

### Get the task to which we just added recurrence and a due date

This example request and response demonstrate retrieving the task with newly added recurrence.
Notes about the response:

- The unused **recurrencePattern** properties (**month**, **dayOfMonth**, **firstDayOFWeek**, and **index**) are assigned default values by the service.
- The **nextOccurrenceDateTime** is calculated from the schedule. In this case, the **patternStartDateTime** is Nov 13, and the **pattern** defines every-other-day; this gives a **nextOccurrenceDateTime** of two days after the **patternStartDateTime**, being Nov 15.
- The **seriesId** and **occurrenceId** are automatically generated. The **seriesId** is a new guid, encoded in the Planner identifier format. Since this is the first task in a series it gets an **occurrenceId** of `1`.
- The **recurrenceStartDateTime** gets assigned the same value as the **patternStartDateTime**. This is true for the first task in a series (**occurrenceId** = `1`) however for future tasks in the series, the value of **recurrenceStartDateTime** will not change even if the **patternStartDateTime** changes -- it tracks the beginning of recurrence, as contrasted with pattern changes.
- The **previousInSeriesTaskId** will always be `null`, since this is the first task in the series (**occurrenceId** = `1`).
- The **nextInSeriesTaskId** will be assigned if and when the next task is created to continue the series.

#### Request

```json
GET https://graph.microsoft.com/beta/planner/tasks/Q7SNdWp5ekeJTpRRSCcZ3pUAD6kV
```

#### Response

```json
HTTP/1.1 200 OK
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

This example request and response demonstrate setting **percentComplete** to `100` (in other words, marking the task complete).
This request is identical for a task with or without recurrence.

#### Request

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

### Get the now-complete task, so we can discover the ID of the next (2nd) task in the series

This example request and response demonstrate retrieving the task after it has been marked complete.
Notes about the response:

- Since **nextInSeriesTaskId** is assigned, this task no longer has _active recurrence_; and it never will ever again.
- We will grab the value of **nextInSeriesTaskId** and use it in our next request to get the new task by ID

#### Request

```json
GET https://graph.microsoft.com/beta/planner/tasks/Q7SNdWp5ekeJTpRRSCcZ3pUAD6kV
```

#### Response

```json
HTTP/1.1 200 OK
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

This example request and response demonstrate retrieving the new task in the series, whose ID we discovered from the **nextInSeriesTaskId** in the previous response.
Differences to note about this new task (`GxOo0ms1iEu3eBI1-6lk85UAI5FI`), compared with the previous one (`Q7SNdWp5ekeJTpRRSCcZ3pUAD6kV`):

- **dueDateTime** has been assigned the value from the previous task's **nextOccurrenceDateTime**.
- **nextOccurrenceDateTime** has been calculated according to the **schedule**: the next occurrence after the above **dueDateTime**.
- **occurrenceId** is `2` rather than `1`
- **percentComplete** is `0`.

#### Request

```json
GET https://graph.microsoft.com/beta/planner/tasks/GxOo0ms1iEu3eBI1-6lk85UAI5FI
```

#### Response

```json
HTTP/1.1 200 OK
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

### Edit recurrence on the task to be one day per week, and set the due date to null

This example request and response demonstrate assigning a null **dueDateTime** and a different **pattern** to a _task with active recurrence_.

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

### Get the task again to see the result of our edit

This example request and response demonstrate retrieving the task after our previous edits. We expect to see the **recurrence.schedule.pattern** we specified: weekly on Tuesdays, along with **dueDateTime** = `null`.
Notes about the response:

- A task can have active recurrence along with a null due date.
- The **nextOccurrenceDateTime** is re-calculated and now is on Nov 23, a Tuesday, from the **daysOfWeek**. This next occurrence is calculated based on the task's original **dueDateTime** of Nov 15, a Monday.

#### Request

```json
GET https://graph.microsoft.com/beta/planner/tasks/GxOo0ms1iEu3eBI1-6lk85UAI5FI
```

#### Response

```json
HTTP/1.1 200 OK
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

### Remove the recurrence schedule, thereby terminating the series

This example request and response demonstrate assigning a null **recurrence.schedule**, thereby terminating recurrence on this task.

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

This example request and response demonstrate retrieving the task after our previous edits. We expect to see **recurrence.schedule** = `null`.
Notes about the response:

- The recurrence series info is retained. If a new schedule is specified, this task still belongs to the same series.

#### Request

```json
GET https://graph.microsoft.com/beta/planner/tasks/GxOo0ms1iEu3eBI1-6lk85UAI5FI
```

#### Response

```json
HTTP/1.1 200 OK
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

This example request and response demonstrate a bad request, attempting to add a new **recurrence.schedule** without specifying the **patternStartDateTime**.
The response shows an error describing the problem.
Note, there is a small bug here: the error message should mention Recurrence.Schedule.PatternStartDateTime rather than Recurrence.Schedule.Range. The Planner team intends to fix this error message.

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

```json
HTTP/1.1 400 BAD REQUEST
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

This example request and response demonstrate assigning a new **recurrence.schedule** to a task that currently has **recurrence.schedule** = `null`.
Note that we do not assigne a **dueDateTime**.

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

#### Get the task with the new recurrence schedule

This example request and response demonstrate retrieving the task with the new recurrence schedule.
The **recurrence** properties (except **schedule**) remain unchanged, and the task has _active recurrence_, even while the **dueDateTime** property remains `null`.

##### Request

```json
GET https://graph.microsoft.com/beta/planner/tasks/GxOo0ms1iEu3eBI1-6lk85UAI5FI
```

##### Response

```json
HTTP/1.1 200 OK
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

This example request and response demonstrate a bad request, attempting to assign a value to the **recurrence.seriesId** property, which is read-only.
The response shows an error describing the problem.

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

```json
HTTP/1.1 400 BAD REQUEST
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

This example request and response demonstrate setting **percentComplete** to `100` (in other words, marking the task complete).
This request is identical for a task with or without recurrence.

#### Request

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

### Get the now-complete task, so we can discover the ID of the next (3rd) task in the series

This example request and response demonstrate retrieving the task after it has been marked complete.

#### Request

```json
GET https://graph.microsoft.com/beta/planner/tasks/GxOo0ms1iEu3eBI1-6lk85UAI5FI
```

#### Response

```json
HTTP/1.1 200 OK
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

This example request and response demonstrate a bad request, attempting to assign a value to the **recurrence.schedule** property after the **nextInSeriesTaskId** property has been assigned.
The response shows an error describing the problem.

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

```json
HTTP/1.1 400 BAD REQUEST
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

This example request and response demonstrate retrieving the new task in the series, whose ID we discovered from the **nextInSeriesTaskId** in the previous response.
As before, the **dueDateTime** has been assigned to the value presented in the previous task's **nextOccurrenceDateTime** -- even though the previous task's **dueDateTime** was `null`.

#### Request

```json
GET https://graph.microsoft.com/beta/planner/tasks/-6zr7XfE6E2JvxCSmE7Wdf8AClON
```

#### Response

```json
HTTP/1.1 200 OK
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
