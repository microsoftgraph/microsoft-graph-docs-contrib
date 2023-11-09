---
title: "List educationGradingCategories"
description: "Get a list of the educationGradingCategory objects and their properties."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# List educationGradingCategories
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [educationGradingCategory](../resources/educationgradingcategory.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationassignment_list_gradingcategory" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationassignment-list-gradingcategory-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /education/classes/{educationClassId}/assignmentSettings/gradingCategories
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [educationGradingCategory](../resources/educationgradingcategory.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_educationgradingcategory"
}
-->
``` http
GET https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings/gradingCategories
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-educationgradingcategory-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-educationgradingcategory-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-educationgradingcategory-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-educationgradingcategory-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-educationgradingcategory-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-educationgradingcategory-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-educationgradingcategory-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-educationgradingcategory-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationGradingCategory"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://canary.graph.microsoft.com/testprodv1.0eduasg_grading_categories_v1/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<37d99af7-cfc5-4e3b-8566-f7d40e4a2070>')/assignmentSettings?$select=submissionAnimationDisabled",
    "submissionAnimationDisabled": true,
    "gradingCategories@odata.context": "https://canary.graph.microsoft.com/testprodv1.0eduasg_grading_categories_v1/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/gradingCategories",
    "gradingCategories": [
        {
            "id": "03bd9196-ce2e-41bd-902f-df9ae02de4db",
            "displayName": "Lab",
            "percentageWeight": 20
        },
        {
            "id": "109e5d73-3ef7-42a5-88d8-7e30cdb85f06",
            "displayName": "Homework",
            "percentageWeight": 50
        },
        {
            "id": "a5ca6dda-f220-43ca-81e4-02396b99f398",
            "displayName": "Test",
            "percentageWeight": 30
        }
    ]

}

