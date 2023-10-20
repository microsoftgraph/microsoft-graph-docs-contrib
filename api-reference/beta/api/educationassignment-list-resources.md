---
title: "List assignment resources"
description: "Get all the resources associated with an assignment."
author: "Sureshpadimi88"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# List assignment resources

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all the [educationAssignmentResource](../resources/educationassignmentresource.md) objects associated with an [assignment](../resources/educationassignment.md). Only teachers, students, and applications with application permissions can perform this operation.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

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
GET /education/classes/{id}/assignments/{id}/resources
```

## Optional query parameters

This method supports the `$top`, `$filter`, `$orderby`, and `$select` OData query parameters to help customize the response.
For general information, see [OData query parameters](/graph/query-parameters).

All [properties](/graph/api/resources/educationassignmentresource#properties) are supported for the query parameters `$filter` and `$orderby`.

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body
Don't supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [educationAssignmentResource](../resources/educationassignmentresource.md) objects in the response body.

## Example

### Example 1: Get Resources
### Request
The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["f4a941ff-9da6-4707-ba5b-0eae93cad0b4","9018ae7a-9953-4796-a152-4c54e0910922"],
  "name": "get_resources_1"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/f4a941ff-9da6-4707-ba5b-0eae93cad0b4/assignments/9018ae7a-9953-4796-a152-4c54e0910922/resources
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-resources-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-resources-1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-resources-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-resources-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-resources-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-resources-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-resources-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-resources-1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationAssignmentResource",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "distributeForStudentWork": false,
            "id": "eec7f642-9d9a-406f-bbae-4b3b2c12e273",
            "resource": {
                "@odata.type": "#microsoft.graph.educationFileResource",
                "displayName": "First file uploaded as Education resource by t-cristobalb",
                "createdDateTime": "2021-07-16T23:41:53.9378423Z",
                "lastModifiedDateTime": "2021-07-16T23:41:53.9378423Z",
                "fileUrl": "https://graph.microsoft.com/beta/drives/b!DPA6q59Tw0mtgmyXRUmrQRqBZTesG-lMkl1cBmvvMeU6BLWBcGc_R6UgCKyYyTin/items/016XPCQEA5VVDIMU4BSFG3VBI37MPHZ3OE",
                "createdBy": {
                    "application": null,
                    "device": null,
                    "user": {
                        "id": "f3a5344e-dbde-48b0-be24-b5b62a243836",
                        "displayName": null
                    }
                },
                "lastModifiedBy": {
                    "application": null,
                    "device": null,
                    "user": {
                        "id": "f3a5344e-dbde-48b0-be24-b5b62a243836",
                        "displayName": null
                    }
                }
            }
        },
        {
            "distributeForStudentWork": false,
            "id": "ceb3a7e7-158e-4164-9f80-104d14884389",
            "resource": {
                "@odata.type": "#microsoft.graph.educationPowerPointResource",
                "displayName": "state diagram.pptx",
                "createdDateTime": "2021-08-27T14:42:04.8778499Z",
                "lastModifiedDateTime": "2021-08-27T14:42:04.8778499Z",
                "fileUrl": "https://graph.microsoft.com/beta/drives/b!DPA6q59Tw0mtgmyXRUmrQRqBZTesG-lMkl1cBmvvMeU6BLWBcGc_R6UgCKyYyTin/items/016XPCQEGRJFHRKPSI6RB3XQ6HGTB4L4FV",
                "createdBy": {
                    "application": null,
                    "device": null,
                    "user": {
                        "id": "f3a5344e-dbde-48b0-be24-b5b62a243836",
                        "displayName": null
                    }
                },
                "lastModifiedBy": {
                    "application": null,
                    "device": null,
                    "user": {
                        "id": "f3a5344e-dbde-48b0-be24-b5b62a243836",
                        "displayName": null
                    }
                }
            }
        }
    ]
}
```
### Example 2: Using `$filter` to get resources

### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "sampleKeys": ["2003c52e-807a-4186-9b49-60c573095461","131eeaaa-829e-4c6c-9cf3-491b1320fe4d"],
  "name": "get_resources_with_filter"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/2003c52e-807a-4186-9b49-60c573095461/assignments/131eeaaa-829e-4c6c-9cf3-491b1320fe4d/resources?$filter=id eq 'bc98d7cd-7cf3-449c-b1b9-3a9683024d4e'
```

### Response
The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationAssignmentResource",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('2003c52e-807a-4186-9b49-60c573095461')/assignments('131eeaaa-829e-4c6c-9cf3-491b1320fe4d')/resources",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<2003c52e-807a-4186-9b49-60c573095461>')/assignments('<131eeaaa-829e-4c6c-9cf3-491b1320fe4d>')/resources?$select=distributeForStudentWork,resource",
    "value": [
        {
            "distributeForStudentWork": false,
            "id": "bc98d7cd-7cf3-449c-b1b9-3a9683024d4e",
            "resource": {
                "@odata.type": "#microsoft.graph.educationMediaResource",
                "displayName": "WSU2-1.png",
                "createdDateTime": "2023-09-07T13:03:14.8070185Z",
                "lastModifiedDateTime": "2023-09-07T13:03:14.8070418Z",
                "fileUrl": "https://graph.microsoft.com/beta/drives/b!IDwAYNkmlUucm64fxXxnzYYTuh2luKRDvUVGQBLOmvYGIrNA3ZPMS4f7fGlHPato/items/0173CEVEP5WXB7SESQPFF3VM2DR7VA4KUD",
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
        }
    ]
}
```

### Example 3: Using `$orderby` to get resources

### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "sampleKeys": ["2003c52e-807a-4186-9b49-60c573095461","131eeaaa-829e-4c6c-9cf3-491b1320fe4d"],
  "name": "get_resources_with_orderby"
}-->
```msgraph-interactive
GEThttps://graph.microsoft.com/beta/education/classes/2003c52e-807a-4186-9b49-60c573095461/assignments/131eeaaa-829e-4c6c-9cf3-491b1320fe4d/resources?$orderby=resource/createdDateTime
```

### Response
The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationAssignmentResource",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('2003c52e-807a-4186-9b49-60c573095461')/assignments('131eeaaa-829e-4c6c-9cf3-491b1320fe4d')/resources",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<2003c52e-807a-4186-9b49-60c573095461>')/assignments('<131eeaaa-829e-4c6c-9cf3-491b1320fe4d>')/resources?$select=distributeForStudentWork,resource",
    "value": [
        {
            "distributeForStudentWork": false,
            "id": "bc98d7cd-7cf3-449c-b1b9-3a9683024d4e",
            "resource": {
                "@odata.type": "#microsoft.graph.educationMediaResource",
                "displayName": "WSU2-1.png",
                "createdDateTime": "2023-09-07T13:03:14.8070185Z",
                "lastModifiedDateTime": "2023-09-07T13:03:14.8070418Z",
                "fileUrl": "https://graph.microsoft.com/beta/drives/b!IDwAYNkmlUucm64fxXxnzYYTuh2luKRDvUVGQBLOmvYGIrNA3ZPMS4f7fGlHPato/items/0173CEVEP5WXB7SESQPFF3VM2DR7VA4KUD",
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
        },
        {
            "distributeForStudentWork": false,
            "id": "b6f15112-dd9d-4841-befd-75d3df5cb28f",
            "resource": {
                "@odata.type": "#microsoft.graph.educationWordResource",
                "displayName": "ad.docx",
                "createdDateTime": "2023-09-07T13:03:15.8433922Z",
                "lastModifiedDateTime": "2023-09-07T13:03:15.8434186Z",
                "fileUrl": "https://graph.microsoft.com/beta/drives/b!IDwAYNkmlUucm64fxXxnzYYTuh2luKRDvUVGQBLOmvYGIrNA3ZPMS4f7fGlHPato/items/0173CEVEM3MHQL4F5XLNFKRHNXRW4PPJIV",
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
        },
        {
            "distributeForStudentWork": false,
            "id": "4288e8ea-1f90-4a0f-b915-b69fc823ce59",
            "resource": {
                "@odata.type": "#microsoft.graph.educationLinkResource",
                "displayName": "https://dfgdrgdt",
                "createdDateTime": "2023-09-07T15:41:08.9008331Z",
                "lastModifiedDateTime": "2023-09-07T15:41:08.9008543Z",
                "link": "https://dfgdrgdt",
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
        }
    ]
}
```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List resources",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
