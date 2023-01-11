---
title: "Share assignments with an embedded Teams application"
description: "Use Microsoft Graph to create assignments with Teams app resource using your own application."
ms.localizationpriority: medium
author: "AshwaniBansal1"
ms.prod: "education"
doc_type: conceptualPageType
---

# Share assignments with an embedded Teams application

In this article, you will learn how to use the Microsoft Graph APIs to create an assignment and attach a Teams app as a resource from your own application to add more functionalities.

> **Note:** You can use [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer) to test the APIs mentioned in this article.

## APIs to use for installing applications in a Microsoft Teams team

Use the following APIs to install the application in a specific Microsoft Teams team:

- [List apps in team](/graph/api/team-list-installedapps): Retrieve a list of apps installed in the specified team.
- [Get app installed in team](/graph/api/team-get-installedapps): Retrieve an app installed in the specified team.
- [Add app to team](/graph/api/team-post-installedapps): Install an app to the specified team.

## Create the new assignment

An assignment represents a task or unit of work assigned to a student or team member in a class as part of their study. You can use the [Create educationAssignment](/graph/api/educationclass-post-assignment) API to create the new assignments for the class.

## Create an app resource

An education Teams app resource allows education service users to create and share assignments with embedded Teams applications. You can use the [Create educationAssignmentResource](/graph/api/educationassignment-post-resources#example-7-create-an-educationteamsappresource) API to create and load the resource into an assignment. This operation requires you to provide an [educationTeamsAppResource](/graph/api/resources/educationteamsappresource) in the request body.

## Permissions

The teacher role is required to add the Teams app as a resource to your assignments.
