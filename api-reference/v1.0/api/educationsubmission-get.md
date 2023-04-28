---
title: "Get educationSubmission"
description: "Retrieve a particular submission. A submission object represents a student's work for an assignment. Resources associated with the submission represent this work. Only the student the submission is assigned to can see and modify the submission. A teacher or application with application permissions has full access to all submissions. "
author: Sureshpadimi88
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# Get educationSubmission

Namespace: microsoft.graph

Retrieve a particular [submission](../resources/educationsubmission.md). Only teachers, students, and applications with application permissions can perform this operation.

A **submission** object represents a student's work for an [assignment](../resources/educationassignment.md). Resources associated with the **submission** represent this work.

Only the **assignedTo** student can see and modify the **submission**. A teacher or application with application permissions has full access to all **submissions**.

The grade and feedback from a teacher are part of the [educationOutcome](../resources/educationoutcome.md) associated with this object. Only teachers or applications with application permissions can add or change grades and feedback. Students will not see the grade or feedback until the **assignment** has been released.

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

## Request body
Don't supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and an [educationSubmission](../resources/educationsubmission.md) object in the response body.

## Examples
### Example 1: Get submission
#### Request
The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_educationsubmission"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/59069eb2-2a09-4d90-bb19-2089cc69d613/assignments/80da1069-a635-4913-813f-d775a5470a8f/submissions/869369de-3e5a-89eb-6f2d-83cd88f860b5
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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('59069eb2-2a09-4d90-bb19-2089cc69d613')/assignments('80da1069-a635-4913-813f-d775a5470a8f')/submissions/$entity",
    "status": "returned",
    "submittedDateTime": "2021-11-10T00:57:17.0495233Z",
    "unsubmittedDateTime": null,
    "returnedDateTime": "2021-11-10T01:03:25.7812455Z",
    "resourcesFolderUrl": null,
    "id": "869369de-3e5a-89eb-6f2d-83cd88f860b5",
    "recipient": {
        "@odata.type": "#microsoft.graph.educationSubmissionIndividualRecipient",
        "userId": "723e2402-f503-4825-a4d5-5143fbe6f53d"
    },
    "submittedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "723e2402-f503-4825-a4d5-5143fbe6f53d",
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
            "id": "afc58f1f-7c9e-4770-a448-e53ba43463a5",
            "displayName": null
        }
    }
}
```

### Example 2: Get submission with $expand options
#### Request
The following is an example of the request.


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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('59069eb2-2a09-4d90-bb19-2089cc69d613')/assignments('80da1069-a635-4913-813f-d775a5470a8f')/submissions(outcomes(),resources(),submittedResources())/$entity",
    "status": "returned",
    "submittedDateTime": "2021-11-10T00:57:17.0495233Z",
    "unsubmittedDateTime": null,
    "returnedDateTime": "2021-11-10T01:03:25.7812455Z",
    "resourcesFolderUrl": null,
    "id": "869369de-3e5a-89eb-6f2d-83cd88f860b5",
    "recipient": {
        "@odata.type": "#microsoft.graph.educationSubmissionIndividualRecipient",
        "userId": "723e2402-f503-4825-a4d5-5143fbe6f53d"
    },
    "submittedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "723e2402-f503-4825-a4d5-5143fbe6f53d",
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
            "id": "afc58f1f-7c9e-4770-a448-e53ba43463a5",
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
            "lastModifiedDateTime": "2021-11-10T01:03:25.7712076Z",
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
                    "qualityId": "a660004a-608d-4cd2-a6dc-4f43812444ee",
                    "feedback": null
                },
                {
                    "qualityId": "2c5ae75d-d347-426b-be2c-cfc81a6f0b32",
                    "feedback": null
                },
                {
                    "qualityId": "32fdea06-5cbb-4881-9093-96e59f59b8b8",
                    "feedback": null
                },
                {
                    "qualityId": "66137bd8-b9c2-40e1-a360-40b7ee75eaef",
                    "feedback": null
                }
            ],
            "rubricQualitySelectedLevels": [
                {
                    "qualityId": "a660004a-608d-4cd2-a6dc-4f43812444ee",
                    "columnId": null
                },
                {
                    "qualityId": "2c5ae75d-d347-426b-be2c-cfc81a6f0b32",
                    "columnId": null
                },
                {
                    "qualityId": "32fdea06-5cbb-4881-9093-96e59f59b8b8",
                    "columnId": null
                },
                {
                    "qualityId": "66137bd8-b9c2-40e1-a360-40b7ee75eaef",
                    "columnId": null
                }
            ],
            "publishedRubricQualityFeedback": [
                {
                    "qualityId": "a660004a-608d-4cd2-a6dc-4f43812444ee",
                    "feedback": null
                },
                {
                    "qualityId": "2c5ae75d-d347-426b-be2c-cfc81a6f0b32",
                    "feedback": null
                },
                {
                    "qualityId": "32fdea06-5cbb-4881-9093-96e59f59b8b8",
                    "feedback": null
                },
                {
                    "qualityId": "66137bd8-b9c2-40e1-a360-40b7ee75eaef",
                    "feedback": null
                }
            ],
            "publishedRubricQualitySelectedLevels": [
                {
                    "qualityId": "a660004a-608d-4cd2-a6dc-4f43812444ee",
                    "columnId": null
                },
                {
                    "qualityId": "2c5ae75d-d347-426b-be2c-cfc81a6f0b32",
                    "columnId": null
                },
                {
                    "qualityId": "32fdea06-5cbb-4881-9093-96e59f59b8b8",
                    "columnId": null
                },
                {
                    "qualityId": "66137bd8-b9c2-40e1-a360-40b7ee75eaef",
                    "columnId": null
                }
            ]
        }
    ],
    "resources": [],
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
