---
title: "Download all resources from a set of assignments"
description: "Learn how to use Microsoft Graph to to download all SharePoint resources from a set of assignments."
ms.localizationpriority: medium
author: "AshwaniBansal1"
ms.prod: "education"
doc_type: conceptualPageType
---

# Download all resources from a set of assignments

This article describes how to use Microsoft Graph to download all SharePoint resources from a set of assignments at the end of a grade period. This can be helpful for end-of-year archiving or for reviewing feedback given to students.

> **Note:** You can use [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer) to test the APIs mentioned in this article.

## Get class assignment information

Assignment information is linked to a class. You can use the [Get educationAssignment](/graph/api/educationassignment-get) API to get information about class assignments. You can then use the [OData query parameters](/graph/query-parameters) to customize the response.

## Get assignment and submission resource information

Assignments and submissions are an important part in the interaction between teachers and students. You can use the following APIs to get information about assignment and submission resources:

- [Get educationAssignmentResource](/graph/api/educationassignmentresource-get) to retrieve the properties of an [education assignment resource](/graph/api/resources/educationassignmentresource) associated with an assignment.
- [Get educationSubmissionResource](/graph/api/educationsubmissionresource-get) to retrieve the properties of a specific resource associated with a [submission](/graph/api/resources/educationsubmissionresource).

## Get submission feedback information

The education API in Microsoft Graph uses feedback resource folders as a destination for feedback files. To get details about the user's submission feedback, see [Upload feedback files for education submissions](/graph/education-upload-feedback-resource-overview).

You can use the [List outcomes](/graph/api/educationsubmission-list-outcomes) API to get a list of education outcome objects.

## Download files from SharePoint

Before you can download the SharePoint resources, you need the **driveId** and **itemId** that are related to each assignment resource. You can use the [List educationAssignmentResources](/graph/api/educationassignment-list-resources) response object to extract information about the corresponding **driveId** and **itemId** from the **fileUrl** property.

You can then use the [Download file](/graph/api/driveitem-get-content) API to download the contents of the file from SharePoint. Note that only [driveItems](/graph/api/resources/driveitem) with the **file** property can be downloaded.

Alternatively, you can download the files from a JavaScript app. For details, see [Downloading files in JavaScript apps](/graph/api/driveitem-get-content#downloading-files-in-javascript-apps).
