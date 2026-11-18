---
title: "Permanently delete resourcePolicyDefinition"
description: "Permanently delete a deleted resourcePolicyDefinition object."
author: "dkershaw10"
ms.date: 10/23/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# Permanently delete resourcePolicyDefinition

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Permanently delete a deleted [resourcePolicyDefinition](../resources/resourcepolicydefinition.md) object from [deleted items](../resources/resourcepolicydeletableroot.md).

This operation is irreversible. The definition and its previous versions can't be restored afterward.

To delete an active definition, see [Delete resourcePolicyDefinition](../api/resourcepolicydefinition-delete.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- {"blockType": "permissions", "name": "resourcepolicydeletableroot_delete_definitions_permissions"} -->
[!INCLUDE [permissions-table](../includes/permissions/resourcepolicydeletableroot-delete-definitions-permissions.md)]

[!INCLUDE [rbac-resource-policy](../includes/rbac-for-apis/rbac-resource-policy-apis-write.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
DELETE /admin/resourcePolicy/deletedItems/definitions/{resourcePolicyDefinition-uniqueName}
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

<!-- {"blockType": "request", "name": "resourcepolicydefinition_delete_permanent"} -->
```http
DELETE https://graph.microsoft.com/beta/admin/resourcePolicy/deletedItems/definitions/require_application_name
```

### Response

<!-- {"blockType": "response", "truncated": false} -->
```http
HTTP/1.1 204 No Content
```
