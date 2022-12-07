---
title: "Create assignments with teams app from my application"
description: "Use Microsoft Graph to create assignments with teams app resource using your own application"
ms.localizationpriority: medium
author: "AshwaniBansal1"
ms.prod: "education"
doc_type: conceptualPageType
---

# Create assignments with teams app from my application

If user want to create an assignment with a Teams App resource from his own application, this can be done using Graph API.

> **Note:** You can use [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer) to test the [Education APIs](https://learn.microsoft.com/en-us/graph/msgraph-onboarding-graphexplorer) mentioned in this article.

## API to use for installing Teams App for the team

Use the following APIs to install the App to the teams:

- [List apps in teams](/graph/api/team-list-installedapps): Lists the apps in team for user.
- [Get installed app in team](/graph/api/team-get-installedapp): Lists information about installed app.
- [Add app to team](/graph/api/educationclass-list-members): Lists information about adding the app to team.

## Creating the new assignment 

Use [Assignment Creation](/graph/api/educationclass-post-assignment) for user to create the new assignments for the class.

## Creating the app resource

Use [Eduducation teams app resource](/graph/api/resources/educationteamsappresource) to create and share assignments with embedded Teams applications.

[Resource sample](/api/educationassignment-post-resources#example-7-create-an-educationteamsappresource) can be used  to get the information on creating the app resource.

## Permissions

Adding teams app as a resource to your assignments would require the teacher permissions.
