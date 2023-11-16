---
title: "Tasks component in Microsoft Graph Toolkit"
description: "The Tasks component enables the user to view, add, remove, complete, or edit tasks. It works with any tasks in Microsoft Planner."
ms.localizationpriority: medium
author: sebastienlevert
---

# Tasks component in Microsoft Graph Toolkit

The Tasks component enables the user to view, add, remove, complete, or edit tasks from Microsoft Planner.

In addition, a user is able to assign a single or multiple Microsoft Graph users to a task. For more details about Microsoft Graph assignments, see [plannerAssignments](/graph/api/resources/plannerassignments).

## Example

The following example displays the signed-in user's Microsoft Planner tasks using the `mgt-tasks` component. You can use the code editor to see how [properties](#properties) change the behavior of the component.

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-tasks--tasks&source=docs" height="500"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-tasks--tasks&source=docs)

## Properties

| Attribute                         | Property         | Description                                                                                            |
| --------------------------------- | ---------------- | ------------------------------------------------------------------------------------------------------ |
| read-only                         | readOnly         | A Boolean to set the task interface to be read only (no adding or removing tasks). Default is `false`. |
| data-source                       | dataSource       | Determines which task source is loaded. Can be `planner` or `todo`. Default is `planner`.              |
| hide-header                       | hideHeader       | A Boolean to show or hide the header of the component. Default is `false`.                             |
| hide-options                      | hideOptions      | A Boolean to show or hide the options in tasks. Default is `false`.                                    |
| initial-id="planner_id/folder_id" | initialId        | A string ID to set the initially displayed planner or folder to the provided ID.                       |
| initial-bucket-id="bucket_id"     | initialBucketId  | A string ID to set the initially displayed bucket (Planner Data-Source Only) to the provided ID.       |
| target-id="planner_id/folder_id"  | targetId         | A string ID to lock the tasks interface to the provided planner or folder ID.                          |
| target-bucket-id="bucket_id"      | targetBucketId   | A string ID to lock the tasks interface to the provided bucket ID (Planner Data-Source Only).          |
| group-id                          | groupId          | A string ID to lock the tasks interface to the group ID.                                               |
| -                                 | isNewTaskVisible | Determines whether new task view is visible at render.                                                 |
| -                                 | taskFilter       | An optional function to filter which tasks are shown to the user.                                      |

The following example shows only tasks from Planner with ID _12345_ and does not allow the user to create new tasks.

```html
<mgt-tasks read-only initial-id="12345"></mgt-tasks>
```

The following example shows how to filter tasks that only have _category3_ set.

```js
let taskView = document.querySelector("mgt-tasks");
taskView.taskFilter = (task) => task.appliedCategories.category3 === true;
```

## Custom CSS variables

```html
<mgt-tasks class="tasks"></mgt-tasks>
```

```css
.tasks {
  --tasks-header-padding: 28px 14px;
  --tasks-header-margin: 0 14px;
  --tasks-header-font-size: large;
  --tasks-header-font-weight: 800;
  --tasks-header-text-color: blue;
  --tasks-header-text-hover-color: gray;

  --tasks-new-button-width: 300px;
  --tasks-new-button-height: 50px;
  --tasks-new-button-text-color: orange;
  --tasks-new-button-text-font-weight: 400;
  --tasks-new-button-background: black;
  --tasks-new-button-border: 2px dotted golden;
  --tasks-new-button-background-hover: gray;
  --tasks-new-button-background-active: red;

  --task-add-new-button-width: 60px;
  --task-add-new-button-height: 35px;
  --task-add-new-button-text-color: orange;
  --task-add-new-button-text-font-weight: 400;
  --task-add-new-button-background: black;
  --task-add-new-button-border: 2px dotted white;
  --task-add-new-button-background-hover: gray;
  --task-add-new-button-background-active: red;

  --task-cancel-new-button-width: 60px;
  --task-cancel-new-button-height: 35px;
  --task-cancel-new-button-text-color: yellow;
  --task-cancel-new-button-text-font-weight: 400;
  --task-cancel-new-button-background: red;
  --task-cancel-new-button-border: 2px dashed white;
  --task-cancel-new-button-background-hover: brown;
  --task-cancel-new-button-background-active: red;

  --task-complete-checkbox-background-color: red;
  --task-complete-checkbox-text-color: yellow;
  --task-incomplete-checkbox-background-color: orange;
  --task-incomplete-checkbox-background-hover-color: yellow;

  --task-title-text-font-size: large;
  --task-title-text-font-weight: 500;
  --task-complete-title-text-color: green;
  --task-incomplete-title-text-color: purple;

  --task-icons-width: 32px;
  --task-icons-height: 32px;
  --task-icons-background-color: purple;
  --task-icons-text-font-color: burlywood;
  --task-icons-text-font-size: 16px;
  --task-icons-text-font-weight: 400;

  --task-complete-background-color: powderblue;
  --task-incomplete-background-color: salmon;
  --task-complete-border: 2px dashed green;
  --task-incomplete-border: 2px double red;
  --task-complete-border-radius: 8px;
  --task-incomplete-border-radius: 12px;
  --task-complete-padding: 8px;
  --task-incomplete-padding: 12px;
  --tasks-gap: 8px;

  --tasks-background-color: violet;
  --tasks-border: 2px dashed green;
  --tasks-border-radius: 12px;
  --tasks-padding: 16px;

  /** affects the date picker and the text-input field **/
  --task-new-input-border: 2px solid green;
  --task-new-input-border-radius: 8px;
  --task-new-input-background-color: yellow;
  --task-new-input-hover-background-color: yellowgreen;
  --task-new-input-placeholder-color: black;

  /** affects the date picker and the text-input field **/
  --task-new-dropdown-border: 2px solid green;
  --task-new-dropdown-border-radius: 8px;
  --task-new-dropdown-background-color: yellow;
  --task-new-dropdown-hover-background-color: yellowgreen;
  --task-new-dropdown-placeholder-color: red;
  --task-new-dropdown-option-text-color: blue;
  --task-new-dropdown-list-background-color: yellow;
  --task-new-dropdown-option-hover-background-color: yellowgreen;

  --task-new-person-icon-text-color: blue;
  --task-new-person-icon-color: blue;
}
```

To learn more, see [styling components](../customize-components/style.md).

## Events

| Event         | When is it emitted                                                   | Custom data                                                                                                                           | Cancelable | Bubbles | Works with custom template |
| ------------- | -------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- | :--------: | :-----: | :------------------------: |
| `taskAdded`   | Fires when a new task has been created                               | Newly created task which can be a [plannerTask](/graph/api/resources/plannertask) our [outlookTask](/graph/api/resources/outlooktask) |     No     |   No    |            Yes             |
| `taskChanged` | Fires when task metadata has been changed, such as marking completed | Updated task which can be a [plannerTask](/graph/api/resources/plannertask) our [outlookTask](/graph/api/resources/outlooktask)       |     No     |   No    |             No             |
| `taskClick`   | Fires when the user clicks or taps on a task                         | `task` property with the selected [plannerTask](/graph/api/resources/plannertask) our [outlookTask](/graph/api/resources/outlooktask) |     No     |   No    |             No             |
| `taskRemoved` | Fires when an existing task has been deleted                         | `task` property with the selected [plannerTask](/graph/api/resources/plannertask) our [outlookTask](/graph/api/resources/outlooktask) |     No     |   No    |             No             |

For more information about handling events, see [events](../customize-components/events.md).

## Templates

The `tasks` component supports several [templates](../customize-components/templates.md) that allow you to replace certain parts of the component. To specify a template, include a `<template>` element inside a component and set the `data-type` value to one of the following:

| Data type    | Data context                | Description                                        |
| ------------ | --------------------------- | -------------------------------------------------- |
| task         | task: a planner task object | replaces the whole default task.                   |
| task-details | task: a planner task object | template replaces the details section of the task. |

The following example defines a template for the tasks component.

```html
<mgt-tasks>
  <template data-type="task-details">
    <div>Owner: {{task.owner}}</div>
    <div>Importance Level: {{task.importance}}</div>
  </template>
</mgt-tasks>
```

## Microsoft Graph permissions

This control uses the following Microsoft Graph APIs and permissions.

| Configuration                                                                 | Permission          | API                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| ----------------------------------------------------------------------------- | ------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `groupId` set and `dataSource` set to `TasksSource.planner`                   | Group.Read.All      | [/groups/${group-id}/planner/plans](/graph/api/plannergroup-list-plans?tabs=http), [/planner/plans/${planId}/buckets](/graph/api/planner-list-buckets), [/planner/buckets/${bucketId}/tasks](/graph/api/planner-list-buckets)                                                                                                                                                                                                          |
| `targetId` set and `dataSource` set to `TasksSource.todo`                     | Tasks.Read          | [/me/outlook/taskGroups](/graph/api/outlookuser-list-taskgroups?view=graph-rest-beta&preserve-view=true&tabs=http&viewFallbackFrom=graph-rest-1.0), [/me/outlook/taskGroups/${groupId}/taskFolders](/graph/api/outlooktaskfolder-list-tasks?view=graph-rest-beta&preserve-view=true&tabs=http), [/me/outlook/taskFolders/${folderId}/tasks](/graph/api/outlooktaskfolder-list-tasks?view=graph-rest-beta&preserve-view=true&tabs=http) |
| `targetId` set and `dataSource` set to something else than `TasksSource.todo` | Group.Read.All      | [/planner/plans/${planId}](/graph/api/plannerplan-get?tabs=http), [/planner/plans/${planId}/buckets](/graph/api/plannerplan-list-buckets?tabs=http), [/planner/buckets/${bucketId}/tasks](/graph/api/plannerplan-list-tasks?tabs=http)                                                                                                                                                                                                 |
| `dataSource` set to `TasksSource.planner`                                     | Group.Read.All      | [/me/planner/plans](/graph/api/planneruser-list-plans?tabs=http), [/planner/plans/${planId}/buckets](/graph/api/plannerplan-list-buckets?tabs=http), [/planner/buckets/${bucketId}/tasks](/graph/api/plannerplan-list-tasks?tabs=http)                                                                                                                                                                                                 |
| `dataSource` set to `TasksSource.todo`                                        | Tasks.Read          | [/me/outlook/taskGroups](/graph/api/outlookuser-list-taskgroups?view=graph-rest-beta&preserve-view=true&tabs=http&viewFallbackFrom=graph-rest-1.0), [/me/outlook/taskGroups/${groupId}/taskFolders](/graph/api/outlooktaskfolder-list-tasks?view=graph-rest-beta&preserve-view=true&tabs=http), [/me/outlook/taskFolders/${folderId}/tasks](/graph/api/outlooktaskfolder-list-tasks?view=graph-rest-beta&preserve-view=true&tabs=http) |
| `addTask` set to `true` and `dataSource` set to `TasksSource.planner`         | Group.ReadWrite.All | [/planner/tasks](/graph/api/planner-post-tasks?tabs=http)                                                                                                                                                                                                                                                                                                                                                                              |
| `addTask` set to `true` and `dataSource` set to `TasksSource.todo`            | Tasks.ReadWrite     | [/me/outlook/taskFolders/${parentFolderId}/tasks](/graph/api/outlookuser-post-tasks?view=graph-rest-beta&preserve-view=true&tabs=csharp)                                                                                                                                                                                                                                                                                               |

For the Microsoft Planner data source, fetching and reading tasks requires the Groups.Read.All permission. Adding, updating, or removing tasks requires the Groups.ReadWrite.All permission.

## Authentication

The tasks component uses the global authentication provider described in the [authentication documentation](../providers/providers.md).

## Cache

The `mgt-tasks` component doesn't cache any data.

## Localization

The control exposes the following variables that can be localized. For details about localization, see [Localizing components](../customize-components/localization.md).

| String name           | Default value       |
| --------------------- | ------------------- |
| removeTaskSubtitle    | `Delete Task`       |
| cancelNewTaskSubtitle | `Cancel`            |
| newTaskPlaceholder    | `Adding a task...`  |
| addTaskButtonSubtitle | `Add`               |
| due                   | `Due`               |
| addTaskDate           | `Add the task date` |
| assign                | `Assign`            |
