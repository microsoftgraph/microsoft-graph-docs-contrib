---
title: "Get links to assignments and submissions"
description: "Use Microsoft Graph APIs to get deep links to assignments for use in custom tools."
ms.localizationpriority: medium
author: "AshwaniBansal1"
ms.prod: "education"
doc_type: conceptualPageType
---

# Get links to assignments and submissions

Education institutions have custom tools for students and users to view details about or complete assignments. You can use education APIs in Microsoft Graph to get deep links to assignments and submissions for use in custom tools. Before you can get links to assignments and submissions, you must get the relevant class and member information.

 > **Note:** You can use [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer) to test the [education APIs](/graph/msgraph-onboarding-graphexplorer) mentioned in this article.

## Get class and member information

All assignments and grading information are part of a team in Microsoft Teams. You can get information about classes, members, and roles (student or teacher) in a team by using the following Teams APIs:

- [List classes of an educationSchools](/graph/api/educationschool-list-classes): Returns a list of all classes in your education tenant.
- [List members of an educationClass](/graph/api/educationclass-list-members): Lists information about members of a specific class.

After you get the relevant class and member information, you can get the assignment and grade information you need.

## Get a deep link for the assignment

The [assignment webUrl property](/graph/api/resources/educationassignment#properties) returns the authenticated deep link to selected assignments. If the user is within Teams, the assignments will open directly with this deep link URL.

The following example describes how to get the deep link URL for a given assignment.

### Request

The following example shows the request.

```
GET https://graph.microsoft.com/v1.0/education/classes/f4a941ff-9da6-4707-ba5b-0eae93cad0b4/assignments/3c77de7f-539b-49e1-9c96-1274f2f0ee3b
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

```
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 279

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('f4a941ff-9da6-4707-ba5b-0eae93cad0b4')/assignments/$entity",
    "classId": "f4a941ff-9da6-4707-ba5b-0eae93cad0b4",
    "displayName": "07.30 SubmissionsUploadResource Word2",
    "closeDateTime": null,
    "dueDateTime": "2021-08-01T06:59:00Z",
    "assignDateTime": null,
    "assignedDateTime": "2021-07-30T16:01:32.5518042Z",
    "allowLateSubmissions": true,
    "status": "assigned",
    "notificationChannelUrl": null,
    "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7b%22subEntityId%22%3a%22%7b%5c%22version%5c%22%3a%5c%221.0%5c%22%2c%5c%22config%5c%22%3a%7b%5c%22classes%5c%22%3a%5b%7b%5c%22id%52navigate%5c%22%2c%5c%22view%5c%22%3a%5c%22assignment-viewer%5c%22%7d%22%2c%22channelId%22%3anull%7d",
    "addedStudentAction": "none",
    "id": "3c77de7f-539b-49e1-9c96-1274f2f0ee3b",
    "instructions": {
        "content": "<div style=\"font-family: inherit; font-size: inherit; color: inherit;\">upload a word document</div>",
        "contentType": "html"
    },
    "grading": {
        "@odata.type": "#microsoft.graph.educationAssignmentPointsGradeType",
        "maxPoints": 10
    },
    "lastModifiedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "f3a5344e-dbde-48b0-be24-b5b62a243836",
            "displayName": null
        }
    }
}
```
The **webUrl** property in the response provides the deep link URL for the assignment.


## Get a deep link for the submission

The [submission webUrl property](/graph/api/resources/educationsubmission#properties) returns an authenticated deep link to a submission. Currently, the **webUrl** property for submissions is only available in the beta endpoint.

The following example describes how to get the deep link URL for a given submission.

### Request

The following example shows the request.

```
Get https://graph.microsoft.com/beta/education/classes/2003c52e-807a-4186-9b49-60c573095461/assignments/8f5311bb-ee1e-4bf0-9827-3fd8c57bdde2/submissions/57ef8ee2-4755-4351-66d0-8e37192870a5
```

### Response

The following example shows the resposnse.

>**Note:** The response object shown here might be shortened for readability.

```
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('2003c52e-807a-4186-9b49-60c573095461')/assignments('8f5311bb-ee1e-4bf0-9827-3fd8c57bdde2')/submissions/$entity",
    "status": "working",
    "submittedDateTime": null,
    "unsubmittedDateTime": null,
    "returnedDateTime": null,
    "reassignedDateTime": null,
    "resourcesFolderUrl": "https://graph.microsoft.com/v1.0/drives/b!IDwAYNkmlUucm64fxXxnzYYTuh2luKRDvUVGQBLOmvYqism21WrdQ4Aijx5lDIKE/items/0173CEVEPVMJCDTMO5RRH256O6T5NIB2CF",
    "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22speed-grader%5C%22%7D%22,%22channelId%22%3Anull%7D",
    "id": "57ef8ee2-4755-4351-66d0-8e37192870a5",
    "recipient": {
        "@odata.type": "#microsoft.graph.educationSubmissionIndividualRecipient",
        "userId": "51cf5a99-d234-4e43-96de-cd65df14bfa1"
    },
    "submittedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "51cf5a99-d234-4e43-96de-cd65df14bfa1",
            "displayName": null
        }
    },
    "reassignedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": null,
            "displayName": null
        }
    }
}
```
The **webUrl** property in the response provides the deep link URL for the submission.

## Permissions

The assignments APIs support both delegated and application permissions. We recommend using application permissions because that permits your app only to retrieve data.
