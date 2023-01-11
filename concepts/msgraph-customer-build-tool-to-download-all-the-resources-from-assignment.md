---
title: "How to download all resources from a set of assignments"
description: "Use Microsoft Graph to to download all SharePoint resources from a set of assignments."
ms.localizationpriority: medium
author: "AshwaniBansal1"
ms.prod: "education"
doc_type: conceptualPageType
---

# How to download all resources from a set of assignments

This article describes how to use the Microsoft Graph APIs to download all SharePoint resources from a set of assignments at the end of a grade period, which can be beneficial for end of year archiving or for external access for review of feedback given to students.

> **Note:** You can use [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer) to test the APIs mentioned in this article.

## Get class assignment information

The assignment information is linked to a class. You can use the [Get educationAssignment](/graph/api/educationassignment-get) API to retrieve information about class assignments. Additionally, you can use the [OData query parameters](/graph/query-parameters) to customize the response.

## Get assignment and submission resource information

Assignments and submissions are an important part in the interaction between teachers and students' actions. You can use the following APIs to retrieve information about assignment and submission resources:

- [Get educationAssignmentResource](/graph/api/educationassignmentresource-get) to retrieve the properties of an [education assignment resource](graph/api/resources/educationassignmentresource) associated with an assignment
- [Get educationSubmissionResource](/graph/api/educationsubmissionresource-get) to retrieve the properties of a specific resource associated with a [submission](graph/api/resources/educationsubmissionresource)

## Get submission feedback information

The education API in Microsoft Graph uses feedback resource folders as a destination for feedback files. You can use the [submission feedback information](/graph/education-upload-feedback-resource-overview) to get information on the user's submission feedback.

[List outcomes](/graph/api/educationsubmission-list-outcomes) helps to retrieve the list for the education outcome objects.

## Download files from SharePoint

Before you can download the SharePoint resources, you need the **driveId** and **itemId** that related to each assignment resource. You can use the [List educationAssignmentResources](/graph/api/educationassignment-list-resources) response object to extract information about the corresponding **driveId** and **itemId** from the **fileUrl** property.

Finally, you can use the [Download file](/graph/api/driveitem-get-content) API to download the contents of the file from SharePoint. Note that only [driveItems](graph/api/resources/driveitem) with the **file** property can be downloaded.

Alternatively, you can download the files from a JavaScript app. For more details, see [Downloading files in JavaScript apps](/graph/api/driveitem-get-content#downloading-files-in-javascript-apps).
