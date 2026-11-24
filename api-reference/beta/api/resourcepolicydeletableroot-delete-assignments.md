---
title: "Permanently delete resourcePolicyAssignment"
description: "Permanently delete a deleted resourcePolicyAssignment object."
author: "dkershaw10"
ms.date: 10/23/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# Permanently delete resourcePolicyAssignment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Permanently delete a deleted [resourcePolicyAssignment](../resources/resourcepolicyassignment.md) object from [deleted items](../resources/resourcepolicydeletableroot.md).

This operation is irreversible. The assignment can't be restored afterward.

To delete an active assignment, see [Delete resourcePolicyAssignment](../api/resourcepolicyassignment-delete.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- {"blockType": "permissions", "name": "resourcepolicydeletableroot_delete_assignments_permissions"} -->
[!INCLUDE [permissions-table](../includes/permissions/resourcepolicydeletableroot-delete-assignments-permissions.md)]

[!INCLUDE [rbac-resource-policy](../includes/rbac-for-apis/rbac-resource-policy-apis-write.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
DELETE /admin/resourcePolicy/deletedItems/assignments/{resourcePolicyAssignment-uniqueName}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body.

## Response

If successful, this method returns `204 No Content` with no response body.

## Examples

### Request

<!-- {"blockType": "request", "name": "resourcepolicyassignment_delete_permanent"} -->
```http
DELETE https://graph.microsoft.com/beta/admin/resourcePolicy/deletedItems/assignments/tenant_application_baseline
```

### Response

<!-- {"blockType": "response", "truncated": false} -->
```http
HTTP/1.1 204 No Content
```
