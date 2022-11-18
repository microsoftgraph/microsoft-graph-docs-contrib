---
title: "Get data from assignment and grade for customer tools"
description: "Use Microsoft Graph to get data from assignments and grades for education solution reporting, communication, and automation tools."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.prod: "education"
doc_type: conceptualPageType
---

# Get data from assignmments and grades

Education institutions have custom tools that need data from assignments and grades; for example, tools that are used for reporting and communication to the school district, or tools that are used to automate a set of process. You can use the education API in Microsoft Graph to get data for assignments and grades for both classes and students.

> **Note:** You can use [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer) to test the APIs mentioned in this article.

## Get classes and members information

Assignment and grade information is part of the team in Microsoft Teams. You can get information about classes, members, and roles (student or teacher) in a team by using the following APIs:

- [List classes of an educationSchools](/graph/api/educationschool-list-classes): Returns a list of all classes in your education tenant.
- [List members of an educationClass](/graph/api/educationclass-list-members): Lists information about members of a specific class.

After you get the relevant class and member information, you can get the assignment and grade information that you need.

## Get class assignment information

All assignments and students' information are linked to class and submission information respectively. You can use the following APIs to retrieve information about class assignments:

- [educationAssignment resource type](/graph/api/resources/educationassignment) : Allows you to list and see all data for assignments in a class.

- [educationSubmission resource type](/graph/api/resources/educationsubmission) : When you publish an assignment, the assignment will create a submissionid for each student that the assignment has been published to. This will allow you to get the [status](/graph/api/resources/educationsubmission#properties) of the submission, e.g. if it is turned in and graded, any resources that was submitted by the student ([resources](/graph/api/educationsubmissionresource-get)) and the grade([outcome](/graph/api/resources/educationoutcome)) for the submission.

## Get student assignment information

A student is often in multiple classes within a school, and you often need to see the data for the student across classes. There is a unique API for this:

- [List assignments of a user](/graph/api/educationuser-list-assignments): lists all assignments for a given user. You can use either this by a delegated user or the preferred way is to use AppOnly person to use  `/users/{user-id}`.

## Permissions

Assignments API supports both delegated (per user) and AppOnly (per App) permission. For ease of use for the student and teacher Apponly is preferred as this allows for only approval of your app to retrieve data.

## Updates to the data

There will be changes to the school year, and of course there will be updates to assignments are the educator and student continue work on these during the school year. All class information support [Delta Query support](/graph/api/educationschool-delta), allowing you to track changes since last time the API endpoint was queried.

For Assignments [Delta Queries](/graph/api/educationassignment-delta) are supported for Assignment information changes only, and not submission changes for an assignment.

## Filtering data

Specific API endpoints will be returing a large list of information that you can [filter](/graph/query-parameters#filter-parameter) and handle as needed. You can accomplish that by using [OData query parameters](/graph/query-parameters) in your API requests above
