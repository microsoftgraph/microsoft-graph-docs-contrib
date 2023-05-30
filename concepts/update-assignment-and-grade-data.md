---
title: "Update assignment and grade data"
description: "Use Microsoft Graph APIs to update assignment and grade data for use in custom tools."
ms.localizationpriority: medium
author: "AshwaniBansal1"
ms.prod: "education"
doc_type: conceptualPageType
---

# Update assignment and grade data

Education institutions have custom tools to update assignment and grade data. For example, a teacher might need to make an update to an assignment before students submit them, or make a change to a grade (outcome) by using a custom tool. 

Before you can update data, you must get the relevant class and member information.

> **Note:** You can use [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer) to test the [Education APIs](/graph/msgraph-onboarding-graphexplorer) mentioned in this article.

## Get class and member information

All the assignments and grading information are part of the team in Microsoft Teams. You can get information about classes, members, and roles (student or teacher) in a team by using the following Teams APIs:

- [List classes of an educationSchools](/graph/api/educationschool-list-classes): Returns a list of all classes in your education tenant.
- [List members of an educationClass](/graph/api/educationclass-list-members): Lists information about members of a specific class.

After you get the relevant class and member information, you can get the assignment and grade information you need.

## Assignment and submission information

All assignment and student information is linked to class and submission information, respectively. The following APIs retrieve information about class assignments and submissions:

- [educationAssignment resource type](/graph/api/resources/educationassignment): Lists all the methods available for assignments in a class. A user can get all the [educationAssignmentResource](/graph/api/educationassignment-list-resources) objects associated within an assignment.
- [educationSubmission resource type](/graph/api/resources/educationsubmission): A `submissionId` is created for every student for whom an assignment is published. You can use this API to get the submission status - for example, whether it was turned in and graded, ([resources](/graph/api/educationsubmissionresource-get)) submitted by the student, and the grade ([outcome](/graph/api/resources/educationoutcome)) for the submission.

## Update grade (outcome) data

Users can update the properties of an **educationOutcome** object. Existing properties that are not included in the request body will maintain their previous values. Only teachers can perform this operation.

The following example describes on how to update a points outcome.

### Request

The following example shows the request.

>**Note:** The request body should only include the values of the fields that need to be updated.

```
PATCH https://graph.microsoft.com/v1.0/education/classes/acdefc6b-2dc6-4e71-b1e9-6d9810ab1793/assignments/cf6005fc-9e13-44a2-a6ac-a53322006454/submissions/d1bee293-d8bb-48d4-af3e-c8cb0e3c7fe7/outcomes/9c0f2850-ff8f-4fd6-b3ac-e23077b59141
Content-type: application/json

{
    "@odata.type":"#microsoft.graph.educationPointsOutcome",
    "points":{
        "@odata.type":"#microsoft.graph.educationAssignmentPointsGrade",
        "points":85.0
    }
}
```
### Response

The following example shows the resposnse.

```
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.type":"#microsoft.graph.educationPointsOutcome",
    "id":"ea1351f6-ba33-4940-b2cb-6a7254af2dc8",
    "lastModifiedBy":{
        "user":{
            "id":"9391878d-903c-406c-bb1c-0f17d00fd878"
        }
    },
    "points":{
        "gradedDateTime":"2019-07-15T22:35:48.2429387Z",
        "points":85.0,
        "gradedBy":{
            "user":{
                "id":"9391878d-903c-406c-bb1c-0f17d00fd878"
            }
        }
    }
}
```

This request returns an updated **educationOutcome** object in the response body.

## Permissions

Delegated and application permissions are required to update data in assignments. Application permissions are currently supported in the beta version only.

> **Note:** Because student and grade information is sensitive data, be sure to verify which permissions are required.
