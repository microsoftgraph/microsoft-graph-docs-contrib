---
title: "Use the To Do Graph API"
description: "You can use Microsoft Graph to create an app that connects with tasks across Microsoft To Do"
author: "avijityadav"
localization_priority: Priority
ms.prod: "Microsoft To Do"
doc_type: conceptualPageType
---

# Use the Microsoft To Do API

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

You can use Microsoft Graph to create an app that connects with tasks across Microsoft To Do. With Microsoft Graph, you can build a variety of experiences with tasks, from simply syncing tasks from your app to complex task completion scenarios.
 
Before you get started with the To Do API, it will be helpful to know about the resources and how they relate to each other.

## TaskList

[TaskList](./todotasklist.md) represents a logical container of [Tasks](./todotask.md). Tasks currently can only be created inside a tasklist. To [get all your taskLists](../api/todotasklist-get.md), make the following HTTP request.

``` http
GET /me/todo/lists/
```

## Tasks

[Task](./todotask.md) represents an item within a taskList which track a work item. To get your tasks from a tasklist, make the following HTTP request.
``` http
GET /me/todo/lists/{todoTaskListId}/tasks
```

## LinkedResource

[LinkedResource](linkedresource.md) represent the source of a task and helps user complete their tasks. To get a **linkedResource** from a task, make the following HTTP request.
``` http
GET /me/todo/lists/{todoTaskListId}/tasks/{todoTaskId}/linkedresources/{linkedResourceId}
```

## Track changes using delta query

If you want to use the To Do delta query API, maintain a local cache of objects that you are interested in observing in order to apply the changes from the delta response feed.

The delta payload objects that the To Do delta query can currently return is of the following types:
* [todoTasks](./todotask.md)
* [todoTaskList](./todotasklist.md)

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.