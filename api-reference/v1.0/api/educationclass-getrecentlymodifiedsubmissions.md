---
title: "educationClass: getRecentlyModifiedSubmissions"
description: "Retrieve submissions modified in the previous seven days."
author: "v-rmanda"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: apiPageType
ms.date: 04/20/2025
---

# educationClass: getRecentlyModifiedSubmissions

Namespace: microsoft.graph

Retrieve submissions modified in the previous seven days. Only teachers and applications with application permissions can perform this operation.

A **submission** object represents a student's work for an [assignment](../resources/educationassignment.md). Resources associated with the submission represent their work.

A teacher or application with application permissions has full access to all **submission** objects.

The grade and feedback from a teacher are part of the [educationOutcome](../resources/educationoutcome.md) associated with this object. Only teachers or applications with application permissions can add or change grades and feedback. Students can't see the grade or feedback until the **assignment** is released.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationclass_getrecentlymodifiedsubmissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationclass-getrecentlymodifiedsubmissions-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /education/classes/{class-id}/getRecentlyModifiedSubmissions
```

## Optional query parameters
This method supports the `$orderby`, `$top`, `$filter`, `$select`, and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

The `$orderby` query parameter only supports the **lastModifiedDateTime** property of the [educationSubmission](../resources/educationsubmission.md) resource.

The default ordering is by descending **lastModifiedDateTime** property values.

**Note** : Equality (`eq`) operator isn't supported for the **lastModifiedDateTime** property value.

## Request headers
| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [educationSubmission](../resources/educationsubmission.md) objects in the response body.

If you specify an unsupported property for the `$orderby` query parameter, the method returns a `400` error message.

```http
HTTP/1.1 400 Bad Request
Content-type: application/json

{
    "error": {
        "code": "20143",
        "message": "The OData query is invalid. $orderby clause is only supported for these properties : (lastModifiedDateTime).",
        "innerError": {
            "date": "2024-08-27T13:04:10",
            "request-id": "218ae0dc-664c-4928-b4e1-f3b37c27c472",
            "client-request-id": "ed8c66ed-fd50-d7ec-d989-5a92140999c1"
        }
    }
}
```
If you specify an unsupported value for the `$filter` query parameter, the method returns a `400` error message.

```http
HTTP/1.1 400 Bad Request
Content-type: application/json

{
    "error": {
        "code": "BadRequest",
        "message": "Invalid filter clause: The $filter expression must evaluate to a single boolean value.",
        "innerError": {
            "date": "2024-08-27T13:05:11",
            "request-id": "31233bf3-c442-4a8d-a1ff-56c665239e25",
            "client-request-id": "30f9e18f-f311-741b-bf48-23fd4feecdb9"
        }
    }
}
```

## Examples

### Example 1: Get recently modified submissions

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_educationclass_getrecentlymodifiedsubmissions"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/getRecentlyModifiedSubmissions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-educationclass-getrecentlymodifiedsubmissions-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-educationclass-getrecentlymodifiedsubmissions-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-educationclass-getrecentlymodifiedsubmissions-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-educationclass-getrecentlymodifiedsubmissions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-educationclass-getrecentlymodifiedsubmissions-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-educationclass-getrecentlymodifiedsubmissions-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-educationclass-getrecentlymodifiedsubmissions-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.educationSubmission)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.educationSubmission)",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/microsoft.graph.getRecentlyModifiedSubmissions?$select=assignmentId,excusedBy",
    "value": [
        {
            "status": "submitted",
            "submittedDateTime": "2025-04-14T19:03:16.1151397Z",
            "unsubmittedDateTime": null,
            "returnedDateTime": null,
            "reassignedDateTime": null,
            "excusedDateTime": null,
            "lastModifiedDateTime": "2025-04-14T19:03:19.9052847Z",
            "resourcesFolderUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ09U1eIUFaoRYA01ZbdVzuK/items/01VANVJQ5OVM43DLB6H5H24GLF26AUG6GW",
            "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2237d99af7-cfc5-4e3b-8566-f7d40e4a2070%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%22e2631f80-14b3-45b5-884e-321fa424121f%5C%22%5D,%5C%22submissionId%5C%22%3A%5C%22b017139a-c0f7-38c0-a22e-ac6d31455d20%5C%22%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22speed-grader%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
            "assignmentId": "e2631f80-14b3-45b5-884e-321fa424121f",
            "id": "b017139a-c0f7-38c0-a22e-ac6d31455d20",
            "recipient": {
                "@odata.type": "#microsoft.graph.educationSubmissionIndividualRecipient",
                "userId": "696aeb4b-cd1b-42c4-81de-00870ebe4f39"
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
            },
            "excusedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": null,
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
    ]
}
```

### Example 2: Get recently modified submissions with `$select` and `$filter` options on assignmentId property

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_educationclass_getrecentlymodifiedsubmissions_filter_select_assignmentId"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/getrecentlymodifiedsubmissions?$filter=assignmentId eq 'b20d6737-f88e-4892-8174-73aa26d18784'&$select=LastModifiedDateTime,status
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-educationclass-getrecentlymodifiedsubmissions-filter-select-assignmentid-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-educationclass-getrecentlymodifiedsubmissions-filter-select-assignmentid-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-educationclass-getrecentlymodifiedsubmissions-filter-select-assignmentid-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-educationclass-getrecentlymodifiedsubmissions-filter-select-assignmentid-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-educationclass-getrecentlymodifiedsubmissions-filter-select-assignmentid-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-educationclass-getrecentlymodifiedsubmissions-filter-select-assignmentid-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-educationclass-getrecentlymodifiedsubmissions-filter-select-assignmentid-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.educationSubmission)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.educationSubmission)",
    "value": [
        {
            "status": "submitted",
            "lastModifiedDateTime": "2024-09-09T10:18:33.4052415Z"
        },
        {
            "status": "working",
            "lastModifiedDateTime": "2024-09-09T10:18:07.6464644Z"
        },
        {
            "status": "working",
            "lastModifiedDateTime": "2024-09-09T10:18:07.588738Z"
        },
        {
            "status": "working",
            "lastModifiedDateTime": "2024-09-09T10:18:07.5295878Z"
        },
        {
            "status": "working",
            "lastModifiedDateTime": "2024-09-09T10:18:07.4718648Z"
        },
        {
            "status": "working",
            "lastModifiedDateTime": "2024-09-09T10:18:07.3513158Z"
        },
        {
            "status": "working",
            "lastModifiedDateTime": "2024-09-09T10:18:07.2866527Z"
        },
        {
            "status": "working",
            "lastModifiedDateTime": "2024-09-09T10:18:07.2219998Z"
        },
        {
            "status": "working",
            "lastModifiedDateTime": "2024-09-09T10:18:07.1602788Z"
        },
        {
            "status": "working",
            "lastModifiedDateTime": "2024-09-09T10:18:07.0884058Z"
        }
    ]
}
```

### Example 3: Get recently modified submissions with `$expand` option

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_educationclass_getrecentlymodifiedsubmissions_expand"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/getRecentlyModifiedSubmissions?$expand=outcomes
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-educationclass-getrecentlymodifiedsubmissions-expand-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-educationclass-getrecentlymodifiedsubmissions-expand-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-educationclass-getrecentlymodifiedsubmissions-expand-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-educationclass-getrecentlymodifiedsubmissions-expand-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-educationclass-getrecentlymodifiedsubmissions-expand-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-educationclass-getrecentlymodifiedsubmissions-expand-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-educationclass-getrecentlymodifiedsubmissions-expand-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.educationSubmission)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.educationSubmission)",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/microsoft.graph.getRecentlyModifiedSubmissions?$select=assignmentId,excusedBy",
    "value": [
        {
            "status": "submitted",
            "submittedDateTime": "2025-04-14T19:03:16.1151397Z",
            "unsubmittedDateTime": null,
            "returnedDateTime": null,
            "reassignedDateTime": null,
            "excusedDateTime": null,
            "lastModifiedDateTime": "2025-04-14T19:03:19.9052847Z",
            "resourcesFolderUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ09U1eIUFaoRYA01ZbdVzuK/items/01VANVJQ5OVM43DLB6H5H24GLF26AUG6GW",
            "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2237d99af7-cfc5-4e3b-8566-f7d40e4a2070%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%22e2631f80-14b3-45b5-884e-321fa424121f%5C%22%5D,%5C%22submissionId%5C%22%3A%5C%22b017139a-c0f7-38c0-a22e-ac6d31455d20%5C%22%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22speed-grader%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
            "assignmentId": "e2631f80-14b3-45b5-884e-321fa424121f",
            "id": "b017139a-c0f7-38c0-a22e-ac6d31455d20",
            "recipient": {
                "@odata.type": "#microsoft.graph.educationSubmissionIndividualRecipient",
                "userId": "696aeb4b-cd1b-42c4-81de-00870ebe4f39"
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
            },
            "excusedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": null,
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
            },
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
                },
                {
                    "@odata.type": "#microsoft.graph.educationRubricOutcome",
                    "lastModifiedDateTime": "2025-04-14T19:02:01.628909Z",
                    "id": "65a46d78-1a2b-4a7e-bcf8-78a22ac2611b",
                    "lastModifiedBy": {
                        "application": null,
                        "device": null,
                        "user": {
                            "id": null,
                            "displayName": null
                        }
                    },
                    "rubricQualityFeedback": [
                        {
                            "qualityId": "c1a87647-135c-4d0f-8493-a9a4995a2f7d",
                            "feedback": null
                        }
                    ],
                    "rubricQualitySelectedLevels": [
                        {
                            "qualityId": "c1a87647-135c-4d0f-8493-a9a4995a2f7d",
                            "columnId": null
                        }
                    ],
                    "publishedRubricQualityFeedback": [],
                    "publishedRubricQualitySelectedLevels": []
                }
            ]
        }
    ]
}            
```

### Example 4: Get recently modified submissions with `$filter` option

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_educationclass_getrecentlymodifiedsubmissions_filter"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/getRecentlyModifiedSubmissions?$filter=lastModifiedDateTime gt 2025-04-10T19:02:00.8753517Z
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-educationclass-getrecentlymodifiedsubmissions-filter-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-educationclass-getrecentlymodifiedsubmissions-filter-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-educationclass-getrecentlymodifiedsubmissions-filter-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-educationclass-getrecentlymodifiedsubmissions-filter-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-educationclass-getrecentlymodifiedsubmissions-filter-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-educationclass-getrecentlymodifiedsubmissions-filter-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-educationclass-getrecentlymodifiedsubmissions-filter-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.educationSubmission)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.educationSubmission)",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/microsoft.graph.getRecentlyModifiedSubmissions?$select=assignmentId,excusedBy",
    "value": [
        {
            "status": "submitted",
            "submittedDateTime": "2025-04-29T14:53:31.0207353Z",
            "unsubmittedDateTime": null,
            "returnedDateTime": null,
            "reassignedDateTime": null,
            "excusedDateTime": null,
            "lastModifiedDateTime": "2025-04-29T14:53:31.0866924Z",
            "resourcesFolderUrl": null,
            "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2237d99af7-cfc5-4e3b-8566-f7d40e4a2070%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%22ed33a213-f67f-4eb8-bfea-f45e6cba041f%5C%22%5D,%5C%22submissionId%5C%22%3A%5C%2215ab234b-3281-ada3-bff4-a51c335068e1%5C%22%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22speed-grader%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
            "assignmentId": "ed33a213-f67f-4eb8-bfea-f45e6cba041f",
            "id": "15ab234b-3281-ada3-bff4-a51c335068e1",
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
            },
            "excusedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": null,
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
    ]
}
```

### Example 5: Get recently modified submissions with `$orderby` and `$top` options

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_educationclass_getrecentlymodifiedsubmissions_orderby_top"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/getRecentlyModifiedSubmissions?$orderby=lastModifiedDateTime&$top=1
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-educationclass-getrecentlymodifiedsubmissions-orderby-top-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-educationclass-getrecentlymodifiedsubmissions-orderby-top-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-educationclass-getrecentlymodifiedsubmissions-orderby-top-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-educationclass-getrecentlymodifiedsubmissions-orderby-top-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-educationclass-getrecentlymodifiedsubmissions-orderby-top-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-educationclass-getrecentlymodifiedsubmissions-orderby-top-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-educationclass-getrecentlymodifiedsubmissions-orderby-top-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.educationSubmission)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.educationSubmission)",
    "@odata.nextLink": "https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/getRecentlyModifiedSubmissions?$orderby=lastModifiedDateTime&$top=1&$skiptoken=eyJJbm5lclNraXBUb2tlbiI6Ik15WlJWa1pDVVZWR1FsRlZSa1JhTUVaQ1VWVkdRbEZWUmtKUlZVcENVVlZHUWxKRldqUmhWVGwwWWtadmVVMUZPRFJTZW1RMlN6STFSbFpZY0VwVlZEQTUifQ%3d%3d",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/microsoft.graph.getRecentlyModifiedSubmissions?$select=assignmentId,excusedBy",
    "value": [
        {
            "status": "working",
            "submittedDateTime": null,
            "unsubmittedDateTime": null,
            "returnedDateTime": null,
            "reassignedDateTime": null,
            "excusedDateTime": null,
            "lastModifiedDateTime": "2025-04-14T19:02:00.5139927Z",
            "resourcesFolderUrl": null,
            "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2237d99af7-cfc5-4e3b-8566-f7d40e4a2070%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%22e2631f80-14b3-45b5-884e-321fa424121f%5C%22%5D,%5C%22submissionId%5C%22%3A%5C%22e2f557e8-4b18-0dae-e5b6-71010c07319d%5C%22%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22speed-grader%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
            "assignmentId": "e2631f80-14b3-45b5-884e-321fa424121f",
            "id": "e2f557e8-4b18-0dae-e5b6-71010c07319d",
            "recipient": {
                "@odata.type": "#microsoft.graph.educationSubmissionIndividualRecipient",
                "userId": "4a07d5ac-87a1-4823-860f-f16c2ab08fb2"
            },
            "submittedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "4a07d5ac-87a1-4823-860f-f16c2ab08fb2",
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
            },
            "excusedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": null,
                    "displayName": null
                }
            },
            "lastModifiedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "5e3ce6c0-2b1f-4285-8d4b-75ee78787346",
                    "displayName": null
                }
            }
        }
    ]
}
```

### Example 6: Get recently modified submissions with `$select` option

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_educationclass_getrecentlymodifiedsubmissions_select"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/getRecentlyModifiedSubmissions?$select=excusedDateTime
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-educationclass-getrecentlymodifiedsubmissions-select-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-educationclass-getrecentlymodifiedsubmissions-select-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-educationclass-getrecentlymodifiedsubmissions-select-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-educationclass-getrecentlymodifiedsubmissions-select-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-educationclass-getrecentlymodifiedsubmissions-select-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-educationclass-getrecentlymodifiedsubmissions-select-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-educationclass-getrecentlymodifiedsubmissions-select-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.educationSubmission)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.educationSubmission)",
    "value": [
        {
            "excusedDateTime": "2025-04-14T19:20:47.2834827Z"
        }
    ]
}
```
### Example 7: Get recently modified submissions with `$filter` option for a range on lastModifiedDateTime property

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_educationclass_getrecentlymodifiedsubmissions_filter_range"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/bf1f1963-05f6-4cba-903c-5892b4ce3bd7/getRecentlyModifiedSubmissions?$filter=lastModifiedDateTime gt 2025-04-10T19:02:00.8753517Z and lastModifiedDateTime lt 2025-04-14T23:02:00.8753517Z
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-educationclass-getrecentlymodifiedsubmissions-filter-range-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-educationclass-getrecentlymodifiedsubmissions-filter-range-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-educationclass-getrecentlymodifiedsubmissions-filter-range-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-educationclass-getrecentlymodifiedsubmissions-filter-range-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-educationclass-getrecentlymodifiedsubmissions-filter-range-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-educationclass-getrecentlymodifiedsubmissions-filter-range-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-educationclass-getrecentlymodifiedsubmissions-filter-range-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.educationSubmission)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.educationSubmission)",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/microsoft.graph.getRecentlyModifiedSubmissions?$select=assignmentId,excusedBy",
    "value": [
        {
            "status": "returned",
            "submittedDateTime": "2025-04-14T19:03:16.1151397Z",
            "unsubmittedDateTime": null,
            "returnedDateTime": "2025-04-14T19:20:50.4973616Z",
            "reassignedDateTime": null,
            "excusedDateTime": "2025-04-14T19:20:47.2834827Z",
            "lastModifiedDateTime": "2025-04-14T19:20:50.6054405Z",
            "resourcesFolderUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ09U1eIUFaoRYA01ZbdVzuK/items/01VANVJQ5OVM43DLB6H5H24GLF26AUG6GW",
            "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2237d99af7-cfc5-4e3b-8566-f7d40e4a2070%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%22e2631f80-14b3-45b5-884e-321fa424121f%5C%22%5D,%5C%22submissionId%5C%22%3A%5C%22b017139a-c0f7-38c0-a22e-ac6d31455d20%5C%22%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22speed-grader%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
            "assignmentId": "e2631f80-14b3-45b5-884e-321fa424121f",
            "id": "b017139a-c0f7-38c0-a22e-ac6d31455d20",
            "recipient": {
                "@odata.type": "#microsoft.graph.educationSubmissionIndividualRecipient",
                "userId": "696aeb4b-cd1b-42c4-81de-00870ebe4f39"
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
                    "id": null,
                    "displayName": null
                }
            },
            "excusedBy": {
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
    ]
}
```
### Example 8: Get recently modified submissions with `$filter` option for lastModifiedDateTime property using less than(lt) operator

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_educationclass_getrecentlymodifiedsubmissions_filter_lastModifiedDateTime"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/getRecentlyModifiedSubmissions?$filter=lastModifiedDateTime lt 2025-04-29T15:48:31.3785886Z
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-educationclass-getrecentlymodifiedsubmissions-filter-lastmodifieddatetime-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-educationclass-getrecentlymodifiedsubmissions-filter-lastmodifieddatetime-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-educationclass-getrecentlymodifiedsubmissions-filter-lastmodifieddatetime-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-educationclass-getrecentlymodifiedsubmissions-filter-lastmodifieddatetime-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-educationclass-getrecentlymodifiedsubmissions-filter-lastmodifieddatetime-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-educationclass-getrecentlymodifiedsubmissions-filter-lastmodifieddatetime-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-educationclass-getrecentlymodifiedsubmissions-filter-lastmodifieddatetime-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.educationSubmission)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.educationSubmission)",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/microsoft.graph.getRecentlyModifiedSubmissions?$select=assignmentId,excusedBy",
    "value": [
        {
            "status": "returned",
            "submittedDateTime": null,
            "unsubmittedDateTime": null,
            "returnedDateTime": "2025-04-29T15:48:14.4748477Z",
            "reassignedDateTime": null,
            "excusedDateTime": null,
            "lastModifiedDateTime": "2025-04-29T15:48:14.5601548Z",
            "resourcesFolderUrl": null,
            "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2237d99af7-cfc5-4e3b-8566-f7d40e4a2070%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%22ed33a213-f67f-4eb8-bfea-f45e6cba041f%5C%22%5D,%5C%22submissionId%5C%22%3A%5C%2231d03cde-a936-afc6-5e49-66c0b3271fed%5C%22%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22speed-grader%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
            "assignmentId": "ed33a213-f67f-4eb8-bfea-f45e6cba041f",
            "id": "31d03cde-a936-afc6-5e49-66c0b3271fed",
            "recipient": {
                "@odata.type": "#microsoft.graph.educationSubmissionIndividualRecipient",
                "userId": "e5c17181-ad7e-4a66-86bf-b560ce0c8b29"
            },
            "submittedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "e5c17181-ad7e-4a66-86bf-b560ce0c8b29",
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
            "excusedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": null,
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
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2024-08-18 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get educationSubmission recentlymodifiedsubmission",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
