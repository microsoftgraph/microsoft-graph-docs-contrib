---
title: "Use the Microsoft To Do API"
description: "You can use the Microsoft Graph API to create an app that connects with tasks in Microsoft To Do."
author: "avijityadav"
localization_priority: Priority
ms.prod: "Microsoft To Do"
doc_type: conceptualPageType
---

# Use the Microsoft To Do API

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

You can use the Microsoft Graph API to create an app that connects with tasks across Microsoft To Do clients. You can build a variety of experiences with tasks, from simple task syncing to complex task completion scenarios. Currently, the API supports only delegated permissions.
 
Before you get started with the To Do API, it will be helpful to know about the resources and how they relate to one another.

![To Do API entities](https://cdn.graph.office.net/prod/GraphDocuments/en-us/concepts/images/todo-windows-app.png)

## Task list

A [todoTaskList](./todotasklist.md) represents a logical container of [todoTask](./todotask.md) resources. You can currently create tasks only in a task list. To [get all your task lists](../api/todotasklist-get.md), make the following HTTP request:

``` http
GET /me/todo/lists
```

## Task

A [todoTask](./todotask.md) represents a task in a list and tracks a work item. To get your tasks from a task list, make the following HTTP request:
``` http
GET /me/todo/lists/{todoTaskListId}/tasks
```

## Linked resource

A [linkedResource](linkedresource.md) represents the source of a task and helps a user complete their task. To get a linked resource from a task, make the following HTTP request:
``` http
GET /me/todo/lists/{todoTaskListId}/tasks/{todoTaskId}/linkedresources/{linkedResourceId}
```

## Track changes using delta query

For performance reasons, you may want to maintain a local cache of objects, and periodically synchronize the local cache with the server, using [delta query](/graph/delta-query-overview). 

The following To Do API resources support delta query:
* [todoTask](./todotask.md) collection in a task list
* [todoTaskList](./todotasklist.md)

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.