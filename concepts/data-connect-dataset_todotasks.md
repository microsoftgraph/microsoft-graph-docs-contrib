---
title: "Microsoft Graph Data Connect TodoTasks_v0 dataset"
description: "Use this dataset to identify Tasks in Microsoft Outlook that track user-level work items."
author: "rimisra2"
ms.localizationpriority: high
ms.prod: "data-connect"
ms.custom: datasets:dataset-name
---

# Microsoft Graph Data Connect TodoTasks_v0 dataset 

## Description

The TodoTasks_v0 dataset provides a list of Microsoft Outlook tasks. Tasks in Microsoft Outlook tracks user-level work items. Users can note a task's start, due, and actual completion dates, its progress or status, and whether it's recurring or requires a reminder. Tasks are organized in task folders, which are organized in task groups. Each mailbox has a default task folder (with the Name property tasks) and a default task group (Name property *My Tasks*).

The TodoTasks_v0 dataset enables you to identify all tasks created by all users of a tenant that are secured by Azure Active Directory (Azure AD) in Microsoft 365. User accounts can be on Microsoft 365 or a Microsoft account (Hotmail.com, Live.com, MSN.com, Outlook.com, and Passport.com). 
 
## Scenarios

- Analyze the number of tasks that were created by all users. You can also analysze how many of these tasks got completed before the assigned due dates, and how many got completed after the assigned due dates.
- Identify stale tasks for notifying respective users to complete their tasks before the due date.
- Identify users having incomplete tasks beyond a particular threshold.
- Identify tasks assigned to users where the status remains unchanged beyond a particular threshold.

## Questions

- How many tasks were created by all users of a tenant?
- How many tasks were completed before the assigned due date by all users of a tenant?
- How many tasks were completed after the assigned due date by all users of a tenant?

## Joining with other datasets

The TodoTasks_v0 dataset can be joined with the User_v1 dataset using the unique identifiers to analyze the task data and provide behavioral insights. 

## Definitions

- **Task:** A Microsoft Outlook item that can track a work item. Users can use a task to track the start, due, and actual completion dates, as well as times, progress or status, whether it's recurring, and requires reminders.
- **Task folder:** A folder that contains tasks. In Microsoft Outlook, the default task group *My Tasks* contains a default task folder *Tasks* for the user's mailbox. Users cannot rename or delete the default task group and folder, but users can create additional task groups and task folders.
- **Task Group:** A group of folders that contain tasks. In Microsoft Outlook, there is a default task group *My Tasks* that users cannot rename or delete. Users can, however, create additional task groups.

## Schema

| Name  | Type  |  Description  |  FilterOptions  |  IsDateFilter  | 
| ----------- | ----------- | ----------- | ----------- | ----------- |
| Id | String | The unique identifier of the task. | No | False | 
| AssignedTo	| String | The name of the person who has been assigned the task. |	No | False |
| Body	| String | The task body that typically contains information about the task. *Format:* STRUCT<ContentType: STRING, Content: STRING>	| No  |	False |
| Categories |	String |	The categories associated with the task. *Format:* ARRAY<STRING> |	No | False |
| ChangeKey	| String |	The version of the task. Every time the event is changed, ChangeKey changes as well. This allows Exchange to apply changes to the correct version of the object.	| No | 	False |
| CompletedDateTime |	Datetime |	The date in the specified time zone that the task was finished. |	No | False |
| CreatedDateTime |	Datetime |	The date and time when the task was created. By default, it is in UTC. | Yes | True |
| DueDateTime | Datetime | The date in the specified time zone that the task is to be finished. |	No | False |
| HasAttachments | Boolean | True if the task has attachments; otherwise, false |	No | False |
| Importance |	String |	The importance of the event: Low, Normal, High. |	No | False |
| IsReminderOn |	Boolean |	True if an alert is set to remind the user of the task; otherwise, false |	No |	False |
| LastModifiedDateTime |	Datetime |	The date and time when the task was last modified. By default, it is in UTC. |	Yes |	True |
| Owner	| String |	The name of the person who created the task. |	No |	False |
| ParentFolderId |	String |	The unique identifier for the task's parent folder. |	No | False |
| Recurrence | String | The recurrence pattern for the task. *Format:* STRUCT<Pattern: STRUCT<Type: STRING, `Interval`: INT, Month: INT, DayOfMonth: INT, DaysOfWeek: ARRAY<STRING>, FirstDayOfWeek: STRING, Index: STRING>, 'Range': STRUCT<Type: STRING, StartDate: STRING, EndDate: STRING, RecurrenceTimeZone: STRING, NumberOfOccurrences: INT>> |	No | False |
| ReminderDateTime |	Datetime |	The date and time for a reminder alert of the task to occur. |	No | False |
| Sensitivity	| String | Indicates the level of privacy for the event: Normal, Personal, Private, Confidential.	| No | False |
| StartDateTime	| Datetime |	The date in the specified time zone when the task is to begin. |	No | False |
| Status | String |	Indicates state or progress of the task: NotStarted, InProgress, Completed, WaitingOnOthers, Deferred. |	No |	False |
| Subject	| String |	A brief description or title of the task.	| No | False |
| Attachments	| String | The FileAttachment and ItemAttachment attachments for the message. Navigation property. *Format:* ARRAY<STRUCT<LastModifiedDateTime: STRING, Name: STRING, ContentType: STRING, Size: INT, IsInline: BOOLEAN, Id: STRING>>	| No | False |
| DataType	| String |	Data type of the current folder. |	No |	False |
| puser	| String	| User id. |	No  | False |
| ptenant	| String |  Tenant id. |	No | False |
 

## JSON representation

```json
{
"Id": "String",
"AssignedTo": "String",
"Body": ["String"],
"Categories": ["String"],
"ChangeKey": "String",
"CompletedDateTime": ["String"],
"CreatedDateTime": "String (timestamp)",
"DueDateTime": ["String"],
"HasAttachments": true,
"Importance": "String",
"IsReminderOn": true,
"LastModifiedDateTime": "String (timestamp)",
"Owner": "String",
"ParentFolderId": "String",
"Recurrence": ["String"],
"ReminderDateTime": ["String"],
"Sensitivity": "String",
"StartDateTime": ["String"],
"Status": "String",
"Subject": "String",
"Attachments": ["String"],
"ODataType": "#Microsoft.OutlookServices.Task",
"puser": "String (identifier)",
"ptenant": "String (identifier)"
}
```

## Sample 

