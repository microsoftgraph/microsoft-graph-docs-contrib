---
title: "Get educationSubmission"
description: "Retrieve a particular submission. A submission object represents a student's work for an assignment. Resources associated with the submission represent this work. Only the student the submission is assigned to can see and modify the submission. A teacher or application with application permissions has full access to all submissions. "
author: "Sureshpadimi88"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# Get educationSubmission

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a particular [submission](../resources/educationsubmission.md). Only teachers, students, and applications with application permissions can perform this operation.

A **submission** object represents a student's work for an [assignment](../resources/educationassignment.md). Resources associated with the **submission** represent this work.

Only the **assignedTo** student can see and modify the **submission**. A teacher or application with application permissions has full access to all **submissions**.

The grade and feedback from a teacher are part of the [educationOutcome](../resources/educationoutcome.md) associated with this object. Only teachers or applications with application permissions can add or change grades and feedback. Students will not see the grade or feedback until the **assignment** has been released.

Provide the header `Prefer: include-unknown-enum-members` to properly list **submissions** with the `reassigned` status. For details, see the examples section.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  EduAssignments.ReadBasic, EduAssignments.ReadWriteBasic, EduAssignments.Read, EduAssignments.ReadWrite |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | EduAssignments.ReadBasic.All, EduAssignments.ReadWriteBasic.All, EduAssignments.Read.All, EduAssignments.ReadWrite.All | 

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
| Authorization  | Bearer {token}. Required.  |
| Prefer  | `include-unknown-enum-members`. Optional.  |

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and an [educationSubmission](../resources/educationsubmission.md) object in the response body.

## Examples
### Example 1: Request without optional Prefer header
#### Request
The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_educationsubmission"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/2003c52e-807a-4186-9b49-60c573095461/assignments/2be08d97-b140-4eec-8cbd-88238d571060/submissions/d9c09b6e-a84d-139a-1b9d-0fbb0ab0de4a
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-educationsubmission-csharp-snippets.md)]
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

---

#### Response
The following is an example of the response. 

>**Notes:** 
>The response object shown here might be shortened for readability. 
>
>If [setUpResourcesFolder](educationsubmission-setupResourcesFolder.md) has not been called on this [educationSubmission](../resources/educationsubmission.md) resource yet, the **resourcesFolderUrl** property is `null`.

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('2003c52e-807a-4186-9b49-60c573095461')/assignments('2be08d97-b140-4eec-8cbd-88238d571060')/submissions/$entity",
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
```

### Example 2: Request with optional Prefer header
#### Request
The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_educationsubmission_prefer"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/2003c52e-807a-4186-9b49-60c573095461/assignments/2be08d97-b140-4eec-8cbd-88238d571060/submissions/efbecaf4-6956-4a76-6e10-b901e4de91c5
Prefer: include-unknown-enum-members
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-educationsubmission-prefer-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-educationsubmission-prefer-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-educationsubmission-prefer-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-educationsubmission-prefer-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-educationsubmission-prefer-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-educationsubmission-prefer-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following is an example of the response. 

>**Notes:** 
>The response object shown here might be shortened for readability. 
>
>If [setUpResourcesFolder](educationsubmission-setupResourcesFolder.md) has not been called on this [educationSubmission](../resources/educationsubmission.md) resource yet, the **resourcesFolderUrl** property is `null`.

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('2003c52e-807a-4186-9b49-60c573095461')/assignments('2be08d97-b140-4eec-8cbd-88238d571060')/submissions/$entity",
    "status": "reassigned",
    "submittedDateTime": "2022-04-13T05:10:00.4660243Z",
    "unsubmittedDateTime": null,
    "returnedDateTime": "2022-04-13T05:12:14.6531582Z",
    "reassignedDateTime": "2022-04-13T05:12:14.6531582Z",
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
```

### Example 3: Get submission with $expand options
#### Request
The following is an example of the request.



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_submission_expand"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/a86a5c30-0437-49d6-9c6b-b1ce0d8d5574/assignments/95da4fd3-2f3a-48d2-a1ea-08eb16e2ae9f/submissions/e1a0240e-f3af-f039-63e7-09c3cbf8d176?$expand=*
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-submission-expand-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-submission-expand-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
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

---

#### Response
The following is an example of the response. 

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('a86a5c30-0437-49d6-9c6b-b1ce0d8d5574')/assignments('95da4fd3-2f3a-48d2-a1ea-08eb16e2ae9f')/submissions(outcomes(),resources(),submittedResources())/$entity",
    "status": "returned",
    "submittedDateTime": "2022-10-24T21:03:53.3664034Z",
    "unsubmittedDateTime": null,
    "returnedDateTime": "2022-10-24T21:04:42.7101616Z",
    "reassignedDateTime": null,
    "resourcesFolderUrl": null,
    "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%22a86a5c30-0437-49d6-9c6b-b1ce0d8d5574%5C%22,%5C%22displayName%5C%22%3Anull,%5C%22assignmentIds%5C%22%3A%5B%5C%2295da4fd3-2f3a-48d2-a1ea-08eb16e2ae9f%5C%22%5D,%5C%22submissionId%5C%22%3A%5C%22e1a0240e-f3af-f039-63e7-09c3cbf8d176%5C%22%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22speed-grader%5C%22%7D%22,%22channelId%22%3Anull%7D",
    "id": "e1a0240e-f3af-f039-63e7-09c3cbf8d176",
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
    },
    "outcomes@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('a86a5c30-0437-49d6-9c6b-b1ce0d8d5574')/assignments('95da4fd3-2f3a-48d2-a1ea-08eb16e2ae9f')/submissions('e1a0240e-f3af-f039-63e7-09c3cbf8d176')/outcomes",
    "outcomes": [
        {
            "@odata.type": "#microsoft.graph.educationFeedbackOutcome",
            "lastModifiedDateTime": "2022-10-24T21:04:42.3073523Z",
            "id": "ca05367a-b292-42d5-aff7-5d279feeace8",
            "lastModifiedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                    "displayName": null
                }
            },
            "feedback": {
                "feedbackDateTime": "2022-10-24T21:04:42.3073523Z",
                "text": {
                    "content": "New feedback!",
                    "contentType": "text"
                },
                "feedbackBy": {
                    "application": null,
                    "device": null,
                    "user": {
                        "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                        "displayName": null
                    }
                }
            },
            "publishedFeedback": {
                "feedbackDateTime": "2022-10-24T21:04:25.2783852Z",
                "text": {
                    "content": "Feedback",
                    "contentType": "text"
                },
                "feedbackBy": {
                    "application": null,
                    "device": null,
                    "user": {
                        "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                        "displayName": null
                    }
                }
            }
        },
        {
            "@odata.type": "#microsoft.graph.educationPointsOutcome",
            "lastModifiedDateTime": "2022-10-24T21:04:42.7101541Z",
            "id": "ea1351f6-ba33-4940-b2cb-6a7254af2dc8",
            "lastModifiedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                    "displayName": null
                }
            },
            "points": {
                "gradedDateTime": "2022-10-24T21:04:42.7101541Z",
                "points": 456,
                "gradedBy": {
                    "application": null,
                    "device": null,
                    "user": {
                        "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                        "displayName": null
                    }
                }
            },
            "publishedPoints": {
                "gradedDateTime": "2022-10-24T21:04:25.6308301Z",
                "points": 123,
                "gradedBy": {
                    "application": null,
                    "device": null,
                    "user": {
                        "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                        "displayName": null
                    }
                }
            }
        },
        {
            "@odata.type": "#microsoft.graph.educationRubricOutcome",
            "lastModifiedDateTime": "2022-10-24T21:04:26.5833776Z",
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
                    "qualityId": "050f420d-ef93-46fe-a7c0-bf8b24769f5c",
                    "feedback": null
                },
                {
                    "qualityId": "9bd9fda3-e013-44a5-b373-dfec8b4da80b",
                    "feedback": {
                        "content": "Needs improvement",
                        "contentType": "text"
                    }
                },
                {
                    "qualityId": "c5e07099-4e18-47de-9e71-27504d4e71de",
                    "feedback": null
                }
            ],
            "rubricQualitySelectedLevels": [
                {
                    "qualityId": "050f420d-ef93-46fe-a7c0-bf8b24769f5c",
                    "columnId": null
                },
                {
                    "qualityId": "9bd9fda3-e013-44a5-b373-dfec8b4da80b",
                    "columnId": "0f9823a2-174c-4ce0-8f12-e298c291f29b"
                },
                {
                    "qualityId": "c5e07099-4e18-47de-9e71-27504d4e71de",
                    "columnId": null
                }
            ],
            "publishedRubricQualityFeedback": [
                {
                    "qualityId": "050f420d-ef93-46fe-a7c0-bf8b24769f5c",
                    "feedback": null
                },
                {
                    "qualityId": "9bd9fda3-e013-44a5-b373-dfec8b4da80b",
                    "feedback": {
                        "content": "Needs improvement",
                        "contentType": "text"
                    }
                },
                {
                    "qualityId": "c5e07099-4e18-47de-9e71-27504d4e71de",
                    "feedback": null
                }
            ],
            "publishedRubricQualitySelectedLevels": [
                {
                    "qualityId": "050f420d-ef93-46fe-a7c0-bf8b24769f5c",
                    "columnId": null
                },
                {
                    "qualityId": "9bd9fda3-e013-44a5-b373-dfec8b4da80b",
                    "columnId": "0f9823a2-174c-4ce0-8f12-e298c291f29b"
                },
                {
                    "qualityId": "c5e07099-4e18-47de-9e71-27504d4e71de",
                    "columnId": null
                }
            ]
        }
    ],
    "resources@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('a86a5c30-0437-49d6-9c6b-b1ce0d8d5574')/assignments('95da4fd3-2f3a-48d2-a1ea-08eb16e2ae9f')/submissions('e1a0240e-f3af-f039-63e7-09c3cbf8d176')/resources",
    "resources": [],
    "submittedResources@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('a86a5c30-0437-49d6-9c6b-b1ce0d8d5574')/assignments('95da4fd3-2f3a-48d2-a1ea-08eb16e2ae9f')/submissions('e1a0240e-f3af-f039-63e7-09c3cbf8d176')/submittedResources",
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
