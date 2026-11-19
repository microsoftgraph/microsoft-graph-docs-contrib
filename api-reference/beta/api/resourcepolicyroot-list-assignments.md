---
title: "List resourcePolicyAssignment objects"
description: "Get the resourcePolicyAssignment objects in the tenant."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# List resourcePolicyAssignment objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [resourcePolicyAssignment](../resources/resourcepolicyassignment.md) objects in the tenant.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- {"blockType": "permissions", "name": "resourcepolicyroot_list_assignments_permissions"} -->
[!INCLUDE [permissions-table](../includes/permissions/resourcepolicyroot-list-assignments-permissions.md)]

[!INCLUDE [rbac-resource-policy](../includes/rbac-for-apis/rbac-resource-policy-apis-read.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /admin/resourcePolicy/assignments
```

## Optional query parameters

This method supports `$filter` on **isEnabled** (`eq`), **assignedPolicy/microsoft.graph.policyDefinitionReference/policyUniqueName** (`eq`), and **createdDateTime** and **lastModifiedDateTime** (`le`, `gt`). Cast **assignedPolicy** to [policyDefinitionReference](../resources/policydefinitionreference.md) to filter by **policyUniqueName**, which isn't declared on the [assignedPolicyReference](../resources/assignedpolicyreference.md) base type. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body.

## Response

If successful, this method returns `200 OK` and a collection of [resourcePolicyAssignment](../resources/resourcepolicyassignment.md) objects in the response body.

## Examples

### Example 1: List assignments

#### Request

<!-- {"blockType": "request", "name": "resourcepolicyroot_list_assignments"} -->
```http
GET https://graph.microsoft.com/beta/admin/resourcePolicy/assignments
```

#### Response

<!-- {"blockType": "response", "truncated": false, "@odata.type": "microsoft.graph.resourcePolicyAssignment", "isCollection": true} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.resourcePolicyAssignment",
      "@odata.etag": "\"c84ce7ba-aa4b-4f10-8f3a-7c65814597c1\"",
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
  ]
}
```

### Example 2: List assignments for a policy definition

Filter by **policyUniqueName** to retrieve assignments that reference `require_application_name`, regardless of their assigned version.

#### Request

<!-- {"blockType": "request", "name": "resourcepolicyroot_list_assignments_filter_policyuniquename"} -->
```http
GET https://graph.microsoft.com/beta/admin/resourcePolicy/assignments?$filter=assignedPolicy/microsoft.graph.policyDefinitionReference/policyUniqueName eq 'require_application_name'
```

#### Response

<!-- {"blockType": "response", "truncated": false, "@odata.type": "microsoft.graph.resourcePolicyAssignment", "isCollection": true} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.resourcePolicyAssignment",
      "@odata.etag": "\"c84ce7ba-aa4b-4f10-8f3a-7c65814597c1\"",
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
  ]
}
```
