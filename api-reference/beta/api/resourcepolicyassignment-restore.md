---
title: "resourcePolicyAssignment: restore"
description: "Restore a deleted resourcePolicyAssignment object during its 30-day retention period."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# resourcePolicyAssignment: restore

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Restore a deleted [resourcePolicyAssignment](../resources/resourcepolicyassignment.md) object during its 30-day retention period.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- {"blockType": "permissions", "name": "resourcepolicyassignment_restore_permissions"} -->
[!INCLUDE [permissions-table](../includes/permissions/resourcepolicyassignment-restore-permissions.md)]

[!INCLUDE [rbac-resource-policy](../includes/rbac-for-apis/rbac-resource-policy-apis-write.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /admin/resourcePolicy/deletedItems/assignments/{resourcePolicyAssignment-uniqueName}/restore
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body.

## Response

If successful, this method returns `200 OK` and a [resourcePolicyAssignment](../resources/resourcepolicyassignment.md) object in the response body.

## Examples

### Request

<!-- {"blockType": "request", "name": "resourcepolicyassignment_restore"} -->
```http
POST https://graph.microsoft.com/beta/admin/resourcePolicy/deletedItems/assignments/tenant_application_baseline/restore
```

### Response

<!-- {"blockType": "response", "truncated": false, "@odata.type": "microsoft.graph.resourcePolicyAssignment"} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.resourcePolicyAssignment",
  "@odata.etag": "\"c84ce7ba-aa4b-4f10-8f3a-7c65814597c3\"",
  "uniqueName": "tenant_application_baseline",
  "isEnabled": true,
  "scope": "/",
  "enforcementMode": "doNotEnforce",
  "createdDateTime": "2026-10-22T12:05:00Z",
  "lastModifiedDateTime": "2026-10-22T12:05:00Z",
  "deletedDateTime": null,
  "assignedPolicy": {
    "@odata.type": "#microsoft.graph.policyDefinitionReference",
    "policyUniqueName": "require_application_name",
    "version": "1.0.0"
  },
  "params": {}
}
```
