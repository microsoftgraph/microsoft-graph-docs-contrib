---
title: "educationAssignment: setUpFeedbackResourcesFolder"
description: "Create a SharePoint folder to upload feedback files for a given educationSubmission."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.prod: "education"
doc_type: apiPageType
---

# educationAssignment: setUpFeedbackResourcesFolder

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a SharePoint folder to upload feedback files for a given [educationSubmission](../resources/educationsubmission.md). Only teachers can perform this operation.

The teacher determines the resources to upload in the feedback resources folder of a submission.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  EduAssignments.ReadBasic, EduAssignments.Read  |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /classes/{classId}/assignments/{assignmentId}/setUpFeedbackResourcesFolder
```

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type   | application/json           |

## Request body
In the request body, supply an empty JSON object `{}` for this method.

## Response
If successful, this method returns a `200 OK` response code and an [educationAssignment](../resources/educationassignment.md) object in the request body.

## Example
The following example shows how to call this API.

### Request
The following is an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["37d99af7-cfc5-4e3b-8566-f7d40e4a2070","a3cce0ba-2008-4c4d-bf62-079408562d96"],  
  "name": "educationassignment_setupfeedbackresourcesfolder"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/a3cce0ba-2008-4c4d-bf62-079408562d96/setUpFeedbackResourcesFolder
Content-type: application/json

{
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/educationassignment-setupfeedbackresourcesfolder-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/educationassignment-setupfeedbackresourcesfolder-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/educationassignment-setupfeedbackresourcesfolder-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/educationassignment-setupfeedbackresourcesfolder-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/educationassignment-setupfeedbackresourcesfolder-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/educationassignment-setupfeedbackresourcesfolder-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

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
    "classId": "155c5142-1716-4c24-b2ac-cd1bcd8ad7ac",
    "displayName": "2022-02-25T18_57_26_443Z",
    "closeDateTime": null,
    "dueDateTime": "2022-02-25T18:57:26.443Z",
    "assignDateTime": null,
    "assignedDateTime": null,
    "allowLateSubmissions": true,
    "resourcesFolderUrl": null,
    "feedbackResourcesFolderUrl": "https://graph.microsoft.com/beta/drives/b!9i0vapy4v02vPa13nXvmLuPofkLptz5InpCzu0fn0IRzOBm8o5mJQbXuPddtkYG7/items/01PREZ76FARBTP25X74JFISOFAN7QAHOYW",
    "createdDateTime": "2022-02-24T18:57:27.8611453Z",
    "lastModifiedDateTime": "2022-02-24T18:57:40.5319603Z",
    "allowStudentsToAddResourcesToSubmission": true,
    "status": "draft",
    "notificationChannelUrl": null,
    "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%22155c5142-1716-4c24-b2ac-cd1bcd8ad7ac%5C%22,%5C%22displayName%5C%22%3Anull,%5C%22assignmentIds%5C%22%3A%5B%5C%22d10f56f7-ba7e-4dfc-b5a2-ae9f10b0d1ad%5C%22%5D%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22assignment-viewer%5C%22%7D%22,%22channelId%22%3Anull%7D",
    "addToCalendarAction": "none",
    "addedStudentAction": "none",
    "id": "d10f56f7-ba7e-4dfc-b5a2-ae9f10b0d1ad",
    "instructions": {
        "content": "2022-02-25T18_57_26_443Z",
        "contentType": "text"
    },
    "grading": {
        "@odata.type": "#microsoft.graph.educationAssignmentPointsGradeType",
        "maxPoints": 100
    },
    "assignTo": {
        "@odata.type": "#microsoft.graph.educationAssignmentClassRecipient"
    },
    "createdBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
            "displayName": null
        }
    },
    "lastModifiedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "AAAAAAAA-0123-4567-89AB-1B4BB48C3119",
            "displayName": null
        }
    }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2022-05-05 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationAssignment: setUpFeedbackResourcesFolder",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
