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

List all the submissions associated with an [assignment](../resources/educationassignment.md). Only teachers, students, and applications with application permissions can perform this operation.

A teacher or an application with application permissions can get all the submissions while a student can only get submissions that they are associated with.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  EduAssignments.ReadBasic, EduAssignments.ReadWriteBasic, EduAssignments.Read, EduAssignments.ReadWrite  |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | EduAssignments.ReadBasic.All, EduAssignments.ReadWriteBasic.All, EduAssignments.Read.All, EduAssignments.ReadWrite.All | 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /education/classes/{id}/assignments/{id}/submissions
```

## Optional query parameters

This method supports the `$filter`,'$top', and `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).


The following are the available `$expand` options for this method: `outcomes`, `resources`, `submittedResources`, and `*`, which includes all the previous options.

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body
Don't supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and collection of [educationSubmission](../resources/educationsubmission.md) objects in the response body.

## Examples

### Example 1: Get submissions
#### Request
The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["f4a941ff-9da6-4707-ba5b-0eae93cad0b4","3c77de7f-539b-49e1-9c96-1274f2f0ee3b"],
  "name": "get_submissions"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/f4a941ff-9da6-4707-ba5b-0eae93cad0b4/assignments/3c77de7f-539b-49e1-9c96-1274f2f0ee3b/submissions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-submissions-csharp-snippets.md)]
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

---

#### Response
The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.

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
    "value": [
        {
            "status": "working",
            "submittedDateTime": null,
            "unsubmittedDateTime": null,
            "returnedDateTime": null,
            "resourcesFolderUrl": "https://graph.microsoft.com/v1.0/drives/b!DPA6q59Tw0mtgmyXRUmrQRqBZTesG-lMkl1cBmvvMeUEWrOk89nKRpUEr4ZhNYBc/items/016XPCQEDJCE5LX4OXABF37QSORAK5WKQD",
            "id": "4af73d2b-6b9c-493f-0688-979087bed39b",
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
            }
        }
    ]
}
```

### Example 2: Get submissions with $expand options
#### Request
The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["72a7baec-c3e9-4213-a850-f62de0adad5f","efcdf80b-a5de-42ac-8579-e40b0223d48b"],
  "name": "get_submissions_expand"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/efcdf80b-a5de-42ac-8579-e40b0223d48b/submissions?$expand=outcomes
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-submissions-expand-csharp-snippets.md)]
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

---

#### Response
The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('72a7baec-c3e9-4213-a850-f62de0adad5f')/assignments('efcdf80b-a5de-42ac-8579-e40b0223d48b')/submissions(outcomes())",
    "value": [
        {
            "status": "returned",
            "submittedDateTime": null,
            "unsubmittedDateTime": null,
            "returnedDateTime": "2021-10-13T15:57:00.0349869Z",
            "resourcesFolderUrl": null,
            "id": "9bc724ee-d314-1ec5-725d-5f81228e85a6",
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
                    "id": "f3a5344e-dbde-48b0-be24-b5b62a243836",
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
                    "lastModifiedDateTime": "2021-10-13T15:57:00.0076092Z",
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
                            "qualityId": "f4c7b781-4c0c-4113-a5fb-c0885b7ab510",
                            "feedback": null
                        }
                    ],
                    "rubricQualitySelectedLevels": [
                        {
                            "qualityId": "f4c7b781-4c0c-4113-a5fb-c0885b7ab510",
                            "columnId": "ef99fe68-b6f8-4f67-a13b-9a81c1724788"
                        }
                    ],
                    "publishedRubricQualityFeedback": [
                        {
                            "qualityId": "f4c7b781-4c0c-4113-a5fb-c0885b7ab510",
                            "feedback": null
                        }
                    ],
                    "publishedRubricQualitySelectedLevels": [
                        {
                            "qualityId": "f4c7b781-4c0c-4113-a5fb-c0885b7ab510",
                            "columnId": "ef99fe68-b6f8-4f67-a13b-9a81c1724788"
                        }
                    ]
                }
            ]
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
