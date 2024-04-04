---
title: "educationSubmission: unsubmit"
description: "An action that indicates that a student wants to work on the submission of the assignment after it was turned in. This action can only be taken by the student. "
author: "dipakboyed"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: apiPageType
ms.topic: reference
---

# educationSubmission: unsubmit

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicate that a student wants to work on the submitted assignment after it was turned in. Only teachers, students, and applications with application permissions can perform this operation.

This method changes the status of the submission from `submitted` to `working`. During the submit process, all the resources are copied from **submittedResources** to  **workingResources**. The teacher will be looking at the working resources list for grading.

A teacher can also unsubmit a student's assignment on their behalf.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationsubmission_unsubmit" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationsubmission-unsubmit-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /education/classes/{class-id}/assignments/{assignment-id}/submissions/{submission-id}/unsubmit
```
## Request headers
| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response
If successful, this method returns `200 Ok` response code and an [educationSubmission](../resources/educationsubmission.md) object in the response body.

## Example
The following example shows how to call this API.
### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "educationsubmission_unsubmit"
}-->

```http
POST https://graph.microsoft.com/beta/education/classes/2003c52e-807a-4186-9b49-60c573095461/assignments/7242e03e-048c-437b-8810-3e89b285a362/submissions/3cea5cf6-55dc-d6c7-2f5b-3b5cd2e79c3a/unsubmit
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/educationsubmission-unsubmit-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/educationsubmission-unsubmit-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/educationsubmission-unsubmit-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/educationsubmission-unsubmit-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/educationsubmission-unsubmit-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/educationsubmission-unsubmit-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/educationsubmission-unsubmit-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/educationsubmission-unsubmit-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationSubmission"
} -->

```http
HTTP/1.1 200 Ok

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#educationSubmission",
    "@odata.type": "#microsoft.graph.educationSubmission",
    "status": "returned",
    "submittedDateTime": null,
    "unsubmittedDateTime": "2022-10-19T23:14:41.2934772Z",
    "returnedDateTime": "2022-04-13T02:09:15.7223872Z",
    "reassignedDateTime": null,
    "resourcesFolderUrl": null,
    "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%222003c52e-807a-4186-9b49-60c573095461%5C%22,%5C%22displayName%5C%22%3Anull,%5C%22assignmentIds%5C%22%3A%5B%5C%227242e03e-048c-437b-8810-3e89b285a362%5C%22%5D,%5C%22submissionId%5C%22%3A%5C%223cea5cf6-55dc-d6c7-2f5b-3b5cd2e79c3a%5C%22%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22speed-grader%5C%22%7D%22,%22channelId%22%3Anull%7D",
    "id": "3cea5cf6-55dc-d6c7-2f5b-3b5cd2e79c3a",
    "recipient": {
        "@odata.type": "#microsoft.graph.educationSubmissionIndividualRecipient",
        "userId": "61243ddb-6f39-499d-b232-9fa8cef26b3a"
    },
    "submittedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "61243ddb-6f39-499d-b232-9fa8cef26b3a",
            "displayName": null
        }
    },
    "unsubmittedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
            "displayName": null
        }
    },
    "returnedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
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

## Related content

* [States, transitions, and limitations for assignments and submissions](/graph/assignments-submissions-states-transition)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationSubmission: unsubmit",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


