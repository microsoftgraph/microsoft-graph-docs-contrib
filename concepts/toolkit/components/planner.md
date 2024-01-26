---
title: "Planner component in Microsoft Graph Toolkit"
description: "The Planner component enables the user to view, add, remove, complete, or edit tasks. It works with any tasks in Microsoft Planner."
ms.localizationpriority: medium
author: sebastienlevert
---

# Planner component in Microsoft Graph Toolkit

The Planner component enables the user to view, add, remove, complete, or edit tasks from Microsoft Planner.

In addition, a user is able to assign a single or multiple Microsoft Graph users to a task. For more information about Microsoft Graph assignments, see [plannerAssignments](/graph/api/resources/plannerassignments).

> [!IMPORTANT] 
> With the release of `@microsoft/mgt-components` version 4, the planner component replaces the old task component and no longer supports using Outlook Tasks as a data source.

## Example

The following example displays the signed-in user's Microsoft Planner tasks using the `mgt-planner` component. You can use the code editor to see how [properties](#properties) change the behavior of the component.

# [HTML](#tab/html)

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-planner-html--planner&source=docs" height="500"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-planner-html--planner&source=docs).

# [React](#tab/react)

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-planner-react--planner&source=docs" height="500"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-planner-react--planner&source=docs).

---

## Properties

| Attribute                         | Property         | Description                                                                                            |
| --------------------------------- | ---------------- | ------------------------------------------------------------------------------------------------------ |
| read-only                         | readOnly         | A Boolean to set the task interface to be read only (no adding or removing tasks). Default is `false`. |
| hide-header                       | hideHeader       | A Boolean to show or hide the header of the component. Default is `false`.                             |
| hide-options                      | hideOptions      | A Boolean to show or hide the options in tasks. Default is `false`.                                    |
| initial-id="planner_id/folder_id" | initialId        | A string ID to set the initially displayed plan to the provided ID.                                    |
| initial-bucket-id="bucket_id"     | initialBucketId  | A string ID to set the initially displayed bucket to the provided ID.                                  |
| target-id="planner_id/folder_id"  | targetId         | A string ID to lock the tasks interface to the provided plan ID.                                       |
| target-bucket-id="bucket_id"      | targetBucketId   | A string ID to lock the tasks interface to the provided bucket ID.                                     |
| group-id                          | groupId          | A string ID to lock the tasks interface to the group ID.                                               |
| -                                 | isNewTaskVisible | Determines whether new task view is visible at render.                                                 |
| -                                 | taskFilter       | An optional function to filter which tasks are shown to the user.                                      |

The following example shows only tasks from Planner with ID _12345_ and doesn't allow the user to create new tasks.

```html
<mgt-planner read-only initial-id="12345"></mgt-planner>
```

The following example shows how to filter tasks that only have _category3_ set.

```js
let taskView = document.querySelector("mgt-planner");
taskView.taskFilter = (task) => task.appliedCategories.category3 === true;
```

## Custom CSS variables

```html
<mgt-planner class="tasks"></mgt-planner>
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
  --task-icons-text-font-color: black;
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
| ------------- | -------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | :--------: | :-----: | :------------------------: |
| `taskAdded`   | Fires when a new task is created                               | Newly created  [plannerTask](/graph/api/resources/plannertask)      |     No     |   No    |            Yes             |
| `taskChanged` | Fires when task metadata is changed, such as marking completed | Updated a [plannerTask](/graph/api/resources/plannertask)            |     No     |   No    |             No             |
| `taskClick`   | Fires when the user selects a task                         | `task` property with the selected [plannerTask](/graph/api/resources/plannertask)  |     No     |   No    |             No             |
| `taskRemoved` | Fires when an existing task is deleted                         | `task` property with the selected [plannerTask](/graph/api/resources/plannertask)  |     No     |   No    |             No             |

For more information about handling events, see [events](../customize-components/events.md).

## Templates

The `planner` component supports several [templates](../customize-components/templates.md) that allow you to replace certain parts of the component. To specify a template, include a `<template>` element inside a component and set the `data-type` property to one of the following values:

| Data type    | Data context                | Description                                        |
| ------------ | --------------------------- | -------------------------------------------------- |
| task         | task: a planner task object | replaces the whole default task.                   |
| task-details | task: a planner task object | template replaces the details section of the task. |

The following example defines a template for the planner component.

```html
<mgt-planner>
  <template data-type="task-details">
    <div>Owner: {{task.owner}}</div>
    <div>Importance Level: {{task.importance}}</div>
  </template>
</mgt-planner>
```

## Microsoft Graph permissions

This control uses the following Microsoft Graph APIs and permissions. For each API called the user must have at least one of the listed permissions.

| Configuration                                                                 | Permission                                                            | API                                                                                                                                                                                                                         |
| ----------------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| in all configurations                                                         | User.Read, User.ReadWrite                                             | [/me](/graph/api/user-get)                                                                                                                                                                                                  |
| default behavior                                                              | Tasks.Read, Group.Read.All, Tasks.ReadWrite, Group.ReadWrite.All      | [/me/planner/plans](/graph/api/planneruser-list-plans), [/planner/plans/${planId}/buckets](/graph/api/plannerplan-list-buckets), [/planner/buckets/${bucketId}/tasks](/graph/api/plannerbucket-list-tasks)                  |
| `groupId` set                                                                 | Tasks.Read, Group.Read.All, Tasks.ReadWrite, Group.ReadWrite.All      | [/groups/${group-id}/planner/plans](/graph/api/plannergroup-list-plans), [/planner/plans/${planId}/buckets](/graph/api/planner-list-buckets), [/planner/buckets/${bucketId}/tasks](/graph/api/plannerbucket-list-tasks)     |
| `targetId` set                                                                | Tasks.Read, Group.Read.All, Tasks.ReadWrite, Group.ReadWrite.All      | [/planner/plans/${planId}](/graph/api/plannerplan-get), [/planner/plans/${planId}/buckets](/graph/api/plannerplan-list-buckets), [/planner/buckets/${bucketId}/tasks](/graph/api/plannerbucket-list-tasks)                  |
| create, update or delete task                                                 | Tasks.ReadWrite, Group.ReadWrite.All                                  | [POST /planner/tasks](/graph/api/planner-post-tasks), [PATCH /planner/tasks/${taskId}](/graph/api/plannertask-update), [DELETE /planner/tasks/${taskId}](/graph/api/plannertask-delete)                                     |

### Subcomponents

The `mgt-tasks` component consists of one or more subcomponents that might require other permissions than the ones listed previously. For more information, see the documentation for each subcomponent: 

- [mgt-people](people.md)
- [mgt-people-picker](people-picker.md)

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
| planNotFound          | `Plan not found`    |
| plansSelfAssigned     | `All Plans`         |
| bucketNotFound        | `Bucket not found`  |
| bucketsSelfAssigned   | `All Tasks`         |
| baseSelfAssigned      | `Assigned to Me`    |
