---
title: "To Do component in Microsoft Graph Toolkit"
description: "The To Do component enables the user to view, add, remove, complete, or edit todo tasks. It works with any tasks in Microsoft To-Do."
ms.localizationpriority: medium
author: sebastienlevert
---

# To Do component in Microsoft Graph Toolkit

The To Do component is used to enable the signed-in user to view, add, remove, complete, and/or edit tasks from Microsoft To Do using the To Do API in Microsoft Graph.

## Example

The following example displays the signed-in user's Microsoft To Do tasks using the `mgt-todo` component. You can use the code editor to see how [properties](#properties) change the behavior of the component.

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-todo--tasks&source=docs" height="500"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-todo--tasks&source=docs)

## Properties

You can use the following attributes and properties to customize the component.

| Attribute | Property | Description |
| -- | -- | -- |
| read-only | readOnly | A Boolean to set the task interface to be read only (no adding or removing tasks). Default is `false`. |
| hide-header | hideHeader | A Boolean to show or hide the header of the component. Default is `false`. |
| hide-options | hideOptions | A Boolean to show or hide the options in tasks. Default is `false`.
| initial-id="folder_id" | initialId | A string ID to set the initially displayed folder to the provided ID. |
| target-id="folder_id"| targetId | A string ID to lock the tasks interface to the provided folder ID. |
| N/A | isNewTaskVisible  | Determines whether new task view is visible at render. |
| N/A | taskFilter  | An optional function to filter which tasks are shown to the user. |

The following example shows only tasks from the folder with ID *12345* and does not allow the user to create new tasks.

```html
<mgt-todo read-only initial-id="12345"></mgt-todo>
```

## Custom CSS variables

The `mgt-todo` component defines the following CSS custom properties.

```html
<mgt-todo class="todo"></mgt-todo>
```

````css
.todo {
    --task-new-cancel-button-color: blue;
    --task-detail-color: purple;
    --task-color: black;
    --task-background-color: white;
    --task-complete-background-color: grey;
    --task-date-input-active-color: blue;
    --task-date-input-hover-color: green;
    --task-background-color-hover: grey;
    --task-box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.2);
    --task-border: 1px solid black;
    --task-border-completed: 1px solid grey;
    --task-radio-background-color: green;
}
````

To learn more, see [styling components](/graph/toolkit/customize-components/style).

## Events

The following events are fired from the component.

Event | When is it emitted | Custom data | Cancelable | Bubbles | Works with custom template
------|-------------------|--------------|:-----------:|:---------:|:---------------------------:|
`taskClick` | Fires when the user clicks or taps on a task | Selected [task](https://github.com/microsoftgraph/microsoft-graph-toolkit/blob/66a5bbb6591e6260e95dbc00c0d06bcbe8dcef38/packages/mgt-components/src/components/mgt-todo/graph.todo.ts#L41) | No | No | No

For more information about handling events, see [events](../customize-components/events.md).

## Templates

The `todo` component supports several [templates](../customize-components/templates.md) that allow you to replace certain parts of the component. To specify a template, include a `<template>` element inside a component and set the `data-type` value to one of the following.

| Data type     | Data context              | Description                                                       |
| ---------     | ------------------------- | ----------------------------------------------------------------- |
| task     | task: a to-do task object | Replaces the whole default task. |
| task-details | task: a to-do task object | Template replaces the details section of the task. |

The following example defines a template for the tasks component.

```html
<mgt-todo>
    <template data-type="task-details">
        <div>
            Importance Level: {{task.importance}}
        </div>
    </template>
</mgt-todo>
```

## Microsoft Graph permissions

This control uses the following Microsoft Graph APIs and permissions.

| Configuration | Permission | API |
| ------------- | ---------- | --- |
| `targetId` set | Tasks.Read | [/me/todo/lists/${listId}](/graph/api/todotasklist-get?tabs=http), [/me/todo/lists/{todoTaskListId}/tasks](/graph/api/todotasklist-list-tasks) |
| `targetId` not set | Tasks.Read | [/me/todo/lists](/graph/api/todo-list-lists?tabs=http), [/me/todo/lists/{todoTaskListId}/tasks](/graph/api/todotasklist-list-tasks) |
| create, update or delete task | Tasks.ReadWrite | [/me/todo/lists/{todoTaskListId}/tasks/{taskId}](/graph/api/todotask-get) |

## Authentication

The todo component uses the global authentication provider described in the [authentication documentation](../providers/providers.md).

## Cache

The `mgt-todo` component doesn't cache any data.

## Localization

The control exposes the following variables that can be localized. For more information, see [Localizing components](../customize-components/localization.md).

| String name                 | Default value                |
| --------------------------- | -----------------------------|
| cancelNewTaskSubtitle       | `Cancel`                     |
| newTaskPlaceholder          | `Add a task`                 |
| newTaskLabel                | `New Task Input`             |
| addTaskButtonSubtitle       | `Add`                        |
| deleteTaskLabel             | `Delete Task`                |
| dueDate                     | `Due date`                   |
| newTaskDateInputLabel       | `New Task Date Input`        |
| newTaskNameInputLabel       | `New Task Name Input`        |
| cancelAddingTask            | `Cancel adding a new task`  |
