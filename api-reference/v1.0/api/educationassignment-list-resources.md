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

Get all the [educationAssignmentResource](../resources/educationassignmentresource.md) objects associated with an [assignment](../resources/educationassignment.md). Only teachers, students, and applications with application permissions can perform this operation.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationassignment_list_resources" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationassignment-list-resources-permissions.md)]

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

| Header        | Value                     |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [educationAssignmentResource](../resources/educationassignmentresource.md) objects in the response body.

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "sampleKeys": ["f4a941ff-9da6-4707-ba5b-0eae93cad0b4","9018ae7a-9953-4796-a152-4c54e0910922"],
  "name": "get_resources_1"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/f4a941ff-9da6-4707-ba5b-0eae93cad0b4/assignments/9018ae7a-9953-4796-a152-4c54e0910922/resources
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

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

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
                "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!DPA6q59Tw0mtgmyXRUmrQRqBZTesG-lMkl1cBmvvMeU6BLWBcGc_R6UgCKyYyTin/items/016XPCQEA5VVDIMU4BSFG3VBI37MPHZ3OE",
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

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["2003c52e-807a-4186-9b49-60c573095461","131eeaaa-829e-4c6c-9cf3-491b1320fe4d"],
  "name": "get_resources_with_filter"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/2003c52e-807a-4186-9b49-60c573095461/assignments/131eeaaa-829e-4c6c-9cf3-491b1320fe4d/resources?$filter=id eq 'bc98d7cd-7cf3-449c-b1b9-3a9683024d4e'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-resources-with-filter-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-resources-with-filter-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-resources-with-filter-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-resources-with-filter-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-resources-with-filter-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-resources-with-filter-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-resources-with-filter-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-resources-with-filter-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('2003c52e-807a-4186-9b49-60c573095461')/assignments('131eeaaa-829e-4c6c-9cf3-491b1320fe4d')/resources",
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
                "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!IDwAYNkmlUucm64fxXxnzYYTuh2luKRDvUVGQBLOmvYGIrNA3ZPMS4f7fGlHPato/items/0173CEVEP5WXB7SESQPFF3VM2DR7VA4KUD",
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

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["2003c52e-807a-4186-9b49-60c573095461","131eeaaa-829e-4c6c-9cf3-491b1320fe4d"],
  "name": "get_resources_with_orderby"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/2003c52e-807a-4186-9b49-60c573095461/assignments/131eeaaa-829e-4c6c-9cf3-491b1320fe4d/resources?$orderby=resource/createdDateTime
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-resources-with-orderby-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-resources-with-orderby-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-resources-with-orderby-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-resources-with-orderby-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-resources-with-orderby-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-resources-with-orderby-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-resources-with-orderby-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-resources-with-orderby-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('2003c52e-807a-4186-9b49-60c573095461')/assignments('131eeaaa-829e-4c6c-9cf3-491b1320fe4d')/resources",
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
                "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!IDwAYNkmlUucm64fxXxnzYYTuh2luKRDvUVGQBLOmvYGIrNA3ZPMS4f7fGlHPato/items/0173CEVEP5WXB7SESQPFF3VM2DR7VA4KUD",
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
