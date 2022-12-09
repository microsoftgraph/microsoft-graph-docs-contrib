---
title: "Get links to assignments and submissions"
description: "Use Microsoft Graph APIs to get a deep link to the assignments for use in custom tools."
ms.localizationpriority: medium
author: "AshwaniBansal1"
ms.prod: "education"
doc_type: conceptualPageType
---

# Get links to assignments and submissions

Education institutions have custom tools for students and users who need to get a deep link to the assignment, so students can directly view more details or complete a given assignment. You can use education APIs in Microsoft Graph to get links to assignments and submissions. Before you can get links to assignments and submissions, you must get the relevant class and member information.

 > **Note:** You can use [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer) to test the [education APIs](https://learn.microsoft.com/en-us/graph/msgraph-onboarding-graphexplorer) mentioned in this article.

## Get class and member information

All assignments and grading information are part of a team in Microsoft Teams. You can get information about classes, members, and roles (student or teacher) in a team by using the following Teams APIs:

- [List classes of an educationSchools](/graph/api/educationschool-list-classes): Returns a list of all classes in your education tenant.
- [List members of an educationClass](/graph/api/educationclass-list-members): Lists information about members of a specific class.

After you get the relevant class and member information, you can get the assignment and grade information you need.

## Get a deep link for the assignment

The [assignment property](/graph/api/resources/educationassignment#properties) returns the authenticated deep link to selected assignments. For Teams users, the assignments open directly.

## Get a deep link for the submission

The [submission webURL property](/graph/api/resources/educationsubmission#properties) returns an authenticated deep link to a submission.

## Permissions

Assignments APIs support both delegated and application permissions. We recommend using application permissions because that permits your app only to retrieve data.
