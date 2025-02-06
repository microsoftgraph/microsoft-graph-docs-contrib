---
title: "Users in Microsoft Graph"
description: "Use Microsoft Graph to access the relationships, documents, contacts, and preferences that are contextually relevant to users in your organization."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: yuan.karppanen
ms.topic: concept-article
ms.localizationpriority: high
ms.subservice: entra-users
ms.custom: scenarios:getting-started
ms.date: 12/20/2024
#customer intent: As a developer, I want to understand how to build user-centric apps that call Microsoft Graph.
---

# Overview of users in Microsoft Graph

The [user](/graph/api/resources/user) resource in Microsoft Graph represents a Microsoft Entra work or school user account or a personal Microsoft account. The object includes relationships and resources that are relevant to the user, such as messages, events, and files.

> [!VIDEO https://www.youtube-nocookie.com/embed/TUMPipN3UFI]

## Manage users in your organization

Users can manage their own user account, and administrators can manage user accounts for their organization [on behalf of the user](auth-v2-user.md) or via [an app with its own identity](auth-v2-service.md).

The following list describes some of the tasks you can perform with users in your organization through Microsoft Graph:
- Core user management tasks
    - Add or delete users
    - Reset a user's password
    - Upload or retrieve a photo for a user
    - Determine their reporting structure or assign managers
    - Manage the user's authentication methods
    - Grant users administrative roles in your organization
    - Assign or remove licenses to users
    - Track changes to users in your organization
- Mail management
    - List mails and send new mail
    - Create and list user contacts and organize contacts in folders
    - Retrieve and update mailbox folders and settings 
- Calendar management
    - Manage or list events on a user's calendar
    - Manage a user's calendar and calendar groups
    - View tasks assigned to a user
    - Find free meeting times for a set of users
    - Get a list of reminders set on a user's calendar
- File management
    - Access a user's files and folders in OneDrive  
- Group management tasks
    - Add users to groups dynamically by matching specific attributes, for example, their department, or statically on demand; list a user's group memberships and determine whether a user is a member of a group
- Application management tasks
    - Assign or remove applications and their associated roles for users
- Enrich your app with user insights - maximize relevance in your application by promoting recently used or trending documents and contacts associated with a user.
    - Return documents recently viewed and modified by a user.
    - Return documents and sites trending around a user's activity.
    - List documents shared with a user through email or OneDrive for Business.

## API reference

Looking for the API reference for this service?

- [Users API in Microsoft Graph v1.0](/graph/api/resources/users?view=graph-rest-1.0&preserve-view=true)
- [Users API in Microsoft Graph beta](/graph/api/resources/users?view=graph-rest-beta&preserve-view=true)

