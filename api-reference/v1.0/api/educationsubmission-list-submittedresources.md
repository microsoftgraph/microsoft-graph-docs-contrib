---
title: "List submittedResources"
description: "List the resources that were officially submitted for grading."
author: "Sureshpadimi88"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: apiPageType
---

# List submittedResources

Namespace: microsoft.graph

List the [educationSubmissionResource](../resources/educationsubmissionresource.md) objects that were officially submitted for grading. Only teachers, students, and applications with application permissions can perform this operation.

The student who owns the submission can't change the submitted list without resubmitting the assignment. This resource is a wrapper around the real resource and can contain a pointer back to the actual assignment resource if this resource was copied from the assignment.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationsubmission_list_submittedresources" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationsubmission-list-submittedresources-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /education/classes/{id}/assignments/{id}/submissions/{id}/submittedResources
```

## Optional query parameters

This method supports the `$top`, `$filter`, `$orderby`, and `$select` OData query parameters to help customize the response.
For general information, see [OData query parameters](/graph/query-parameters).

All [properties](/graph/api/resources/educationsubmissionresource#properties) are supported for the query parameters `$filter` and `$orderby`.

## Request headers

| Header        | Value                     |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [educationSubmissionResource](../resources/educationsubmissionresource.md) objects in the response body.

## Example

### Example 1: Get all submitted resources

### Request

The following example shows a request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "get_submittedresources"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/acdefc6b-2dc6-4e71-b1e9-6d9810ab1793/assignments/ad8afb28-c138-4ad7-b7f5-a6986c2655a8/submissions/fbe51c90-78b7-418a-b5f3-871bf8d8d21e/submittedResources
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-submittedresources-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-submittedresources-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-submittedresources-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-submittedresources-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-submittedresources-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-submittedresources-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-submittedresources-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-submittedresources-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationResource",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
        "assignmentResourceUrl": null,
        "id": "0f7dd681-f1b6-4f78-b8fb-a579fc4a36ae",
        "resource": {
            "@odata.type": "#microsoft.graph.educationLinkResource",
            "displayName": "ABC",
            "createdDateTime": "2021-03-11T20:47:53.0823323Z",
            "lastModifiedDateTime": "2021-03-11T20:47:53.0823323Z",
            "link": "https://www.bing.com/",
            "createdBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "f8bbb2a4-2cdd-4d49-ac81-d4113fc72dc1",
                    "displayName": null
                }
            },
            "lastModifiedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "f8bbb2a4-2cdd-4d49-ac81-d4113fc72dc1",
                    "displayName": null
                }
            }
        }
    }
  ]
}
```

### Example 2: Using `$filter` to get submitted resources

#### Request

The following example shows a request.

<!-- {
  "blockType": "ignored",
  "name": "get_submittedresources_filter"
}-->

```http
GET https://graph.microsoft.com/v1.0/education/classes/2003c52e-807a-4186-9b49-60c573095461/assignments/03a893d4-f64b-47e4-9e0c-afac4b357007/submissions/be6280d6-cf92-d58e-6ca4-44babfcb2394/submittedResources?$filter=id eq '6d6e204d-d976-452e-a76b-14a43f77dc65'
```

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "ignored",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationResource",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('2003c52e-807a-4186-9b49-60c573095461')/assignments('03a893d4-f64b-47e4-9e0c-afac4b357007')/submissions('be6280d6-cf92-d58e-6ca4-44babfcb2394')/submittedResources",
    "value": [
        {
            "assignmentResourceUrl": "https://assignments.onenote.com/api/v1.0/edu/classes/2003c52e-807a-4186-9b49-60c573095461/assignments/03a893d4-f64b-47e4-9e0c-afac4b357007/resources/45361b68-2777-42b1-aa4b-7054ce6de136",
            "id": "6d6e204d-d976-452e-a76b-14a43f77dc65",
            "resource": {
                "@odata.type": "#microsoft.graph.educationExternalResource",
                "displayName": "Forms Complete (Postman Test Dev)",
                "createdDateTime": "2022-04-13T02:00:32.0613061Z",
                "lastModifiedDateTime": "2022-04-13T02:00:32.0623064Z",
                "webUrl": "https://forms.office.com/Pages/AssignmentsDesignPage.aspx#TopView=Preview&FormId=kowztj5TbU-jJ5lCY3EjmS7FAyB6gIZBm0lgxXMJVGFUMVlZVFM2MDRCVk1NOFlRU0xJRExDWDVTQyQlQCN0PWcu",
                "createdBy": {
                    "application": null,
                    "device": null,
                    "user": {
                        "id": "51cf5a99-d234-4e43-96de-cd65df14bfa1",
                        "displayName": null
                    }
                },
                "lastModifiedBy": {
                    "application": null,
                    "device": null,
                    "user": {
                        "id": "51cf5a99-d234-4e43-96de-cd65df14bfa1",
                        "displayName": null
                    }
                }
            }
        }
    ]
}
```

### Example 3: Using `$orderby` to get submitted resources

#### Request

The following example shows a request.

<!-- {
  "blockType": "ignored",
  "name": "get_submittedresources_orderby"
}-->

```http
GET https://graph.microsoft.com/v1.0/education/classes/2003c52e-807a-4186-9b49-60c573095461/assignments/131eeaaa-829e-4c6c-9cf3-491b1320fe4d/submissions/603e719d-4bcd-7b78-be60-1194b3921b50/submittedResources?$orderby=resource/createdDateTime
```

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "ignored",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationResource",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('2003c52e-807a-4186-9b49-60c573095461')/assignments('131eeaaa-829e-4c6c-9cf3-491b1320fe4d')/submissions('603e719d-4bcd-7b78-be60-1194b3921b50')/submittedResources",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<2003c52e-807a-4186-9b49-60c573095461>')/assignments('<131eeaaa-829e-4c6c-9cf3-491b1320fe4d>')/submissions('<603e719d-4bcd-7b78-be60-1194b3921b50>')/submittedResources?$select=assignmentResourceUrl,resource",
    "value": [
        {
            "assignmentResourceUrl": null,
            "id": "8d3829c0-cf39-4e7e-b193-229ed0da2e5a",
            "resource": {
                "@odata.type": "#microsoft.graph.educationLinkResource",
                "displayName": "https://efwrr",
                "createdDateTime": "2023-09-07T15:46:18.7652482Z",
                "lastModifiedDateTime": "2023-09-07T15:46:18.7652624Z",
                "link": "https://efwrr",
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
  "description": "List submittedResources",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
