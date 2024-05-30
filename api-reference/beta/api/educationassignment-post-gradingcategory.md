---
title: "Add gradingCategory"
description: "Add a gradingCategory to an assignment."
author: "AshwaniBansal1"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: apiPageType
---

# Add gradingCategory

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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
If successful, this method returns a `204 No Content` response code with no content in the response body.

## Example

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["37d99af7-cfc5-4e3b-8566-f7d40e4a2070","452184ea-a358-4a07-92b4-dce44601a612"],
  "name": "create_educationcategory_from_educationclass"
}-->
```http
PUT https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/452184ea-a358-4a07-92b4-dce44601a612/gradingCategory/$ref
Content-type: application/json

{
    "@odata.id": "https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings/gradingCategories/fb4a4009-3cc4-4dea-9991-e0a0763659e3"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationcategory-from-educationclass-javascript-snippets.md)]
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
