---
title: "Use the To Do API in Microsoft Graph"
description: "You can use the Microsoft Graph API to create an app that connects with tasks and task lists in Microsoft To Do."
author: "avijityadav"
ms.localizationpriority: high
ms.prod: "outlook"
doc_type: conceptualPageType
---

# Use the To Do API built on base tasks in Microsoft Graph (deprecated)

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [todo-deprecate-basetaskapi](../includes/todo-deprecate-basetaskapi.md)]

Use the Microsoft Graph To Do API to create an app that connects with users' task in their mailbox. Build a variety of experiences with tasks, such as the following:

* Create tasks from your app’s workflow, for example, from email or notifications, and save them in To Do. Use the [linkedResource](linkedresource.md) entity to store the link back to your app.
* Sync your app’s existing tasks with To Do and create a single task view for better prioritization and manageability.
* Manage To Do tasks in a custom business application.
* Create [checklistItems](checklistitem.md) on a task to break down complex tasks in smaller steps.

Currently, the API supports only permissions delegated by the signed-in user.

Before starting with the To Do API, take a look at the resources and how they relate to one another.

![Screenshot highlighting To Do API entities. Screenshot shows list of task lists on the left, tasks within a specific task list in the center and, on the right, checklist items and linked resource along with other task properties.](/graph/images/tasks-api-entities.png)

## Task list

In this API set, a task list is represented by [baseTaskList](./basetasklist.md) which is a logical container of [baseTask](./basetask.md) resources. You can currently create tasks only in a task list. Tasks created without specifying list get created in the default Tasks list. To [get all your task lists](../api/basetasklist-get.md), make the following HTTP request:

``` http
GET /me/tasks/lists
```

## Task

In this API set, a task is represented by a [baseTask](./basetask.md) resource which is a piece of work or personal item that can be tracked and completed. To get your tasks from a task list, make the following HTTP request:
``` http
GET /me/tasks/lists/{taskListId}/tasks
```

## Checklist item 

A [checklistItem](checklistitem.md) represents an item that helps break down complex task in much smaller steps. To get a **checklistItem** from a task, make the following HTTP request:
``` http
GET /me/tasks/lists/{taskListId}/tasks/{taskId}/checklistItems/{checklistItems}
```

## Linked resource

A [linkedResource](linkedresource_v2.md) represents any item from a partner application related to the task; for example, an email from where a task was created. You can use it to store information and the link back to the related item in your app. To get a linked resource from a task, make the following HTTP request:
``` http
GET /me/tasks/lists/{taskListId}/tasks/{taskId}/linkedresources/{linkedResourceId}
```

## Track changes using delta query

For performance reasons, you may want to maintain a local cache of objects, and periodically synchronize the local cache with the server, using [delta query](/graph/delta-query-overview).

The following To Do API resources support delta query:
* [baseTask](./basetask.md) collection in a task list
* [baseTaskList](./basetasklist.md)

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.
