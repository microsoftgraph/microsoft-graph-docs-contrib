---
title: "Share assignments with an embedded Teams application"
description: "Learn how to use Microsoft Graph to embed a Teams app resource in an assignment."
ms.localizationpriority: medium
author: "AshwaniBansal1"
ms.prod: "education"
doc_type: conceptualPageType
---

# Embed a Teams app in an assignment

This article describes how to use Microsoft Graph to embed a Teams app in an assignment to add additional functionality.

> **Note:** You can use [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer) to test the APIs mentioned in this article.

## Install the application in your team

Before you can embed an application in an assignment, you need to make sure that the app is installed in your team. You can use the following APIs to get information about the apps installed in a team:

- [List apps in a team](/graph/api/team-list-installedapps): Get a list of apps installed in the specified team.
- [Get a specific app installed in a team](/graph/api/team-get-installedapps): Get information about an app installed in the specified team.

You can look for the required app in the [app catalog](/graph/api/appcatalogs-list-teamsapps); if it isn't installed in the team, you can use the following API:

- [Add an app to a team](/graph/api/team-post-installedapps): Install an app to the specified team.

## Create the new assignment

An assignment represents a task or unit of work assigned to a student or team member in a class as part of their study. You can use the [Create educationAssignment](/graph/api/educationclass-post-assignment) API to create a new assignment for the class.

## Add the app resource

An education Teams app resource allows education service users to create and share assignments with embedded Teams applications. You can use the [Create educationAssignmentResource](/graph/api/educationassignment-post-resources#example-7-create-an-educationteamsappresource) API to create and load the app resource into an assignment. This operation requires you to provide an [educationTeamsAppResource](/graph/api/resources/educationteamsappresource) in the request body.

## Permissions

The teacher role is required to add a Teams app as a resource to assignments.
