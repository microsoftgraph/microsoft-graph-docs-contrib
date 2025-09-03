---
title: "To Do API overview"
description: "Use the Microsoft To Do API in Microsoft Graph to manage tasks and plan your day. Tasks are organized in task lists accessed across To Do clients, Outlook, and Teams."
author: "avijityadav"
ms.localizationpriority: high
ms.subservice: "outlook"
ms.date: 11/07/2024
ms.topic: concept-article
---

# To Do API overview

The Microsoft To Do API in Microsoft Graph provides a simple way for people to manage their tasks and plan their day. Tasks are organized in task lists, which can be accessed across To Do clients, Outlook, and Teams from any device.

**To Do Windows app**

![Screenshot of a Microsoft To Do Windows App](./images/todo-windows-app.png "Image of Microsoft To Do Windows App")

## Why integrate with To Do?

### Ease of organizing and tracking tasks
Microsoft To Do helps you create a list for anything, from work assignments to home projects to groceries. You can keep track of deadlines by adding reminders, due dates, and notes. You can access your lists from anywhere with the Microsoft To Do apps for iOS, Android, Mac, Windows, and the web. 

### Integrate across Microsoft 365
To Do is the single destination for personal tasks in Microsoft 365. So it’s deeply integrated with Microsoft 365 hubs, Outlook, and Teams. Tasks created in those products sync with To Do so you can access and manage them across devices. To Do integration can help you reach millions of users who use To Do to gather tasks from Outlook and Teams into one integrated view.  

### Support task completion using linked resources
Microsoft To Do provides a new entity called _linked resource_, which you can use to create tasks that can link back to their original sources. You can use this to seamlessly integrate To Do in your workflow by creating tasks that link to your product or service. 

## Common To Do API operations

|Operation|Request|
|:--------|:--|
| List all the task lists | GET `https://graph.microsoft.com/v1.0/me/todo/lists` |
| List all tasks in a task list | GET `https://graph.microsoft.com/v1.0/me/todo/lists/{todoTaskListId}/tasks` |
| Create a new task | POST `https://graph.microsoft.com/v1.0/me/todo/lists/{todoTaskListId}/tasks` |
| Update a task | PATCH `https://graph.microsoft.com/v1.0/me/todo/lists/{todoTaskListId}/tasks/{todoTaskId}` |
| Delete a task | DELETE `https://graph.microsoft.com/v1.0/me/todo/lists/{todoTaskListId}/tasks/{todoTaskId}` |

## Mapping To Do tasks to PST export fields
 
Tasks can be exported using the PST download described in [Export content search results from the Microsoft Purview portal](/purview/ediscovery-export-search-results). Once exported, the following table shows the mapping between [todoTask properties](/graph/api/resources/todotask?view=graph-rest-1.0#properties) and the corresponding fields in the PST file.
 
|To Do Microsoft Graph v1 property|Property in PST|
|:---|:---|
|body | **Body**, if plain text<br>**bodyHtmlText**, if HTML<br>**bodyRtf**, if RTF. |
|bodyLastModifiedDateTime | **bodyLastModifiedTime** named property – String `{6f305800-7b8b-41af-b73b-84de53a69d3d}` name `BodyLastModifiedTime`). |
|categories | **categories** |
|completedDateTime | **dateCompleted** |
|createdDateTime | **creationTime** |
|dueDateTime | **dueDate** |
|hasAttachments | **hasAttachments** |
|id | **Id** |
|importance | **importance** |
|isReminderOn | **isReminderSet** |
|lastModifiedDateTime | **lastModificationTime** |
|recurrence | **recurrencePattern**<br>**recurrenceRange** |
|reminderDateTime | **reminderTime** |
|startDateTime | **StartDate** |
|status | **status** |
|title | **subject** |


## API reference

Looking for the API reference for this service?

- [To Do API in Microsoft Graph v1.0](/graph/api/resources/todo-overview?view=graph-rest-1.0&preserve-view=true)
- [To Do API in Microsoft Graph beta](/graph/api/resources/todo-overview?view=graph-rest-beta&preserve-view=true)
