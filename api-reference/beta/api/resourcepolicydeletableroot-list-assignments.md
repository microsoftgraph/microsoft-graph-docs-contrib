---
title: "List deleted resourcePolicyAssignment objects"
description: "Get the deleted resourcePolicyAssignment objects retained in the tenant."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# List deleted resourcePolicyAssignment objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the deleted [resourcePolicyAssignment](../resources/resourcepolicyassignment.md) objects retained in the tenant.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- {"blockType": "permissions", "name": "resourcepolicydeletableroot_list_assignments_permissions"} -->
[!INCLUDE [permissions-table](../includes/permissions/resourcepolicydeletableroot-list-assignments-permissions.md)]

[!INCLUDE [rbac-resource-policy](../includes/rbac-for-apis/rbac-resource-policy-apis-read.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /admin/resourcePolicy/deletedItems/assignments
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body.

## Response

If successful, this method returns `200 OK` and a collection of [resourcePolicyAssignment](../resources/resourcepolicyassignment.md) objects in the response body.

## Examples

### Request

<!-- {"blockType": "request", "name": "resourcepolicydeletableroot_list_assignments"} -->
```http
GET https://graph.microsoft.com/beta/admin/resourcePolicy/deletedItems/assignments
```

### Response

<!-- {"blockType": "response", "truncated": false, "@odata.type": "microsoft.graph.resourcePolicyAssignment", "isCollection": true} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.resourcePolicyAssignment",
      "@odata.etag": "\"c84ce7ba-aa4b-4f10-8f3a-7c65814597c2\"",
      "uniqueName": "tenant_application_baseline",
      "isEnabled": true,
      "scope": "/",
      "enforcementMode": "doNotEnforce",
      "createdDateTime": "2026-10-22T12:05:00Z",
      "lastModifiedDateTime": "2026-10-22T12:05:00Z",
      "deletedDateTime": "2026-10-22T12:30:00Z",
      "assignedPolicy": {
        "@odata.type": "#microsoft.graph.policyDefinitionReference",
        "policyUniqueName": "require_application_name",
        "version": "1.0.0"
      },
      "params": {}
    }
  ]
}
```
