---
title: "Get assignmment and grade information for education solutions"
description: "Use Microsoft Graph to get data from assignments and grades for education solution reporting, communication, and automation tools."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.prod: "education"
doc_type: conceptualPageType
---

# Get assignmment and grade information for education solutions

Education institutions have custom tools that need data from assignments and grades; for example, tools that are used for reporting and communication to the school district, or tools that are used to automate a set of processes. You can use the education API in Microsoft Graph to get data for assignments and grades for both classes and students.

> **Note:** You can use [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer) to test the APIs mentioned in this article.

## Get classes and members information

Assignment and grade information is part of the team in Microsoft Teams. You can get information about classes, members, and roles (student or teacher) in a team by using the following APIs:

- [List classes of an educationSchools](/graph/api/educationschool-list-classes): Returns a list of all classes in your education tenant.
- [List members of an educationClass](/graph/api/educationclass-list-members): Lists information about members of a specific class.

After you get the relevant class and member information, you can get the assignment and grade information that you need.

## Get class assignment information

All assignments and students' information are linked to class and submission information, respectively. You can use the following APIs to retrieve information about class assignments:

- [educationAssignment resource type](/graph/api/resources/educationassignment): Allows you to list and see all data for assignments in a class.
- [educationSubmission resource type](/graph/api/resources/educationsubmission): A **submission** is created for every student for whom an assignment is published. You can use this API to get the submission [status](/graph/api/resources/educationsubmission#properties) - that is, whether it was turned in and graded, [resources](/graph/api/educationsubmissionresource-get) submitted by the student, and the grade ([outcome](/graph/api/resources/educationoutcome)) for the submission.

## Get student assignment information

A student is often in multiple classes within a school, and you often need to see the data for the student across classes. You can use the following API to see student data across classes:

- [List assignments of a user](/graph/api/educationuser-list-assignments): Lists all assignments for a given user. You can use either this by a delegated user or the preferred way is to use AppOnly person to use  `/users/{user-id}`.

## Permissions

The assignments API supports both delegated (per user) and app only (per app) permission. App-only permissions simplify the experience for students and teachers because they only have to approve the app in order to retrieve data. 

## Updates to the data

Over the course of the school year, there will be updates to assignments as teachers and students continue to work on them. All education APIs support [delta query](/graph/api/educationschool-delta), allowing you to track changes since the last time the API endpoint was queried.

For assignments, [delta queries](/graph/api/educationassignment-delta) are supported for assignment information changes only, and not submission changes for an assignment.

## Filtering data

Assignment API endpoints return a large amount of data. You can use the [filter](/graph/query-parameters#filter-parameter) [OData query parameter](/graph/query-parameters) to handle the data as needed. 
