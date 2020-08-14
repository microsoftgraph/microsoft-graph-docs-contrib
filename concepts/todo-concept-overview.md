---
title: "To Do API overview"
description: "To Do provide a simple way to manage your tasks and plan your day"
author: "avijityadav"
localization_priority: Priority
ms.prod: "Microsoft To Do"
---

# To Do API overview (preview)
Microsoft To Do provides a simple way for people to manage their tasks and plan their day. Tasks are organized in task lists, which can be accessed across To Do clients, Outlook and Teams from any device.

**To Do Screenshot with entities**

![Screenshot of a Microsoft To Do Windows App](./images/todo-api-entities.png "Image of Microsoft To Do Windows App")

## Why integrate with To Do?
To Do is ideal for personal tasks across work and life. To Do integration can help you reach millions of users who are using To Do to collect tasks from emails, chats, and plans into one integrated view.

### Ease of organizing and tracking tasks
To Do helps you create a list for anything, from work assignments to home projects to groceries. You can keep track of deadlines by adding reminders, due dates, and notes. You can access your lists from anywhere with To Do apps for iOS, Android, Mac, Windows, and the web. 

### Integrate across Microsoft 365
To Do is deeply integrated with Microsoft 365 hubs, Outlook, and Teams. Tasks created in those products sync with To Do so you can access and manage them across devices. To Do integration can help you reach millions of users who use To Do to gather tasks from Outlook, Teams, and Planner into one integrated view. 

### Support task completion using linked resources
To Do provides a new resource called a _linked resource_, which links tasks to their original sources. Use this to seamlessly integrate To Do in your workflow by creating tasks that link to your product or service.

## Common To Do API operations

|Operation|Request|
|:--------|:--|
|See all the task lists for a user|GET https://graph.microsoft.com/beta/users/{id|userPrincipalName}/todo/lists|
|See tasks in a task list|GET https://graph.microsoft.com/beta/users/{id|userPrincipalName}/todo/lists/{todoTaskListId}/tasks|
|See all my task lists |GET https://graph.microsoft.com/beta/users/{id|userPrincipalName}/todo/lists|
|Create a new task|POST https://graph.microsoft.com/beta/users/{id|userPrincipalName}/todo/lists/{todoTaskListId}/tasks|
|Update a task|PATCH https://graph.microsoft.com/beta/users/{id|userPrincipalName}/todo/lists/{todoTaskListId}/tasks/{todoTaskId}|
|Delete a task|DELETE https://graph.microsoft.com/beta/users/{id|userPrincipalName}/todo/lists/{todoTaskListId}/tasks/{todoTaskId}|

## API reference
Looking for the API reference for this service?

- [To Do API in Microsoft Graph](/graph/api/resources/todo-overview?view=graph-rest-beta)