---
title: "Use the Microsoft To Do API"
description: "You can use the Microsoft Graph API to create an app that connects with tasks in Microsoft To Do."
author: "avijityadav"
ms.localizationpriority: high
ms.subservice: "outlook"
doc_type: conceptualPageType
ms.date: 03/06/2024
---

# Use the Microsoft To Do API

Use the Microsoft Graph To Do API to create an app that connects with tasks across Microsoft To Do clients. Build a variety of experiences with tasks, such as the following:

* Create tasks from your app’s workflow, for example, from email or notifications, and save them in To Do. Use the [linkedResource](linkedresource.md) entity to store the link back to your app.
* Sync your app’s existing tasks with To Do and create a single task view for better prioritization and manageability.
* Manage To Do tasks in a custom business application.

The API supports both delegated and application permissions.
 
Before starting with the To Do API, take a look at the resources and how they relate to one another.

![Screenshot highlighting To Do API entities. Screenshot shows list of task lists on the left, tasks within a specific task list in the center and, on the right, checklist items and linked resource along with other task properties.](/graph/images/tasks-api-entities.png)

## Task list

A [todoTaskList](./todotasklist.md) represents a logical container of [todoTask](./todotask.md) resources. You can currently create tasks only in a task list. To [get all your task lists](../api/todotasklist-get.md), make the following HTTP request:

``` http
GET /me/todo/lists
```

## Task

A [todoTask](./todotask.md) represents a task, i.e. a piece of work or personal item that can be tracked and completed. To get your tasks from a task list, make the following HTTP request:
``` http
GET /me/todo/lists/{todoTaskListId}/tasks
```

## Checklist item 

A [checklistItem](checklistitem.md) represents a subtask in a bigger [todoTask](./todotask.md). **ChecklistItem** allows breaking down a complex task into more actionable, smaller tasks. To get a **checklistItem** from a task, make the following HTTP request:
``` http
GET /me/todo/lists/{todoTaskListId}/tasks/{todoTaskId}/checklistItems/{checklistItems}
```

## Linked resource

A [linkedResource](linkedresource.md) represents any item from a partner application related to the task, for example, an item like email from where a task was created. You can use it to store information and the link back to the related item in your app. To get a linked resource from a task, make the following HTTP request:
``` http
GET /me/todo/lists/{todoTaskListId}/tasks/{todoTaskId}/linkedresources/{linkedResourceId}
```

## Track changes using delta query

For performance reasons, you may want to maintain a local cache of objects, and periodically synchronize the local cache with the server, using [delta query](/graph/delta-query-overview). 

The following To Do API resources support delta query:
* [todoTask](./todotask.md) collection in a task list
* [todoTaskList](./todotasklist.md)

