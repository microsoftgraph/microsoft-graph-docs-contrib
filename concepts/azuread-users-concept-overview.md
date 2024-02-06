---
title: "Users in Microsoft Graph"
description: "Use Microsoft Graph to access the relationships, documents, contacts, and preferences that are contextually relevant to users in your organization."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: yuan.karppanen
ms.localizationpriority: high
ms.prod: "users"
ms.custom: scenarios:getting-started
ms.date: 12/28/2023
#customer intent: As a developer, I want to understand how to build user-centric apps that call Microsoft Graph.
---

# Overview of users in Microsoft Graph

Users are the representation of a Microsoft Entra work or school user account or a personal Microsoft account in Microsoft Graph. The [user](/graph/api/resources/user) resource in Microsoft Graph is the representation of a user, and includes relationships and resources that are relevant to the user.

> [!VIDEO https://www.youtube-nocookie.com/embed/TUMPipN3UFI]

## Develop user-centric applications

You can use Microsoft Graph to access the relationships, documents, contacts, and preferences that are contextually relevant to a user. The **user** resource provides straightforward way for you to access and manipulate user resources without having to perform extra calls, look up specific authentication information, and directly issue queries against other Microsoft Graph resources.

You can access a user's information and manage their data [on their behalf](auth-v2-user.md) or as [an app with its own identity](auth-v2-service.md).

### Manage users in your organization

Perform user management tasks including:

- Create or delete users in your Microsoft Entra organization.
- List a user's group memberships and determine whether a user is a member of a group.
- List the users who report to a user and assign managers to a user.
- Upload or retrieve a photo for the user.
- Grant users administrative roles in your organization.

### Work with calendars and tasks

You can view, query, and update user calendar and calendar groups associated with a user, including:

- List and create events on a user's calendar.
- View tasks assigned to a user.
- Find free meeting times for a set of users.
- Get a list of reminders set on a user's calendar.

### Administer mail and handle contacts

You can configure user mail settings and contact lists and send mail on a user's behalf, including:

- List mail messages and send new mail.
- Create and list user contacts and organize contacts in folders.
- Retrieve and update mailbox folders and settings.

### Enrich your app with user insights

Maximize relevance in your application by promoting recently used or trending documents and contacts associated with a user. You can use Microsoft Graph to:

- Return documents recently viewed and modified by a user.
- Return documents and sites trending around a user's activity.
- List documents shared with a user through email or OneDrive for Business.

## API reference

Looking for the API reference for this service?

- [Users API in Microsoft Graph v1.0](/graph/api/resources/users?view=graph-rest-1.0&preserve-view=true)
- [Users API in Microsoft Graph beta](/graph/api/resources/users?view=graph-rest-beta&preserve-view=true)

