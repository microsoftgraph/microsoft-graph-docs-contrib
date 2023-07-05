---
title: "educationAssignment: deactivate"
description: "Mark an assigned assignment as inactive to signal that the assignment has no further action items for teachers and students."
author: "AshwaniBansal1"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# Deactivate educationAssignment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Mark an `assigned` [educationAssignment](../resources/educationassignment.md) as `inactive` to signal that the assignment has no further action items for teachers and students. This action can only be performed by a teacher on assigned assignments.

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
| Prefer        | include-unknown-enum-members. Optional. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [educationAssignment](../resources/educationassignment.md) object with `inactive` status in the response body.

## Examples
`Inactive` is a new status for assignments, you can add the `Prefer` header in your request to get the status, otherwise you will get an `unknownFutureValue` value in the response.

### Example 1: Mark assignment inactive without optional Prefer header

#### Request
The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["ffac078e-1b63-42d0-bc2a-d280896e289a","2b8090d7-8de9-4fb4-af5d-2e2f68ae098a"],
  "name": "post_deactivateAssignment_withoutheader"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/ffac078e-1b63-42d0-bc2a-d280896e289a/assignments/2b8090d7-8de9-4fb4-af5d-2e2f68ae098a/deactivate
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-deactivateassignment-withoutheader-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-deactivateassignment-withoutheader-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-deactivateassignment-withoutheader-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-deactivateassignment-withoutheader-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-deactivateassignment-withoutheader-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/post-deactivateassignment-withoutheader-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/post-deactivateassignment-withoutheader-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following is an example of the response when `Prefer: include-unknown-enum-members` is not provided in the request header.

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

### Example 2: Mark assignment inactive with optional Prefer header
#### Request
The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["ffac078e-1b63-42d0-bc2a-d280896e289a","2b8090d7-8de9-4fb4-af5d-2e2f68ae098a"],
  "name": "post_deactivateAssignment_withheader"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/ffac078e-1b63-42d0-bc2a-d280896e289a/assignments/2b8090d7-8de9-4fb4-af5d-2e2f68ae098a/deactivate
Prefer: include-unknown-enum-members
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-deactivateassignment-withheader-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-deactivateassignment-withheader-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-deactivateassignment-withheader-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-deactivateassignment-withheader-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-deactivateassignment-withheader-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/post-deactivateassignment-withheader-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/post-deactivateassignment-withheader-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following is an example of the response when the `Prefer: include-unknown-enum-members` is provided in the request header.

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
