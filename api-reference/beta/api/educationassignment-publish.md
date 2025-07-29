---
title: "educationAssignment: publish"
description: "Change the status of an educationAssignment from its original draft status to the published status."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.subservice: "education"
doc_type: apiPageType
ms.date: 05/21/2024
---

# educationAssignment: publish

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Change the status of an [educationAssignment](../resources/educationassignment.md) from its original `draft` status to the `published` status. 

You can change the status from `draft` to `scheduled` if the **assignment** is scheduled for a future date. 

Only a teacher in the class can make this call. When an **assignment** is in draft status, students will not see the **assignment**, nor will there be any submission objects. When you call this API, [educationSubmission](../resources/educationsubmission.md) objects are created and the assignment appears in the student's list.

The status of the **assignment** goes back to `draft` if there is any backend failure during publish process.

To update the properties of a published **assignment**, see [update an assignment](../api/educationassignment-update.md).

To update the properties of a published assignment, see [update an assignment](../api/educationassignment-update.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationassignment_publish" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationassignment-publish-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /education/classes/{id}/assignments/{id}/publish

```
## Request headers
| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response
If successful, this method returns a `200 Ok` response code and an [educationAssignment](../resources/educationassignment.md) object in the response body.

## Example
The following example shows how to call this API.

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "educationassignment_publish_2"
}-->

```http
POST https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/bb8994da-8a57-4b64-9fd9-108099f3940f/publish
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/educationassignment-publish-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/educationassignment-publish-2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/educationassignment-publish-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/educationassignment-publish-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/educationassignment-publish-2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/educationassignment-publish-2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/educationassignment-publish-2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationAssignment"
} -->

```http
HTTP/1.1 200 Ok

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.educationAssignment",
    "classId": "37d99af7-cfc5-4e3b-8566-f7d40e4a2070",
    "displayName": "publish assignment 02 - draft",
    "closeDateTime": null,
    "dueDateTime": "2025-05-12T18:29:00Z",
    "assignDateTime": null,
    "assignedDateTime": null,
    "allowLateSubmissions": true,
    "resourcesFolderUrl": null,
    "feedbackResourcesFolderUrl": null,
    "createdDateTime": "2025-05-08T18:32:27.2633843Z",
    "lastModifiedDateTime": "2025-05-08T18:33:46.9004801Z",
    "allowStudentsToAddResourcesToSubmission": true,
    "status": "published",
    "notificationChannelUrl": "https://graph.microsoft.com/beta/teams/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/channels/37d99af7-cfc5-4e3b-8566-f7d40e4a2070",
    "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2237d99af7-cfc5-4e3b-8566-f7d40e4a2070%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%22bb8994da-8a57-4b64-9fd9-108099f3940f%5C%22%5D%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22assignment-viewer%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
    "addToCalendarAction": "studentsAndTeamOwners",
    "addedStudentAction": "assignIfOpen",
    "languageTag": "en-US",
    "moduleUrl": null,
    "id": "bb8994da-8a57-4b64-9fd9-108099f3940f",
    "instructions": {
        "content": "publish assignment 02 - draft",
        "contentType": "html"
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
            "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
            "displayName": null
        }
    },
    "lastModifiedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "00000003-0000-0000-c000-000000000000",
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
  "description": "educationAssignment: publish",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


