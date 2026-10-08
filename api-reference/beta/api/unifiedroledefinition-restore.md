---
title: "Restore unifiedRoleDefinition"
description: "Restore a soft-deleted custom role definition to Microsoft Entra directory role management."
author: "simransaxena21"
ms.date: 09/29/2026
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
---

# Restore unifiedRoleDefinition

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Restore a soft-deleted custom [unifiedRoleDefinition](../resources/unifiedroledefinition.md) object to the active role definitions collection for Microsoft Entra directory role management.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "unifiedroledefinition_restore" } -->
[!INCLUDE [permissions-table](../includes/permissions/unifiedroledefinition-restore-permissions.md)]

[!INCLUDE [rbac-role-definition-apis-write](../includes/rbac-for-apis/rbac-role-definition-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /roleManagement/directory/deletedItems/roleDefinitions/{id}/restore
```

## Request headers

| Name | Description |
|:---|:---|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this action.

## Response

If successful, this action returns a `200 OK` response code and a [unifiedRoleDefinition](../resources/unifiedroledefinition.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "restore_deleted_unifiedroledefinition"
}
-->
```http
POST https://graph.microsoft.com/beta/roleManagement/directory/deletedItems/roleDefinitions/a1b2c3d4-5678-90ab-cdef-1234567890ab/restore
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleDefinition"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/directory/roleDefinitions/$entity",
  "id": "a1b2c3d4-5678-90ab-cdef-1234567890ab",
  "description": "Can manage basic aspects of application registrations.",
  "displayName": "Application Support Administrator",
  "isBuiltIn": false,
  "isEnabled": true,
  "rolePermissions": [
    {
      "allowedResourceActions": [
        "microsoft.directory/applications/basic/update"
      ]
    }
  ]
}
```
