---
title: "Update data in assignments and grades"
description: "Use Microsoft Graph APIs to update assignments and grades data for use in custom tools"
ms.localizationpriority: medium
author: "AshwaniBansal1"
ms.prod: "education"
doc_type: conceptualPageType
---

# Update data in assignments and grades

Education institutions have custom tools to update assignments and grading data. For example, a user might need to create an assignment or update grading data (outcome) with a custom tool for students to submit them.

> **Note:** You can use [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer) to test the [Education APIs](https://learn.microsoft.com/en-us/graph/msgraph-onboarding-graphexplorer) mentioned in this article.

## Get classes and members information required for assignments and grades

All the assignments and grading information are part of the team in Microsoft Teams. You can get information about classes, members, and roles (student or teacher) in a team by using the following Teams APIs:

- [List classes of an educationSchools](/graph/api/educationschool-list-classes): Returns a list of all classes in your education tenant.
- [List members of an educationClass](/graph/api/educationclass-list-members): Lists information about members of a specific class.

After you get the relevant class and member information, you can get the assignment and grade information you need.

## Get class assignment information

All assignments and students' information are linked to class and submission information respectively. The following APIs retrieve information about class assignments:

- [educationAssignment resource type](/graph/api/resources/educationassignment): Lists all the methods available for assignments in a class.
- [educationSubmission resource type](/graph/api/resources/educationsubmission): A `submissionId` is created for every student for whom an assignment is published. You can use this API to get the submission status - for example, whether it was turned in and graded, ([resources](/graph/api/educationsubmissionresource-get)) submitted by the student, and the grade ([outcome](/graph/api/resources/educationoutcome)) for the submission.

## Update the points outcome data

Outcome will get recalculated based on the changes in the property values. Use [update a points outcome](/graph/api/educationoutcome-update?#example-2-update-a-points-outcome) to update the student points outcome data.

## Permissions

Delegated and application permissions are required to update data in assignments. Application permissions are currently supported in the beta version only.

> **Note:** Because student and grade information is sensitive data, be sure to verify which permissions are required. 
