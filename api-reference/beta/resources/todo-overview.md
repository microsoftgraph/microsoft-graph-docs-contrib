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
 
Microsoft Graph exposes three resource types for working with To Do. 

## todoTaskList

[todoTaskList](./todotasklist.md) represents a logical container of [todoTask](./todotask.md). To [get all your taskLists](../api/todotasklist-get.md), make the following HTTP request.

``` http
GET /todo/lists/
```

## todoTasks

[todoTask](./todotask.md) represents an item within a **todoTaskList** which track a work item. To get the **todoTasks** from a **todoTaskList**, make the following HTTP request.
``` http
GET /todo/lists/{list-id}/tasks
```

## LinkedResource

[LinkedResource](linkedresource.md) represent the source of a **todoTask** and help user complete their tasks. To get a **linkedResource** from a task, make the following HTTP request.
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