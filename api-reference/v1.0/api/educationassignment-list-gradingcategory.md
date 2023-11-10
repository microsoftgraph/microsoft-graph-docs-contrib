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

[!INCLUDE [v1.0-disclaimer](../../includes/v1.0-disclaimer.md)]

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
<!-- {
  "blockType": "request",
  "name": "list_educationgradingcategory"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings/gradingCategories
```

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/$entity",
    "submissionAnimationDisabled": false,
    "gradingCategories@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/gradingCategories",
    "gradingCategories": [
        {
            "id": "7625dccd-35e0-4014-a831-06f1b768ec6d",
            "displayName": "Lab Theory",
            "percentageWeight": 15
        },
        {
            "id": "92e6b56a-c85c-4928-a18f-62b7b3bd4319",
            "displayName": "Lab Practice",
            "percentageWeight": 30
        },
        {
            "id": "4a19d24d-779c-4ee2-93c3-7b7cf815ed94",
            "displayName": "Attendance",
            "percentageWeight": 30
        },
        {
            "id": "948f5c3f-12af-47ec-b2a9-6ea225811f0d",
            "displayName": "Assesstment",
            "percentageWeight": 25
        }
    ]
}
```
