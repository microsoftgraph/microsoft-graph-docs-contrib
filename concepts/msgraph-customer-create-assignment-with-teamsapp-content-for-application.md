---
title: "Create assignments with adding Teams App as a resource using your own application"
description: "Use Microsoft Graph to create assignments with teams app resource using your own application"
ms.localizationpriority: medium
author: "AshwaniBansal1"
ms.prod: "education"
doc_type: conceptualPageType
---

# Create assignments with adding Teams app as a resource using your own application

If you want to create an assignment and attach a Teams app as a resource from your own application to add more functionalities, this can be done using Graph API.

> **Note:** You can use [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer) to test the [Education APIs](https://learn.microsoft.com/en-us/graph/msgraph-onboarding-graphexplorer) mentioned in this article.

## APIs to use for installing applications to the Teams

Use the following APIs to install the application to the Teams:

- [List apps in Teams](/graph/api/team-list-installedapps): Lists the apps in Teams for user.
- [Get installed apps in Teams](/graph/api/team-get-installedapps): Lists information about installed apps.
- [Add app to Teams](/graph/api/team-post-installedapps): Information on how to add an app to Teams.

## Creating the new assignment 

Use [Assignment Creation](/graph/api/educationclass-post-assignment) for user to create the new assignments for the class.

## Creating an app resource

Use the [create teams app resource](/graph/api/educationassignment-post-resources#example-7-create-an-educationteamsappresource) endpoint to create and load the resource into an assignment. You will need to provide an [educationResource](/graph/api/resources/educationteamsappresource) for the request body.

## Permissions

Adding Teams app as a resource to your assignments would require the teacher role.
