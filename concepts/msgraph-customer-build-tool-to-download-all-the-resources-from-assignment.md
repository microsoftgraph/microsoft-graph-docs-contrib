---
title: "Build a tool to download all resources from a set of assignments"
description: "Use Microsoft Graph to create assignments with teams app resource using your own application"
ms.localizationpriority: medium
author: "AshwaniBansal1"
ms.prod: "education"
doc_type: conceptualPageType
---

# Build a tool to download all resources from a set of assignments at the end of the grade period

You can download resources for a set of assignments for end of the year archiving or for external access for review of feedback given to students, you can use Graph API to download all resources stored in SharePoint.

> **Note:** You can use [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer) to test the [Education APIs](https://learn.microsoft.com/en-us/graph/msgraph-onboarding-graphexplorer) mentioned in this article.

## API for assignment information for class

[Get assignment information](/graph/api/educationassignment-get): Provides the information about the assignment with in the class.

This [filter](/graph/query-parameters#filter-parameter) [OData query parameter](/graph/query-parameters) can be used to handle the assignment information as needed.

## Get assignment and submission resource information

-[Get assignment resource information](/graph/api/educationassignmentresource-get): Gives the assignment resource information.

-[Get submission resource information](/graph/api/educationsubmissionresource-get): Gives the submission resource information.

## Get submission feedback information

Use [submission feedback information](/graph/education-upload-feedback-resource-overview) api for the information on the user's submission feedback.

[List outcomes](/graph/api/educationsubmission-list-outcomes) helps to retrieve the list for the education outcome objects.

## Information to download files from sharepoint

The [list of assignment resources](/graph/api/educationassignment-list-resources) response gives the information on driveid and item inside the fileUrl property.

Download the contents of the file from sharepoint using [DriveItem](/graph/api/driveitem-get-content) with file property. Also, for specific topic use [downloading files in JavaScrip apps](/graph/api/driveitem-get-content#downloading-files-in-javascript-apps).
