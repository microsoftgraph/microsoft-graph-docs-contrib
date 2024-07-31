---
title: "Delete educationRubric"
description: "Delete an educationRubric object."
ms.localizationpriority: medium
author: "dipakboyed"
ms.subservice: "education"
doc_type: "apiPageType"
---

# Delete educationRubric

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete an [educationRubric](../resources/educationrubric.md) object. Only teachers can perform this operation.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationrubric_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationrubric-delete-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /education/me/rubrics/{id}
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "delete_educationrubric"
}-->

```http
DELETE https://graph.microsoft.com/beta/education/me/rubrics/767f2532-1fdd-41a5-85de-1f641e7bb9fc
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Delete educationRubric",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


