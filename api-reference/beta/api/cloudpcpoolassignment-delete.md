---
title: "Delete cloudPcPoolAssignment"
description: "Delete a cloudPcPoolAssignment object."
author: "yityu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 03/23/2026
---

# Delete cloudPcPoolAssignment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [cloudPcPoolAssignment](../resources/cloudpcpoolassignment.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcpoolassignment_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcpoolassignment-delete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
DELETE /deviceManagement/virtualEndpoint/cloudPcPools/{cloudPcPool-id}/assignments/{cloudPcPoolAssignment-id}
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "delete_cloudpcpoolassignment"
}
-->

```http
DELETE https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPcPools/a1b2c3d4-e5f6-7890-abcd-ef1234567890/assignments/c7d8e9f0-a1b2-3456-cdef-890123456789
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

```http
HTTP/1.1 204 No Content
```
