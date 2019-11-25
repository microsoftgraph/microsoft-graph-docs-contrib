---
title: "Tasks component in the Microsoft Graph Toolkit"
description: "The Tasks component enables the user to view, add, remove, complete, or edit tasks. It works with any tasks in Microsoft Planner or Microsoft To-Do."
localization_priority: Normal
author: benotter
---

# Tasks component in the Microsoft Graph Toolkit

The Tasks component enables the user to view, add, remove, complete, or edit tasks. It works with tasks in Microsoft Planner or Microsoft To-Do.  

Additionally, a user is able to assign singular or multiple Microsoft Graph users to a task. For more details on Microsoft Graph assignments, visit: [plannerAssignments](https://docs.microsoft.com/en-us/graph/api/resources/plannerassignments?view=graph-rest-1.0) 

## Example

[jsfiddle example](https://jsfiddle.net/metulev/qhg68m31/)

````html
    <mgt-tasks></mgt-tasks>
````

## Properties

| Property | Attribute | Description |
| -- | -- | -- |
| dataSource | data-source="todo/planner" | An enumeration to configure the data source for tasks - either Microsoft To-Do, or Microsoft Planner. Default is `planner`. |
| readOnly | read-only | A boolean to set the task interface to be read only (no adding or removing tasks). Default is `false`. |
| hideHeader | hide-header | A boolean to show or hide the header of the component. Default is `false`. |
| initialId | initial-id="planner_id/folder_id" | A string id to set the initially displayed planner or folder to the provided ID. |
| initialBucketId | initial-bucket-id="bucket_id" | A string id to set the initially displayed bucket (Planner Data-Source Only) to the provided ID. |
| targetId | target-id="planner_id/folder_id" | A string id to lock the tasks interface to the provided planner or folder ID. |
| targetBucketId | target-bucket-id="bucket_id" | A string ID to lock the tasks interface to the provided bucket ID (Planner Data-Source Only). |
| groupId | group-id | A string ID to lock the tasks interface to the group ID (Planner Data-Source Only). |

The following is an example.

````html
<mgt-tasks read-only initial-id="12345"></mgt-tasks>
````

## Custom CSS variables

````css
mgt-tasks {
--tasks-header-padding
--tasks-header-margin 

--tasks-title-padding
--tasks-plan-title-font-size
--tasks-plan-title-padding

--tasks-new-button-width
--tasks-new-button-height
--tasks-new-button-color
--tasks-new-button-background
--tasks-new-button-border
--tasks-new-button-hover-background
--tasks-new-button-active-background

--tasks-new-task-name-margin

--task-margin
--task-box-shadow
--task-background
--task-border

--task-header-color
--task-header-margin

--task-detail-icon-margin

--task-new-margin
--task-new-border
--task-new-line-margin
--tasks-new-line-border
--task-new-input-margin
--task-new-input-padding
--task-new-input-font-size
--task-new-input-active-border
--task-new-select-border

--task-new-add-button-background
--task-new-add-button-disabled-background
--task-new-cancel-button-color

--task-complete-background
--task-complete-border
--task-complete-header-color
--task-complete-detail-color
--task-complete-detail-icon-color
}
````

#### Events
| Event | Detail | Description |
| --- | --- | --- |
| `taskClick` | The detail contains the respective `task` object | Fired when the user interacts via `click` on a task. |

## Templates

The `tasks` component supports several [templates](../templates.md) that allow you to replace certain parts of the component. To specify a template, include a `<template>` element inside a component and set the `data-type` value to one of the following:

| Data type     | Data context              | Description                                                       |
| ---------     | ------------------------- | ----------------------------------------------------------------- |
| task     | task: contains all details pertaining to task | replaces the whole default task. |
| task-details | task: contains all details pertaining to task | template replaces the details section of the task. |

The following example defines a template for the tasks component.

```html
    <mgt-tasks data-source="todo">
      <template data-type="task-details">
        <div>
          Owner: {{task.owner}}
        </div>
        <div>
          Importance Level: {{task.importance}}
        </div>
      </template>
    </mgt-tasks>
```

## Microsoft Graph permissions

This control uses the following Microsoft Graph APIs and permissions.

| Resource | Permission |
| - | - |
| /me/planner/plans | Group.Read.All |
| /planner/plans/${id} | Group.Read.All, Group.ReadWrite.All |
| /planner/tasks | Group.ReadWrite.All |
| /me/outlook/taskGroups | Tasks.Read |
| /me/outlook/taskFolders | Tasks.Read, Tasks.ReadWrite |
| /me/outlook/tasks | Tasks.ReadWrite |
| /groups/${group-id}/planner/plans | Group.Read.All, Group.ReadWrite.All |

For the Microsoft Planner data source, fetching and reading tasks requires the Groups.Read.All permission. Adding, updating, or removing tasks requires the Groups.ReadWrite.All permission.

For the Microsoft Todo data source, the Tasks.Read permission is required for fetching and reading tasks. Adding, updating, or removing tasks requires the Tasks.ReadWrite permission.

## Authentication

The tasks component uses the global authentication provider described in the [authentication documentation](./../providers.md).
