---
title: "List submissions"
description: "List all the submissions associated with an assignment."
author: "Sureshpadimi88"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# List submissions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List all the [submission](../resources/educationsubmission.md) objects associated with an [assignment](../resources/educationassignment.md). Only teachers, students, and applications with application permissions can perform this operation.

A teacher or an application with application permissions can get all the **submissions**, a student can only get **submissions** that they're associated with.

Provide the header `Prefer: include-unknown-enum-members` to properly list **submissions** with the `reassigned` status. For details, see the examples section.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationassignment_list_submissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationassignment-list-submissions-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /education/classes/{class-id}/assignments/{assignment-id}/submissions
```

## Optional query parameters

This method supports the `$filter`,`$top`, and `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

The following `$expand` options are available for this method: `outcomes`, `resources`, `submittedResources`, and `*`, which includes all the previous options.

All [properties](/graph/api/resources/educationsubmission#properties) are supported for the query parameters `$filter` and `$orderby`.

## Request headers

| Header        | Value                                     |
| :------------ | :---------------------------------------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Prefer        | `include-unknown-enum-members`. Optional. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [educationSubmission](../resources/educationsubmission.md) objects in the response body.

## Examples

### Example 1: Get submissions

#### Request

The following example shows a request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "sampleKeys": ["2003c52e-807a-4186-9b49-60c573095461","2be08d97-b140-4eec-8cbd-88238d571060"],
  "name": "get_submissions"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/2003c52e-807a-4186-9b49-60c573095461/assignments/2be08d97-b140-4eec-8cbd-88238d571060/submissions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-submissions-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-submissions-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-submissions-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-submissions-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-submissions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-submissions-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-submissions-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-submissions-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationSubmission",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 873

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('2003c52e-807a-4186-9b49-60c573095461')/assignments('2be08d97-b140-4eec-8cbd-88238d571060')/submissions",
    "value": [
        {
            "status": "returned",
            "submittedDateTime": null,
            "unsubmittedDateTime": null,
            "returnedDateTime": "2022-04-13T05:11:50.756165Z",
            "reassignedDateTime": null,
            "resourcesFolderUrl": null,
            "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%222003c52e-807a-4186-9b49-60c573095461%5C%22,%5C%22displayName%5C%22%3Anull,%5C%22assignmentIds%5C%22%3A%5B%5C%222be08d97-b140-4eec-8cbd-88238d571060%5C%22%5D,%5C%22submissionId%5C%22%3A%5C%22d9c09b6e-a84d-139a-1b9d-0fbb0ab0de4a%5C%22%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22speed-grader%5C%22%7D%22,%22channelId%22%3Anull%7D",
            "id": "d9c09b6e-a84d-139a-1b9d-0fbb0ab0de4a",
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
                    "id": null,
                    "displayName": null
                }
            }
        }
    ]
}
```

### Example 2: Get submissions with $expand options

#### Request

The following example shows a request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "sampleKeys": ["2003c52e-807a-4186-9b49-60c573095461","2be08d97-b140-4eec-8cbd-88238d571060"],
  "name": "get_submissions_expand"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/2003c52e-807a-4186-9b49-60c573095461/assignments/2be08d97-b140-4eec-8cbd-88238d571060/submissions?$expand=outcomes
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-submissions-expand-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-submissions-expand-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-submissions-expand-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-submissions-expand-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-submissions-expand-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-submissions-expand-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-submissions-expand-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-submissions-expand-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationSubmission",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 4492

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('2003c52e-807a-4186-9b49-60c573095461')/assignments('2be08d97-b140-4eec-8cbd-88238d571060')/submissions(outcomes())",
    "value": [
        {
            "status": "returned",
            "submittedDateTime": null,
            "unsubmittedDateTime": null,
            "returnedDateTime": "2022-04-13T05:11:50.756165Z",
            "reassignedDateTime": null,
            "resourcesFolderUrl": null,
            "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%222003c52e-807a-4186-9b49-60c573095461%5C%22,%5C%22displayName%5C%22%3Anull,%5C%22assignmentIds%5C%22%3A%5B%5C%222be08d97-b140-4eec-8cbd-88238d571060%5C%22%5D,%5C%22submissionId%5C%22%3A%5C%22d9c09b6e-a84d-139a-1b9d-0fbb0ab0de4a%5C%22%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22speed-grader%5C%22%7D%22,%22channelId%22%3Anull%7D",
            "id": "d9c09b6e-a84d-139a-1b9d-0fbb0ab0de4a",
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
                    "id": null,
                    "displayName": null
                }
            },
            "outcomes@odata.context": "https://canary.graph.microsoft.com/testprodbetaeduasg_local_submissions-deeplink/$metadata#education/classes('2003c52e-807a-4186-9b49-60c573095461')/assignments('2be08d97-b140-4eec-8cbd-88238d571060')/submissions('d9c09b6e-a84d-139a-1b9d-0fbb0ab0de4a')/outcomes",
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
            ]
        }
    ]
}
```

### Example 3: Get submissions - Request with optional Prefer header

#### Request

The following example shows a request.


# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "get_submissions_prefer"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/2003c52e-807a-4186-9b49-60c573095461/assignments/2be08d97-b140-4eec-8cbd-88238d571060/submissions
Prefer: include-unknown-enum-members
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-submissions-prefer-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-submissions-prefer-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-submissions-prefer-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-submissions-prefer-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-submissions-prefer-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-submissions-prefer-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-submissions-prefer-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-submissions-prefer-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationSubmission",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 4492

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('2003c52e-807a-4186-9b49-60c573095461')/assignments('2be08d97-b140-4eec-8cbd-88238d571060')/submissions",
    "value": [
        {
            "status": "returned",
            "submittedDateTime": null,
            "unsubmittedDateTime": null,
            "returnedDateTime": "2022-04-13T05:11:50.756165Z",
            "reassignedDateTime": null,
            "resourcesFolderUrl": null,
            "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%222003c52e-807a-4186-9b49-60c573095461%5C%22,%5C%22displayName%5C%22%3Anull,%5C%22assignmentIds%5C%22%3A%5B%5C%222be08d97-b140-4eec-8cbd-88238d571060%5C%22%5D,%5C%22submissionId%5C%22%3A%5C%22d9c09b6e-a84d-139a-1b9d-0fbb0ab0de4a%5C%22%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22speed-grader%5C%22%7D%22,%22channelId%22%3Anull%7D",
            "id": "d9c09b6e-a84d-139a-1b9d-0fbb0ab0de4a",
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
                    "id": null,
                    "displayName": null
                }
            }
        },
        {
            "status": "reassigned",
            "submittedDateTime": "2022-04-13T05:10:00.4660243Z",
            "unsubmittedDateTime": null,
            "returnedDateTime": "2022-04-13T05:12:14.6531582Z",
            "reassignedDateTime": null,
            "resourcesFolderUrl": null,
            "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%222003c52e-807a-4186-9b49-60c573095461%5C%22,%5C%22displayName%5C%22%3Anull,%5C%22assignmentIds%5C%22%3A%5B%5C%222be08d97-b140-4eec-8cbd-88238d571060%5C%22%5D,%5C%22submissionId%5C%22%3A%5C%22efbecaf4-6956-4a76-6e10-b901e4de91c5%5C%22%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22speed-grader%5C%22%7D%22,%22channelId%22%3Anull%7D",
            "id": "efbecaf4-6956-4a76-6e10-b901e4de91c5",
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
                    "id": null,
                    "displayName": null
                }
            }
        }
    ]
}
```

### Example 2: Using `$filter` to get submissions

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["37d99af7-cfc5-4e3b-8566-f7d40e4a2070","a3cce0ba-2008-4c4d-bf62-079408562d96"],
  "name": "get_submissions_with_filter"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/a3cce0ba-2008-4c4d-bf62-079408562d96/submissions?$filter=id eq 'ff2c7fe6-91cd-57a4-aa62-5b9c6b73222a'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-submissions-with-filter-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-submissions-with-filter-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-submissions-with-filter-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-submissions-with-filter-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-submissions-with-filter-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-submissions-with-filter-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-submissions-with-filter-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-submissions-with-filter-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationSubmission",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignments('a3cce0ba-2008-4c4d-bf62-079408562d96')/submissions",
    "value": [
        {
            "status": "working",
            "submittedDateTime": null,
            "unsubmittedDateTime": null,
            "returnedDateTime": null,
            "reassignedDateTime": null,
            "resourcesFolderUrl": null,
            "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2237d99af7-cfc5-4e3b-8566-f7d40e4a2070%5C%22,%5C%22displayName%5C%22%3Anull,%5C%22assignmentIds%5C%22%3A%5B%5C%22a3cce0ba-2008-4c4d-bf62-079408562d96%5C%22%5D,%5C%22submissionId%5C%22%3A%5C%22ff2c7fe6-91cd-57a4-aa62-5b9c6b73222a%5C%22%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22speed-grader%5C%22%7D%22,%22channelId%22%3Anull%7D",
            "id": "ff2c7fe6-91cd-57a4-aa62-5b9c6b73222a",
            "recipient": {
                "@odata.type": "#microsoft.graph.educationSubmissionIndividualRecipient",
                "userId": "80cefd93-8d88-40e2-b5d3-67898383e226"
            },
            "submittedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "80cefd93-8d88-40e2-b5d3-67898383e226",
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
                    "id": null,
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
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List submissions",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
