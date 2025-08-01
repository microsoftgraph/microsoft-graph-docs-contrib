---
title: "Get educationRubric attached to educationAssignment"
description: "Get the educationRubric attached to an educationAssignment, if one exists."
ms.localizationpriority: medium
author: "Sureshpadimi88"
ms.subservice: "education"
doc_type: "apiPageType"
ms.date: 07/30/2024
---

# Get educationRubric attached to educationAssignment

Namespace: microsoft.graph

Get the [educationRubric](../resources/educationrubric.md) object attached to an [educationAssignment](../resources/educationassignment.md), if one exists. Only teachers, students, and applications with application permissions can perform this operation.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationassignment_get_rubric" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationassignment-get-rubric-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /education/classes/{id}/assignments/{id}/rubric
```

## Optional query parameters

This method supports the `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).


## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [educationRubric](../resources/educationrubric.md) object in the response body. Otherwise, it returns a `404 Not Found` response code.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_rubric"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/f1e03281-acd7-4fb0-84c3-902b3d30104c/assignments/09e2e94f-c701-45f5-98a8-cb5000195d2b/rubric
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-rubric-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-rubric-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-rubric-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-rubric-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-rubric-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-rubric-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-rubric-python-snippets.md)]
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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('f1e03281-acd7-4fb0-84c3-902b3d30104c')/assignments('09e2e94f-c701-45f5-98a8-cb5000195d2b')/rubric/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/assignments('<guid>')/rubric?$select=createdBy,createdDateTime",
    "displayName": "Rubric4896",
    "createdDateTime": "2024-07-11T11:20:54.1905879Z",
    "lastModifiedDateTime": "2024-07-11T11:20:54.2012531Z",
    "id": "3214c3c7-fb76-4b58-831f-82bd28b68dfd",
    "description": {
        "content": "This is the rubric we use on postman testing",
        "contentType": "text"
    },
    "qualities": [
        {
            "qualityId": "53bd0640-8210-450f-b74c-a2cc50a9b120",
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
            "qualityId": "2ebd6515-4b48-45ea-bfc2-2b8b8938ac26",
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
            "qualityId": "a4a338b7-96f0-4600-a85a-4a3b606d5960",
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
            "levelId": "83a40aa7-f34a-44ad-a337-143997bcdc44",
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
            "levelId": "ba3ea5ed-33f8-4e04-8a6b-ac67c3a39d65",
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
            "levelId": "61763a58-d253-4a53-a017-92c01f6441f8",
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
            "levelId": "afc660ea-1040-4420-a27e-dbbf118aaa6c",
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
            "id": null,
            "displayName": null
        }
    },
    "lastModifiedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": null,
            "displayName": null
        }
    }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List rubric",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


