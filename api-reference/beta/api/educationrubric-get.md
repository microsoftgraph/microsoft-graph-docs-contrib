---
title: "Get educationRubric"
description: "Retrieve the properties and relationships of an educationrubric object."
ms.localizationpriority: medium
author: "Sureshpadimi88"
ms.subservice: "education"
doc_type: "apiPageType"
ms.date: 07/30/2024
---

# Get educationRubric

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of an [educationRubric](../resources/educationrubric.md) object. Only teachers and students can perform this operation.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationrubric_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationrubric-get-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /education/me/rubrics/{id}
```

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [educationRubric](../resources/educationrubric.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_educationrubric"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/education/me/rubrics/199816a3-bd27-4134-bffa-b3928e8ab3a5
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-educationrubric-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-educationrubric-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-educationrubric-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-educationrubric-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-educationrubric-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-educationrubric-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-educationrubric-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationRubric"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/me/rubrics/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/me/rubrics('<guid>')?$select=createdBy,createdDateTime",
    "displayName": "Rubric6468",
    "createdDateTime": "2024-07-11T14:03:36.5435838Z",
    "lastModifiedDateTime": "2024-07-11T14:03:55.6961018Z",
    "id": "199816a3-bd27-4134-bffa-b3928e8ab3a5",
    "description": {
        "content": "New Rubric",
        "contentType": "text"
    },
    "qualities": [
        {
            "qualityId": "93b651aa-1167-43dd-9971-fab0e242b396",
            "displayName": null,
            "weight": 33.33,
            "description": {
                "content": "First quality",
                "contentType": "text"
            },
            "criteria": [
                {
                    "description": {
                        "content": "First quality is excellent",
                        "contentType": "text"
                    }
                },
                {
                    "description": {
                        "content": "First quality is good",
                        "contentType": "text"
                    }
                },
                {
                    "description": {
                        "content": "First quality is fair",
                        "contentType": "text"
                    }
                },
                {
                    "description": {
                        "content": "First quality is poor",
                        "contentType": "text"
                    }
                }
            ]
        },
        {
            "qualityId": "89e767f0-f66a-42f6-94f5-5b084bb17dad",
            "displayName": null,
            "weight": 33.33,
            "description": {
                "content": "Second quality",
                "contentType": "text"
            },
            "criteria": [
                {
                    "description": {
                        "content": "Second quality is excellent",
                        "contentType": "text"
                    }
                },
                {
                    "description": {
                        "content": "Second quality is good",
                        "contentType": "text"
                    }
                },
                {
                    "description": {
                        "content": "Second quality is fair",
                        "contentType": "text"
                    }
                },
                {
                    "description": {
                        "content": "Second quality is poor",
                        "contentType": "text"
                    }
                }
            ]
        },
        {
            "qualityId": "6c0e77ee-6bf5-4639-9602-3075d4774aa9",
            "displayName": null,
            "weight": 33.33,
            "description": {
                "content": "Third quality",
                "contentType": "text"
            },
            "criteria": [
                {
                    "description": {
                        "content": "Third quality is excellent",
                        "contentType": "text"
                    }
                },
                {
                    "description": {
                        "content": "Third quality is good",
                        "contentType": "text"
                    }
                },
                {
                    "description": {
                        "content": "Third quality is fair",
                        "contentType": "text"
                    }
                },
                {
                    "description": {
                        "content": "This quality is poor",
                        "contentType": "text"
                    }
                }
            ]
        }
    ],
    "levels": [
        {
            "levelId": "df3a03e2-a222-4515-aaaf-adbba692917d",
            "displayName": "Excellent",
            "description": {
                "content": "",
                "contentType": "text"
            },
            "grading": {
                "@odata.type": "#microsoft.graph.educationAssignmentPointsGradeType",
                "maxPoints": 4
            }
        },
        {
            "levelId": "a2f90a11-a565-4904-aaa2-c2be1c0c71f9",
            "displayName": "Good",
            "description": {
                "content": "",
                "contentType": "text"
            },
            "grading": {
                "@odata.type": "#microsoft.graph.educationAssignmentPointsGradeType",
                "maxPoints": 3
            }
        },
        {
            "levelId": "53023e26-1f8e-437a-a1fa-163683e0619a",
            "displayName": "Fair",
            "description": {
                "content": "",
                "contentType": "text"
            },
            "grading": {
                "@odata.type": "#microsoft.graph.educationAssignmentPointsGradeType",
                "maxPoints": 2
            }
        },
        {
            "levelId": "7afc81dc-8ecf-4889-aa59-5bfe20c8e755",
            "displayName": "Poor",
            "description": {
                "content": "",
                "contentType": "text"
            },
            "grading": {
                "@odata.type": "#microsoft.graph.educationAssignmentPointsGradeType",
                "maxPoints": 1
            }
        }
    ],
    "grading": {
        "@odata.type": "#microsoft.graph.educationAssignmentPointsGradeType",
        "maxPoints": 100
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
            "id": "96134727-5b49-4f67-9a6b-68e133681d2a",
            "displayName": null
        }
    }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get educationRubric",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


