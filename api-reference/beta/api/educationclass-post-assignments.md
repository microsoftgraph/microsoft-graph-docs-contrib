---
title: "Create educationAssignment"
description: "Create a new assignment."
ms.localizationpriority: medium
author: "mmast-msft"
ms.subservice: "education"
doc_type: apiPageType
ms.date: 05/21/2024
---

# Create educationAssignment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new assignment.

Only teachers in a class can create an assignment. Assignments start in draft status, which means that students can't see the assignment until it's published.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationclass_post_assignments" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationclass-post-assignments-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /education/classes/{class-id}/assignments
```
## Request headers
| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json  |

## Request body
In the request body, supply a JSON representation of an [educationAssignment](../resources/educationassignment.md) object.


## Response
If successful, this method returns a `201 Created` response code and an [educationAssignment](../resources/educationassignment.md) object in the response body.

## Example

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_educationassignment_from_educationclass"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments
Content-type: application/json

{
    "dueDateTime": "2025-09-16T00:00:00Z",
    "displayName": "Reading test 09.14",
    "languageTag": "es-MX",
    "instructions": {
        "contentType": "text",
        "content": "Read chapter 4"
    },
    "grading": {
        "@odata.type": "#microsoft.graph.educationAssignmentPointsGradeType",
        "maxPoints": 50
    },
    "assignTo": {
        "@odata.type": "#microsoft.graph.educationAssignmentClassRecipient"
    },
    "status": "draft",
    "allowStudentsToAddResourcesToSubmission": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationassignment-from-educationclass-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationassignment-from-educationclass-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationassignment-from-educationclass-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationassignment-from-educationclass-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationassignment-from-educationclass-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationassignment-from-educationclass-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-educationassignment-from-educationclass-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationAssignment"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignments/$entity",
    "classId": "37d99af7-cfc5-4e3b-8566-f7d40e4a2070",
    "displayName": "Reading test 09.14",
    "closeDateTime": null,
    "dueDateTime": "2025-09-16T00:00:00Z",
    "assignDateTime": null,
    "assignedDateTime": null,
    "allowLateSubmissions": true,
    "resourcesFolderUrl": null,
    "feedbackResourcesFolderUrl": null,
    "createdDateTime": "2025-05-16T20:21:31.4590981Z",
    "lastModifiedDateTime": "2025-05-16T20:21:31.4790427Z",
    "allowStudentsToAddResourcesToSubmission": true,
    "status": "draft",
    "notificationChannelUrl": "https://graph.microsoft.com/beta/teams/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/channels/37d99af7-cfc5-4e3b-8566-f7d40e4a2070",
    "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2237d99af7-cfc5-4e3b-8566-f7d40e4a2070%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%22afd61155-82f4-4006-9eb0-45389123c8df%5C%22%5D%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22assignment-viewer%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
    "addToCalendarAction": "studentsAndTeamOwners",
    "addedStudentAction": "assignIfOpen",
    "languageTag": "es-MX",
    "moduleUrl": null,
    "id": "afd61155-82f4-4006-9eb0-45389123c8df",
    "instructions": {
        "content": "Read chapter 4",
        "contentType": "text"
    },
    "grading": {
        "@odata.type": "#microsoft.graph.educationAssignmentPointsGradeType",
        "maxPoints": 50
    },
    "assignTo": {
        "@odata.type": "#microsoft.graph.educationAssignmentClassRecipient"
    },
    "createdBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
            "displayName": null
        }
    },
    "lastModifiedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
            "displayName": null
        }
    }
}
```

## Related content

* [Status, transitions, and limitations for assignments and submissions](/graph/assignments-submissions-status-transition)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Create educationAssignment",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


