---
title: "Use the To Do Graph API"
description: "You can use the To Do API in Microsoft Graph to create tasklists, create tasks, update task properties like importance, status etc"
author: "TODO"
localization_priority: Priority
ms.prod: "Microsoft To Do"
doc_type: conceptualPageType
---

# Use the Microsoft To Do API

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

 You can use  To Do on Graph to connect tasks within your app to Microsoft To Do. Tasks are organized in task lists. Tasks exposes properties like dueDateTime, importance, status etc that corresponds to feature in UI, allowing user to integrate with built in To Do experience.
 
Microsoft Graph exposes three resource types for working with To Do.

## todoTaskList

[todoTaskList](./todotasklist.md) is the container of [todoTask](./todotask.md). To [retrieve all your taskLists](../api/todotasklist-get.md), make the following HTTP request.

``` http
GET /todo/lists/
```

## Tasks

[todoTask](./todotask.md) is an object within [todoTaskList](./todotasklist.md) which is used to track a work item.  To retrieve the tasks from a tasklist, make the following HTTP request.
``` http
GET /todo/lists/{list-id}/tasks
```

## LinkedResource

[LinkedResource](linkedresource.md) is a new property of To Do task that can capture link associated with any tasks. You can use the object to add a link which will help in task completion. To retrieve a linkedResource from a task, make the following HTTP request.
``` http
GET /todo/lists/{list-id}/{task-id}/linkedresources/{linkedresource-id}
```

## Track changes using delta query

If you want to use the To Do delta query API, maintain a local cache of objects that the you is interested in observing in order to apply the changes from the delta response feed.

The delta payload objects that the To Do delta query can currently return is of the following types:
* [todoTasks](./todotask.md)
* [todoTaskList](./todotasklist.md)

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.