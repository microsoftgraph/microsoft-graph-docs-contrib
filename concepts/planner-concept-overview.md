---
title: "Planner tasks and plans API overview"
description: "Use the Planner API in Microsoft Graph to create plans, organize and assign tasks, share progress, and collaborate on content. View the top Planner API tasks."
author: "TarkanSevilmis"
ms.localizationpriority: high
ms.prod: "planner"
---

# Planner tasks and plans API overview

The Planner API in Microsoft Graph provides a simple and visual way for teams to organize their work. Customers can use Planner to create plans, organize and assign tasks, share progress, and collaborate on content. Planner provides several interactive experiences including a task board, a charts page, and a schedule view, as well as integrations throughout Microsoft 365.

**Microsoft 365 Planner task board**

![Screenshot of a Microsoft 365 Planner task board](images/plannerboard.png "Image of Planner board")

## Why integrate with Planner tasks?

Planner provides task tracking capabilities for collaboration experiences in Microsoft 365. If your scenarios require tracking tasks and organizing work for a team or group of end users, Planner is the right service for you. Planner integration can help you reach the millions of users collaborating on Microsoft 365.

### Organize your team’s work

Planner provides a shared space where you can build a team, [create tasks](/graph/api/planner-post-tasks), and assign them to others on the team. Planner makes it easy for everyone to know who’s doing what and if things are on track. You can update tasks with additional information like due dates, progress, and descriptions, and then further organize tasks with customizable buckets and category labels.

### Collaborate across Microsoft 365

Planner integrates into collaboration experiences across Microsoft 365. In addition to Planner web and mobile clients, users can view and update Planner plans and tasks from within SharePoint and Microsoft Teams.  

Planner itself is also powered by the Microsoft Graph and the Microsoft 365 group service. Files that you upload and attach to Planner tasks are stored in SharePoint. Planner comments are based on Outlook group conversations.

<!-- Add image
Note: Put an image here showing the relationship between Planner and other things
-->

### Business scenario support

Planner supports business scenarios. Using the business scenarios API, you can create tasks and plans for your business processes, and control the tasks and the user experience around these tasks from the scenario configuration. Learn more about [business scenarios](businessscenarios-concept-overview.md).

## Top Planner API tasks

|Operation|URL|
|:--------|:--|
|See all the [plans](/graph/api/resources/plannerplan) for a group|GET [https://graph.microsoft.com/v1.0/groups/{id}/planner/plans](https://developer.microsoft.com/graph/graph-explorer?request=groups/{id}/planner/plans&version=v1.0)|
|See [tasks](/graph/api/resources/plannertask) in a plan|GET [https://graph.microsoft.com/v1.0/planner/plans/{id}/tasks](https://developer.microsoft.com/graph/graph-explorer?request=planner/plans/{id}/tasks&version=v1.0)|
|See all [my tasks](/graph/api/planneruser-list-tasks) assigned to me across plans|GET [https://graph.microsoft.com/v1.0/me/planner/tasks/](https://developer.microsoft.com/graph/graph-explorer?request=me/planner/tasks/&version=v1.0)|
|[Create a new task](/graph/api/planner-post-tasks)|POST [https://graph.microsoft.com/v1.0/planner/tasks](https://developer.microsoft.com/graph/graph-explorer?request=groups/{id}/planner/plans&version=v1.0)|
|[Update a task](/graph/api/plannertask-update)|PATCH [https://graph.microsoft.com/v1.0/planner/tasks/{task-id}](https://developer.microsoft.com/graph/graph-explorer?request=groups/{id}/planner/plans&version=v1.0)|
|[Delete a task](/graph/api/plannertask-delete)|DELETE [https://graph.microsoft.com/v1.0/planner/tasks/{id}](https://developer.microsoft.com/graph/graph-explorer?request=groups/{id}/planner/plans&version=v1.0)|

## API reference

Looking for the API reference for this service?

- [Planner API in Microsoft Graph v1.0](/graph/api/resources/planner-overview?view=graph-rest-1.0&preserve-view=true)
- [Planner API in Microsoft Graph beta](/graph/api/resources/planner-overview?view=graph-rest-beta&preserve-view=true)

## Next steps

- [Work with plans](/graph/api/resources/planner-overview#plans)
- [Work with tasks](/graph/api/resources/planner-overview#tasks)
