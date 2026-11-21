---
title: "Get resourcePolicyAssignment"
description: "Read the properties of a resourcePolicyAssignment object."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# Get resourcePolicyAssignment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties of a [resourcePolicyAssignment](../resources/resourcepolicyassignment.md) object.

The response includes the current ETag in `@odata.etag`. Use this value in the `If-Match` header of an [update](../api/resourcepolicyassignment-update.md) request.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- {"blockType": "permissions", "name": "resourcepolicyassignment_get_permissions"} -->
[!INCLUDE [permissions-table](../includes/permissions/resourcepolicyassignment-get-permissions.md)]

[!INCLUDE [rbac-resource-policy](../includes/rbac-for-apis/rbac-resource-policy-apis-read.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /admin/resourcePolicy/assignments/{resourcePolicyAssignment-uniqueName}
GET /admin/resourcePolicy/deletedItems/assignments/{resourcePolicyAssignment-uniqueName}
```

## Optional query parameters

Use `$expand=assignedPolicy/microsoft.graph.policyDefinitionReference/policyDefinition` to include the referenced [policy definition](../resources/resourcepolicydefinition.md) inline. The `microsoft.graph.policyDefinitionReference` segment casts **assignedPolicy** to the type that declares the **policyDefinition** relationship. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body.

## Response

If successful, this method returns `200 OK` and a [resourcePolicyAssignment](../resources/resourcepolicyassignment.md) object in the response body.

## Examples

### Example 1: Get an assignment

#### Request

<!-- {"blockType": "request", "name": "resourcepolicyassignment_get"} -->
```http
GET https://graph.microsoft.com/beta/admin/resourcePolicy/assignments/tenant_application_baseline
```

#### Response

<!-- {"blockType": "response", "truncated": false, "@odata.type": "microsoft.graph.resourcePolicyAssignment"} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

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
```

### Example 2: Get an assignment with its policy definition

Use `$expand` to retrieve the assignment and its referenced definition in one request.

#### Request

<!-- {"blockType": "request", "name": "resourcepolicyassignment_get_expand_definition"} -->
```http
GET https://graph.microsoft.com/beta/admin/resourcePolicy/assignments/tenant_application_baseline?$expand=assignedPolicy/microsoft.graph.policyDefinitionReference/policyDefinition
```

#### Response

The response is shortened to show the assignment reference and expanded definition.

<!-- {"blockType": "response", "truncated": true, "@odata.type": "microsoft.graph.resourcePolicyAssignment"} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.resourcePolicyAssignment",
  "@odata.etag": "\"c84ce7ba-aa4b-4f10-8f3a-7c65814597c1\"",
  "uniqueName": "tenant_application_baseline",
  "assignedPolicy": {
    "@odata.type": "#microsoft.graph.policyDefinitionReference",
    "policyUniqueName": "require_application_name",
    "version": "1.0.0",
    "policyDefinition": {
      "@odata.type": "#microsoft.graph.resourcePolicyDefinition",
      "uniqueName": "require_application_name",
      "displayName": "Require an application name",
      "description": "Require applications to have a display name",
      "category": "identityAndTenant",
      "version": "1.0.0"
    }
  }
}
```
