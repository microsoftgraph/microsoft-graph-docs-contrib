---
title: "List rubrics"
description: "Retrieve a list of educationrubric objects."
ms.localizationpriority: medium
author: "Sureshpadimi88"
ms.subservice: "education"
doc_type: "apiPageType"
ms.date: 07/24/2024
---

# List rubrics

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of [educationRubric](../resources/educationrubric.md) objects.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationuser_list_rubrics" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationuser-list-rubrics-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /education/me/rubrics
```

## Optional query parameters

This method supports the `$top`, `$filter`, `$orderby`, and `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [educationRubric](../resources/educationrubric.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_rubrics"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/education/me/rubrics
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-rubrics-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-rubrics-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-rubrics-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-rubrics-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-rubrics-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-rubrics-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-rubrics-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.educationRubric)"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/me/rubrics",
    "@odata.nextLink": "https://graph.microsoft.com/beta/education/me/rubrics?$skiptoken=MyZRVkZCUVVGQlFVRkVXakJCUVVGQlFVRkJRWGxCUVVGQmVYbGlhbFJxYmpsWE1EWmxhbWN2YjBoR1l6bE5RVDA5",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/me/rubrics?$select=createdBy,createdDateTime",
    "value": [
        {
            "displayName": "Example Credit Rubric after display name patch",
            "createdDateTime": "2024-07-17T00:21:14.4479093Z",
            "lastModifiedDateTime": "2024-07-17T15:00:08.5062776Z",
            "id": "5f650796-a600-4d20-87ef-c46ae34da3bb",
            "description": {
                "content": "New Rubric",
                "contentType": "text"
            },
            "qualities": [
                {
                    "qualityId": "bdde7fc5-9a0b-4db7-9103-aeb6d4d20fbd",
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
                }                
            ],
            "levels": [
                {
                    "levelId": "f0b16138-3ab2-4712-bbe0-b0a2653017a1",
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
                    "levelId": "f5b1cc98-a22e-44d6-8e20-a29fb7de4860",
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
                    "levelId": "352dfa9f-0ad3-42c5-a7b7-843dc78d83f9",
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
                    "levelId": "b1d9ac8f-fb57-4172-9863-4a4994bc31fa",
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
                    "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                    "displayName": null
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
  "description": "List rubrics",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


