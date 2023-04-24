---
title: "List outcomes"
description: "Retrieve a list of educationOutcome objects."
ms.localizationpriority: medium
author: "AsBansal"
ms.prod: "education"
doc_type: "apiPageType"
---

# List outcomes

Namespace: microsoft.graph

Retrieve a list of [educationOutcome](../resources/educationoutcome.md) objects. There are four types of outcomes: **educationPointsOutcome**, **educationFeedbackOutcome**, **educationRubricOutcome**, and **educationFeedbackResourceOutcome**. Only teachers, students, and applications with application permissions can perform this operation.

A submission for a credit assignment (one that has no point value and no rubric) will have an [educationFeedbackOutcome](../resources/educationpointsoutcome.md). (It might also return an [educationPointsOutcome](../resources/educationpointsoutcome.md), but that outcome is ignored.)

A submission for a points assignment (one that has a point value assigned) will have both an [educationFeedbackOutcome](../resources/educationpointsoutcome.md) and an [educationPointsOutcome](../resources/educationpointsoutcome.md).

A submission for an assignment with an attached rubric, if the rubric is a credit rubric (no points), will have an [educationFeedbackOutcome](../resources/educationpointsoutcome.md) and an [educationRubricOutcome](../resources/educationrubricoutcome.md). (It might also return an [educationPointsOutcome](../resources/educationpointsoutcome.md), but that outcome is ignored.)

A submission for an assignment with an attached rubric, if the rubric is a points rubric, will have an [educationFeedbackOutcome](../resources/educationpointsoutcome.md), an [educationPointsOutcome](../resources/educationpointsoutcome.md), and an [educationRubricOutcome](../resources/educationrubricoutcome.md).

A submission for a feedback resource will have an [educationFeedbackResourceOutcome](../resources/educationfeedbackresourceoutcome.md).

All outcome types have a regular and a published property appropriate to that type of outcome; for example, **points** and **publishedPoints**, **feedback** and **publishedFeedback**. The regular property is the most recent value updated by the teacher; the published property is the most recent value returned to the student.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | EduAssignments.ReadBasic, EduAssignments.ReadWriteBasic, EduAssignments.Read, EduAssignments.ReadWrite |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | EduAssignments.ReadBasic.All, EduAssignments.ReadWriteBasic.All, EduAssignments.Read.All, EduAssignments.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /education/classes/{classId}/assignments/{assignmentId}/submissions/{submissionId}/outcomes
```

## Optional query parameters

This method supports the `$top`, `$filter`, and `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [educationOutcome](../resources/educationoutcome.md) objects in the response body.

## Examples

### Example 1: Get all outcomes

The following example shows how to retrieve all outcomes.

#### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_outcomes"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/acdefc6b-2dc6-4e71-b1e9-6d9810ab1793/assignments/cf6005fc-9e13-44a2-a6ac-a53322006454/submissions/d1bee293-d8bb-48d4-af3e-c8cb0e3c7fe7/outcomes
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-outcomes-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-outcomes-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-outcomes-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-outcomes-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-outcomes-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-outcomes-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationOutcome",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "@odata.type": "#microsoft.graph.educationFeedbackOutcome",
            "id": "ca05367a-b292-42d5-aff7-5d279feeace8",
            "feedback": {
                "feedbackDateTime": "2019-07-15T22:35:46.4847754Z",
                "text": {
                    "content": "This is feedback for the assignment as a whole.",
                    "contentType": "text"
                },
                "feedbackBy": {
                    "user": {
                        "id": "9391878d-903c-406c-bb1c-0f17d00fd878"
                    }
                }
            },
            "publishedFeedback": {
                "feedbackDateTime": "2019-07-15T22:35:46.4847754Z",
                "text": {
                    "content": "This is feedback for the assignment as a whole.",
                    "contentType": "text"
                },
                "feedbackBy": {
                    "user": {
                        "id": "9391878d-903c-406c-bb1c-0f17d00fd878"
                    }
                }
            }
        },
        {
            "@odata.type": "#microsoft.graph.educationPointsOutcome",
            "id": "ea1351f6-ba33-4940-b2cb-6a7254af2dc8",
            "points": {
                "gradedDateTime": "2019-07-15T22:36:02.2592364Z",
                "points": 75,
                "gradedBy": {
                    "user": {
                        "id": "9391878d-903c-406c-bb1c-0f17d00fd878"
                    }
                }
            },
            "publishedPoints": {
                "gradedDateTime": "2019-07-15T22:36:02.2592364Z",
                "points": 75,
                "gradedBy": {
                    "user": {
                        "id": "9391878d-903c-406c-bb1c-0f17d00fd878"
                    }
                }
            }
        },
        {
            "@odata.type": "#microsoft.graph.educationRubricOutcome",
            "id": "65a46d78-1a2b-4a7e-bcf8-78a22ac2611b",
            "rubricQualityFeedback": [
                {
                    "qualityId": "ebe97fd7-47f7-4e9a-b31b-221ad731fc5a",
                    "feedback": {
                        "content": "This is feedback specific to this quality of the rubric.",
                        "contentType": "text"
                    }
                },
                {
                    "qualityId": "bbf3fb4a-a794-4b51-a1ad-c22fb891c5d8",
                    "feedback": {
                        "content": "This is feedback specific to this quality of the rubric.",
                        "contentType": "text"
                    }
                }
            ],
            "rubricQualitySelectedLevels": [
                {
                    "qualityId": "ebe97fd7-47f7-4e9a-b31b-221ad731fc5a",
                    "columnId": "db2a0c91-abef-44cb-b8b1-ef1f85ef4a77"
                },
                {
                    "qualityId": "bbf3fb4a-a794-4b51-a1ad-c22fb891c5d8",
                    "columnId": "519cd134-c513-40b9-aa71-fdb0d063c084"
                }
            ],
            "publishedRubricQualityFeedback": [
                {
                    "qualityId": "ebe97fd7-47f7-4e9a-b31b-221ad731fc5a",
                    "feedback": {
                        "content": "This is feedback specific to this quality of the rubric.",
                        "contentType": "text"
                    }
                },
                {
                    "qualityId": "bbf3fb4a-a794-4b51-a1ad-c22fb891c5d8",
                    "feedback": {
                        "content": "This is feedback specific to this quality of the rubric.",
                        "contentType": "text"
                    }
                }
            ],
            "publishedRubricQualitySelectedLevels": [
                {
                    "qualityId": "ebe97fd7-47f7-4e9a-b31b-221ad731fc5a",
                    "columnId": "db2a0c91-abef-44cb-b8b1-ef1f85ef4a77"
                },
                {
                    "qualityId": "bbf3fb4a-a794-4b51-a1ad-c22fb891c5d8",
                    "columnId": "519cd134-c513-40b9-aa71-fdb0d063c084"
                }
            ]
        }
    ]
}
```

### Example 2: Get outcomes filtered by outcome type

The following example shows how to retrieve outcomes filtered by outcome type.

#### Request

The following is an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_outcomes_by_type"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/a3cce0ba-2008-4c4d-bf62-079408562d96/submissions/2185e6d7-2924-4ed1-dde1-269f89e29184/outcomes?$filter=isof('microsoft.graph.educationFeedbackResourceOutcome')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-outcomes-by-type-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-outcomes-by-type-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-outcomes-by-type-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-outcomes-by-type-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-outcomes-by-type-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-outcomes-by-type-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationOutcome",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignments('a3cce0ba-2008-4c4d-bf62-079408562d96')/submissions('2185e6d7-2924-4ed1-dde1-269f89e29184')/outcomes",
    "value": [
        {
            "@odata.type": "#microsoft.graph.educationFeedbackResourceOutcome",
            "lastModifiedDateTime": "2022-05-06T00:52:12.8318457Z",
            "id": "8fb409c5-570b-4fe5-8473-d3666e61f3a0",
            "resourceStatus": "notPublished",
            "lastModifiedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                    "displayName": null
                }
            },
            "feedbackResource": {
                "@odata.type": "#microsoft.graph.educationWordResource",
                "displayName": "Document2.docx",
                "createdDateTime": "2022-05-06T00:52:12.8318064Z",
                "lastModifiedDateTime": "2022-05-06T00:52:12.8318457Z",
                "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F8CNZWU38SarWxPyWM7jx/items/01VANVJQ26WF6K2W2IOFAKDITG4F5GWRH5",
                "createdBy": {
                    "application": null,
                    "device": null,
                    "user": {
                        "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                        "displayName": null
                    }
                },
                "lastModifiedBy": {
                    "application": null,
                    "device": null,
                    "user": {
                        "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                        "displayName": null
                    }
                }
            }
        },
        {
            "@odata.type": "#microsoft.graph.educationFeedbackResourceOutcome",
            "lastModifiedDateTime": "2022-05-06T00:52:17.3180275Z",
            "id": "0710aeea-590d-46b4-9eb8-1c08b6549677",
            "resourceStatus": "notPublished",
            "lastModifiedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                    "displayName": null
                }
            },
            "feedbackResource": {
                "@odata.type": "#microsoft.graph.educationWordResource",
                "displayName": "Document3.docx",
                "createdDateTime": "2022-05-06T00:52:17.3180176Z",
                "lastModifiedDateTime": "2022-05-06T00:52:17.3180275Z",
                "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F8CNZWU38SarWxPyWM7jx/items/01VANVJQ563EMEMHRTBBH2SOZ4GDSNEUZK",
                "createdBy": {
                    "application": null,
                    "device": null,
                    "user": {
                        "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                        "displayName": null
                    }
                },
                "lastModifiedBy": {
                    "application": null,
                    "device": null,
                    "user": {
                        "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                        "displayName": null
                    }
                }
            }
        }
    ]
}
```
<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List outcomes",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
