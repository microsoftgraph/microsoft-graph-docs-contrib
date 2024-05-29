---
title: "Get educationSubmission"
description: "Retrieve a particular submission. A submission object represents a student's work for an assignment. Resources associated with the submission represent this work. Only the student the submission is assigned to can see and modify the submission. A teacher or application with application permissions has full access to all submissions. "
author: Sureshpadimi88
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: apiPageType
---

# Get educationSubmission

Namespace: microsoft.graph

Retrieve a particular [submission](../resources/educationsubmission.md). Only teachers, students, and applications with application permissions can perform this operation.

A **submission** object represents a student's work for an [assignment](../resources/educationassignment.md). Resources associated with the **submission** represent this work.

Only the **assignedTo** student can see and modify the **submission**. A teacher or application with application permissions has full access to all **submissions**.

The grade and feedback from a teacher are part of the [educationOutcome](../resources/educationoutcome.md) associated with this object. Only teachers or applications with application permissions can add or change grades and feedback. Students will not see the grade or feedback until the **assignment** has been released.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationsubmission_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationsubmission-get-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /education/classes/{class-id}/assignments/{assignment-id}/submissions/{submission-id}
```

## Optional query parameters

This method supports the `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and an [educationSubmission](../resources/educationsubmission.md) object in the response body.

## Examples
### Example 1: Get submission
#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_educationsubmission"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/4cc928e3-666c-4360-8688-a15776ce53b4/submissions/5883eaeb-9760-f8e0-6832-a122c4f020be
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-educationsubmission-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-educationsubmission-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-educationsubmission-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-educationsubmission-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-educationsubmission-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-educationsubmission-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-educationsubmission-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-educationsubmission-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

>**Notes:** 
>The response object shown here might be shortened for readability. 
>
>If [setUpResourcesFolder](educationsubmission-setupResourcesFolder.md) hasn't been called on this [educationSubmission](../resources/educationsubmission.md) resource yet, the **resourcesFolderUrl** property is `null`.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationSubmission"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 712

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignments('4cc928e3-666c-4360-8688-a15776ce53b4')/submissions/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<37d99af7-cfc5-4e3b-8566-f7d40e4a2070>')/assignments('<4cc928e3-666c-4360-8688-a15776ce53b4>')/submissions('<5883eaeb-9760-f8e0-6832-a122c4f020be>')?$select=reassignedBy,reassignedDateTime",
    "status": "returned",
    "submittedDateTime": "2023-12-14T17:00:07.4647384Z",
    "unsubmittedDateTime": null,
    "returnedDateTime": "2023-12-18T12:54:37.9204966Z",
    "reassignedDateTime": "2023-12-18T12:54:37.9204966Z",
    "resourcesFolderUrl": null,
    "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2237d99af7-cfc5-4e3b-8566-f7d40e4a2070%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%224cc928e3-666c-4360-8688-a15776ce53b4%5C%22%5D,%5C%22submissionId%5C%22%3A%5C%225883eaeb-9760-f8e0-6832-a122c4f020be%5C%22%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22speed-grader%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
    "id": "5883eaeb-9760-f8e0-6832-a122c4f020be",
    "recipient": {
        "@odata.type": "#microsoft.graph.educationSubmissionIndividualRecipient",
        "userId": "51cf5a99-d234-4e43-96de-cd65df14bfa1"
    },
    "submittedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
            "displayName": null
        }
    },
    "unsubmittedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": null,
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
            "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
            "displayName": null
        }
    }
}
```

### Example 2: Get submission with $expand options
#### Request
The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_submission_expand"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/59069eb2-2a09-4d90-bb19-2089cc69d613/assignments/80da1069-a635-4913-813f-d775a5470a8f/submissions/869369de-3e5a-89eb-6f2d-83cd88f860b5?$expand=*
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-submission-expand-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-submission-expand-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-submission-expand-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-submission-expand-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-submission-expand-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-submission-expand-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-submission-expand-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationSubmission"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 4492

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignments('4cc928e3-666c-4360-8688-a15776ce53b4')/submissions(outcomes(),resources(),submittedResources())/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<37d99af7-cfc5-4e3b-8566-f7d40e4a2070>')/assignments('<4cc928e3-666c-4360-8688-a15776ce53b4>')/submissions('<5883eaeb-9760-f8e0-6832-a122c4f020be>')?$select=reassignedBy,reassignedDateTime",
    "status": "returned",
    "submittedDateTime": "2023-12-14T17:00:07.4647384Z",
    "unsubmittedDateTime": null,
    "returnedDateTime": "2023-12-18T12:54:37.9204966Z",
    "reassignedDateTime": "2023-12-18T12:54:37.9204966Z",
    "resourcesFolderUrl": null,
    "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2237d99af7-cfc5-4e3b-8566-f7d40e4a2070%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%224cc928e3-666c-4360-8688-a15776ce53b4%5C%22%5D,%5C%22submissionId%5C%22%3A%5C%225883eaeb-9760-f8e0-6832-a122c4f020be%5C%22%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22speed-grader%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
    "id": "5883eaeb-9760-f8e0-6832-a122c4f020be",
    "recipient": {
        "@odata.type": "#microsoft.graph.educationSubmissionIndividualRecipient",
        "userId": "51cf5a99-d234-4e43-96de-cd65df14bfa1"
    },
    "submittedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
            "displayName": null
        }
    },
    "unsubmittedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": null,
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
            "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
            "displayName": null
        }
    },
    "outcomes@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignments('4cc928e3-666c-4360-8688-a15776ce53b4')/submissions('5883eaeb-9760-f8e0-6832-a122c4f020be')/outcomes",
    "outcomes": [
        {
            "@odata.type": "#microsoft.graph.educationFeedbackOutcome",
            "lastModifiedDateTime": null,
            "id": "ca05367a-b292-42d5-aff7-5d279feeace8",
            "lastModifiedBy": null,
            "feedback": null,
            "publishedFeedback": null
        },
        {
            "@odata.type": "#microsoft.graph.educationPointsOutcome",
            "lastModifiedDateTime": null,
            "id": "ea1351f6-ba33-4940-b2cb-6a7254af2dc8",
            "lastModifiedBy": null,
            "points": null,
            "publishedPoints": null
        }
    ],
    "resources@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignments('4cc928e3-666c-4360-8688-a15776ce53b4')/submissions('5883eaeb-9760-f8e0-6832-a122c4f020be')/resources",
    "resources": [],
    "submittedResources@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignments('4cc928e3-666c-4360-8688-a15776ce53b4')/submissions('5883eaeb-9760-f8e0-6832-a122c4f020be')/submittedResources",
    "submittedResources": []
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get educationSubmission",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
