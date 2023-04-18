---
title: "Deactivate educationAssignment"
description: "Marks an assigned assignment as inactive to signal that the assignment has no further action items for teachers and students."
author: "AshwaniBansal1"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# Deactivate educationAssignment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Mark an `assigned` [educationAssignment](../resources/educationassignment.md) as `inactive` to signal that the assignment has no further action items for teachers and students.

The Deactivate Assignment operation can only be performed by teacher on Assigned assignments.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                                            |
| :------------------------------------- | :----------------------------------------------------------------------------------------------------- |
| Delegated (work or school account)     | EduAssignments.ReadWriteBasic, EduAssignments.ReadWrite |
| Delegated (personal Microsoft account) | Not supported.                                                                                         |
| Application                            | Not supported.                                                                                         |

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /education/classes/{classId}/assignments/{assignmentId}/deactivate
```

## Request headers
| Header        | Value                       |
| :------------ | :------------------------   |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [status](/graph/api/resources/educationassignment?#properties) `inactive` in the response body.

## Examples

### Example 1: Mark assignment inactive-request without optional Prefer header

#### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "sampleKeys": ["ffac078e-1b63-42d0-bc2a-d280896e289a","2b8090d7-8de9-4fb4-af5d-2e2f68ae098a"],
  "name": "post_deactivateAssignment_withoutheader"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/ffac078e-1b63-42d0-bc2a-d280896e289a/assignments/2b8090d7-8de9-4fb4-af5d-2e2f68ae098a/deactivate
```
#### Response
The following is an example of the response when Prefer: include-unknown-enum-members is NOT provided in the request header.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationAssignment"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#educationAssignment",
    "@odata.type": "#microsoft.graph.educationAssignment",
    "classId": "ffac078e-1b63-42d0-bc2a-d280896e289a",
    "displayName": "Check-inactive",
    "closeDateTime": null,
    "dueDateTime": "2023-03-26T18:29:00Z",
    "assignDateTime": null,
    "assignedDateTime": "2023-03-17T19:41:56.3040589Z",
    "allowLateSubmissions": true,
    "resourcesFolderUrl": null,
    "feedbackResourcesFolderUrl": null,
    "createdDateTime": "2023-03-17T19:40:33.7277546Z",
    "lastModifiedDateTime": "2023-03-17T20:46:10.9647739Z",
    "allowStudentsToAddResourcesToSubmission": true,
    "status": "unknownFutureValue",
    "notificationChannelUrl": null,
    "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%22ffac078e-1b63-42d0-bc2a-d280896e289a%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%222b8090d7-8de9-4fb4-af5d-2e2f68ae098a%5C%22%5D%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22assignment-viewer%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
    "addToCalendarAction": "none",
    "addedStudentAction": "none",
    "id": "2b8090d7-8de9-4fb4-af5d-2e2f68ae098a",
    "grading": null,
    "instructions": {
        "content": "Check-inactive",
        "contentType": "html"
    },
    "assignTo": {
        "@odata.type": "#microsoft.graph.educationAssignmentClassRecipient"
    },
    "createdBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
            "displayName": null
        }
    },
    "lastModifiedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
            "displayName": null
        }
    }
}
```

### Example 2: Mark assignment inactive-request with optional Prefer header
#### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "sampleKeys": ["ffac078e-1b63-42d0-bc2a-d280896e289a","2b8090d7-8de9-4fb4-af5d-2e2f68ae098a"],
  "name": "post_deactivateAssignment_withheader"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/ffac078e-1b63-42d0-bc2a-d280896e289a/assignments/2b8090d7-8de9-4fb4-af5d-2e2f68ae098a/deactivate
Prefer: include-unknown-enum-members
```
#### Response
The following is an example of the response when `Prefer: include-unknown-enum-members` is provided in the request header.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationAssignment"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#educationAssignment",
    "@odata.type": "#microsoft.graph.educationAssignment",
    "classId": "ffac078e-1b63-42d0-bc2a-d280896e289a",
    "displayName": "Check-inactive",
    "closeDateTime": null,
    "dueDateTime": "2023-03-26T18:29:00Z",
    "assignDateTime": null,
    "assignedDateTime": "2023-03-17T19:41:56.3040589Z",
    "allowLateSubmissions": true,
    "resourcesFolderUrl": null,
    "feedbackResourcesFolderUrl": null,
    "createdDateTime": "2023-03-17T19:40:33.7277546Z",
    "lastModifiedDateTime": "2023-03-17T20:33:38.8043517Z",
    "allowStudentsToAddResourcesToSubmission": true,
    "status": "inactive",
    "notificationChannelUrl": null,
    "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%22ffac078e-1b63-42d0-bc2a-d280896e289a%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%222b8090d7-8de9-4fb4-af5d-2e2f68ae098a%5C%22%5D%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22assignment-viewer%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
    "addToCalendarAction": "none",
    "addedStudentAction": "none",
    "id": "2b8090d7-8de9-4fb4-af5d-2e2f68ae098a",
    "grading": null,
    "instructions": {
        "content": "Check-inactive",
        "contentType": "html"
    },
    "assignTo": {
        "@odata.type": "#microsoft.graph.educationAssignmentClassRecipient"
    },
    "createdBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
            "displayName": null
        }
    },
    "lastModifiedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
            "displayName": null
        }
    }
}
```
