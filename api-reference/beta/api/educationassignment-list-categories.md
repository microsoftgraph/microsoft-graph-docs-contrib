---
title: "List categories"
description: "List all categories for an assignment."
author: "Sureshpadimi88"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# List categories

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List all categories for an [assignment](../resources/educationassignment.md). Only teachers, students, and applications with application permissions can perform this operation.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationassignment_list_categories" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationassignment-list-categories-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /education/classes/{id}/assignments/{id}/categories
```

## Optional query parameters

This method supports the `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

All [properties](/graph/api/resources/educationcategory#properties) are supported for the query parameters `$filter` and `$orderby`.

## Request headers

| Header        | Value                     |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [educationCategory](../resources/educationcategory.md) objects in the response body.

## Example

### Example 1: Get Categories

### Request
The following example shows a request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "sampleKeys": ["f4a941ff-9da6-4707-ba5b-0eae93cad0b4","9018ae7a-9953-4796-a152-4c54e0910922"],
  "name": "get_assignment_categories"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/f4a941ff-9da6-4707-ba5b-0eae93cad0b4/assignments/9018ae7a-9953-4796-a152-4c54e0910922/categories
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-assignment-categories-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-assignment-categories-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-assignment-categories-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-assignment-categories-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-assignment-categories-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-assignment-categories-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-assignment-categories-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationCategory",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('f4a941ff-9da6-4707-ba5b-0eae93cad0b4')/assignments('9018ae7a-9953-4796-a152-4c54e0910922')/categories",
    "value": [
        {
            "displayName": "August Unit 2",
            "id": "70563636-801f-440a-989e-14d417cc5c05"
        }
    ]
}
```

### Example 2: Using `$filter` to get categories

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_assignment_categories_with_filter"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/77c30802-3e00-4e91-975f-f2aaa2c5a569/assignments/c3307ea8-1343-4109-aeb9-92b9a74bf131/categories?$filter=id eq '74b03ab5-5832-4f99-89f5-d52da13d93f7'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-assignment-categories-with-filter-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-assignment-categories-with-filter-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-assignment-categories-with-filter-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-assignment-categories-with-filter-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-assignment-categories-with-filter-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-assignment-categories-with-filter-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-assignment-categories-with-filter-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationCategory",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('77c30802-3e00-4e91-975f-f2aaa2c5a569')/assignments('c3307ea8-1343-4109-aeb9-92b9a74bf131')/categories",
    "value": [
        {
            "displayName": "test category",
            "id": "74b03ab5-5832-4f99-89f5-d52da13d93f7"
        }
    ]
}
```

### Example 3: Using `$orderby` to get categories

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["77c30802-3e00-4e91-975f-f2aaa2c5a569","c3307ea8-1343-4109-aeb9-92b9a74bf131"],
  "name": "get_assignment_categories_with_orderby"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/77c30802-3e00-4e91-975f-f2aaa2c5a569/assignments/c3307ea8-1343-4109-aeb9-92b9a74bf131/categories?$orderby=id
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-assignment-categories-with-orderby-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-assignment-categories-with-orderby-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-assignment-categories-with-orderby-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-assignment-categories-with-orderby-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-assignment-categories-with-orderby-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-assignment-categories-with-orderby-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-assignment-categories-with-orderby-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationCategory",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('77c30802-3e00-4e91-975f-f2aaa2c5a569')/assignments('c3307ea8-1343-4109-aeb9-92b9a74bf131')/categories",
    "value": [
        {
            "displayName": "test category",
            "id": "74b03ab5-5832-4f99-89f5-d52da13d93f7"
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List categories added to an assignment",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
