---
title: "Remove educationCategory"
description: "Remove an existing educationCategory from this educationAssignment."
ms.localizationpriority: medium
author: "dipakboyed"
ms.prod: "education"
ms.collection: "education"
doc_type: apiPageType
---

# Remove educationCategory

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove an [educationCategory](../resources/educationcategory.md) from an [educationAssignment](../resources/educationassignment.md). Only teachers can perform this operation.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationassignment_remove_category" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationassignment-remove-category-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /education/classes/{id}/assignments/{id}/categories/{id}/$ref
```
## Request headers
| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response
If successful, this method returns a `204 No Content` response code.

## Example
### Request
The following example shows a request.
<!-- {
  "blockType": "ignored",
  "name": "add_educationcategory_to_educationassignment",
  "sampleKeys": ["11021", "19002", "ec98f158-341d-4fea-9f8c-14a250d489ac"]
}-->
```http
DELETE https://graph.microsoft.com/beta/education/classes/11021/assignments/19002/categories/ec98f158-341d-4fea-9f8c-14a250d489ac/$ref
```

### Response
The following example shows the response.

<!-- {
  "blockType": "ignored",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationAssignmentResource"
} -->
```http
HTTP/1.1 204 No Content
```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Remove an educationCategory from an educationAssignment",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


