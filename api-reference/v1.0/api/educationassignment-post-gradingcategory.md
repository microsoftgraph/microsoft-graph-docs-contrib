---
title: "Add gradingCategory"
description: "Add a gradingCategory to an assignment."
author: "v-rmanda"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# Add gradingCategory

Namespace: microsoft.graph

Add a [gradingCategory](../resources/educationgradingcategory.md) to an [educationAssignment](../resources/educationassignment.md). Only teachers can perform this operation.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationassignment_post_gradingcategory" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationassignment-post-gradingcategory-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PUT /education/classes/{classId}/assignments/{assignmentId}/gradingCategory/$ref
```

## Request headers
| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json  |

## Request body
In the request body, supply the odata.id of the existing [gradingCategory](../resources/educationgradingcategory.md) object to add to this assignment.

## Response
If successful, this method returns a `204` successful response code with no content in the response body.

## Example

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["37d99af7-cfc5-4e3b-8566-f7d40e4a2070","28992cce-fac0-4950-a836-5a524ded8599"],
  "name": "create_educationcategory_from_educationclass_v1.0"
}-->
```http
PUT https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/28992cce-fac0-4950-a836-5a524ded8599/gradingCategory/$ref
Content-type: application/json

{
    "@odata.id": "https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings/gradingCategories/905b49a5-1639-49ab-9fbe-6a035def5ba3"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationcategory-from-educationclass-v10-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbd-d5aa-4681-8e31-b001d5168d79
2023-04-19 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Add a gradingCategory to an assignment",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
