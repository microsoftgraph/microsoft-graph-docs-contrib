---
title: "Update data in assignments and grades"
description: "Use microsoft Graph to update data in assignments and grades for reporting, communication and automation tools."
ms.localizationpriority: medium
author: "ashwani-bansal"
ms.prod: "education"
doc_type: conceptualPageType
---

# Update data in assignments and grades

## Scenario

Education institutions have custom tools that needs to update assignments and grades data; for example, user needs to create an assignment with custom tool, or update grades data ( outcome) for the submission from students.

**Note:** You can use [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer) to test the [Education APIs](https://learn.microsoft.com/en-us/graph/msgraph-onboarding-graphexplorer) mentioned in this article.

## API to use for classes and members information

All the assignments and grades information is part of the team in Microsoft Teams. You can get information about classes, members, and roles (student or teacher) in a team by using the following Teams APIs:

- [List classes of an educationSchools](/graph/api/educationschool-list-classes): Returns a list of all classes in your education tenant.
- [List members of an educationClass](/graph/api/educationclass-list-members): Lists information about members of a specific class.

After you get the relevant class and member information, you can get the assignment and grade information that you need.

## Get class assignment information

All assignments and students' information are linked to class and submission information respectively. The following APIs are to retrieve information about class assignments:

- [educationAssignment resource type](/graph/api/resources/educationassignment) : Allows you to list all data for assignments in a class.
- [educationSubmission resource type](/graph/api/resources/educationsubmission) : A `submissionId` is created for every student for whom an assignment is published. You can use this API to get the submission status - that is, whether it was turned in and graded,([resources](/graph/api/educationsubmissionresource-get)) submitted by the student, and the grade ([outcome](/graph/api/resources/educationoutcome)) for the submission.

## Permissions required

For update of data in assignments user get support for both delegated (per user) and AppOnly (per App). AppOnly support is currently only for Beta version.

**Note:** Since Student Information and Grade information is sensitive data, it needs to be verified if AppOnly data is what is needed for the scenario.