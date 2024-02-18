---
title: "Delete educationModule"
description: "Delete an existing module. Only teachers within a class can delete modules."
author: "v-rmanda"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# Delete educationModule

Namespace: microsoft.graph

Delete an existing [module](../resources/educationmodule.md) in a [class](../resources/educationclass.md). Only teachers within a class can delete modules.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationmodule_delete" } -->

[!INCLUDE [permissions-table](../includes/permissions/educationmodule-delete-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /education/classes/{id}/modules/{id}
```

## Request headers

| Header        | Value                     |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

## Example

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "delete_educationmodule_1"
}-->

```http
DELETE https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/11b30242-8514-4ae4-9577-665015c19bcd
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
