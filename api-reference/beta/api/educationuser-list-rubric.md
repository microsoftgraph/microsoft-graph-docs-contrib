---
title: "List all educationRubric"
description: "Returns a list of all the properties and relationships of an educationrubric object."
ms.localizationpriority: medium
author: "v-rmanda"
ms.subservice: "education"
doc_type: "apiPageType"
---

# List all educationRubric

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Returns a list of all the properties and relationships of an [educationRubric](../resources/educationrubric.md) objects. Only teachers and students can perform this operation.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationuser-list-rubric" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationrubric-get-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /education/me/rubrics
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

Here's an example  of the request.

<!-- {
  "blockType": "request",
  "name": "educationuser-list-rubric"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/education/me/rubrics
```

### Response

Here's an example  of the response.

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/me/rubrics",
    "@odata.nextLink": "https://graph.microsoft.com/beta/education/me/rubrics?$skiptoken=MyZRVkZCUVVGQlFVRmtOWE5CUVVGQlFVRkJRWGxCUVVGQmFITnBWR2QwTDB0RlZWZFlhVWxIUjJGTFlsWlRaejA5",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/me/rubrics?$select=createdBy,createdDateTime",
    "value": [
        {
            "displayName": "Postman Test Rubric",
            "createdDateTime": "2024-06-13T08:10:39.3765737Z",
            "lastModifiedDateTime": "2024-06-13T08:10:46.4098043Z",
            "id": "9866d364-7b05-483f-a828-9ad5c3079511",
            "description": {
                "content": "This is the rubric we use on postman testing",
                "contentType": "text"
            },
            "qualities": [
                {
                    "qualityId": "a227c1f2-e301-4816-9ca6-9fd8afba44a2",
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
                    "qualityId": "05f4349e-1fd9-4f25-a060-e2d178b6a930",
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
                    "qualityId": "3d2d6593-064d-486c-a4c4-302f60d46aa0",
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
                    "levelId": "1f892671-61fb-40ff-9609-e2da9add505c",
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
                    "levelId": "7ce3a121-ff04-4c62-9d11-665f1082cddf",
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
                    "levelId": "730f09ee-6848-41f5-95fa-e2f045c3e870",
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
                    "levelId": "6758adc5-acbe-43f6-881e-9769560bddfc",
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
    ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationuser-list-rubric",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


