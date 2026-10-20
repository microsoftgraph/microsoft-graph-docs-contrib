---
title: "Delete roleManagementCustomCalloutExtension"
description: "Delete a roleManagementCustomCalloutExtension object."
author: "amanswaika"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 09/16/2026
---

# Delete roleManagementCustomCalloutExtension

Namespace: microsoft.graph

Delete a roleManagementCustomCalloutExtension object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "rolemanagementcustomcalloutextension_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/rolemanagementcustomcalloutextension-delete-permissions.md)]

[!INCLUDE [rbac-pim-custom-extensions-apis](../includes/rbac-for-apis/rbac-pim-custom-extensions-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
DELETE /identityGovernance/privilegedAccess/customExtensions/{roleManagementCustomCalloutExtensionId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

## Example

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "delete_rolemanagementcustomcalloutextension"
}
-->
```http
DELETE https://graph.microsoft.com/v1.0/identityGovernance/privilegedAccess/customExtensions/a1b2c3d4-e5f6-4a5b-8c9d-0e1f2a3b4c5d
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": false
}
-->
```http
HTTP/1.1 204 No Content
```
