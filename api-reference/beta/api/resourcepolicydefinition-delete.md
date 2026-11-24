---
title: "Delete resourcePolicyDefinition"
description: "Delete an active resourcePolicyDefinition object."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# Delete resourcePolicyDefinition

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete an active [resourcePolicyDefinition](../resources/resourcepolicydefinition.md) object.

Deleting an active object moves it to **deletedItems**, where it is retained for 30 days and can be restored. To permanently delete a deleted definition item, see [Permanently delete resourcePolicyDefinition](../api/resourcepolicydeletableroot-delete-definitions.md).

Deleting a definition also deletes its previous versions. Delete all active (non-deleted) assignments that reference the definition before deleting the definition.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- {"blockType": "permissions", "name": "resourcepolicydefinition_delete_permissions"} -->
[!INCLUDE [permissions-table](../includes/permissions/resourcepolicydefinition-delete-permissions.md)]

[!INCLUDE [rbac-resource-policy](../includes/rbac-for-apis/rbac-resource-policy-apis-write.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
DELETE /admin/resourcePolicy/definitions/{resourcePolicyDefinition-uniqueName}
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

<!-- {"blockType": "request", "name": "resourcepolicydefinition_delete"} -->
```http
DELETE https://graph.microsoft.com/beta/admin/resourcePolicy/definitions/require_application_name
```

### Response

<!-- {"blockType": "response", "truncated": false} -->
```http
HTTP/1.1 204 No Content
```
