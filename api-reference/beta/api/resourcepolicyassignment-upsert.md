---
title: "Upsert resourcePolicyAssignment"
description: "Create a resourcePolicyAssignment if it doesn't exist, or update it if it exists."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# Upsert resourcePolicyAssignment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [resourcePolicyAssignment](../resources/resourcepolicyassignment.md) if it doesn't exist, or update it if it exists.

The unique name in the request URL identifies the object. Supply the fields needed to create the object if it doesn't exist. An existing object is updated with a `204 No Content` response.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- {"blockType": "permissions", "name": "resourcepolicyassignment_upsert_permissions"} -->
[!INCLUDE [permissions-table](../includes/permissions/resourcepolicyassignment-upsert-permissions.md)]

[!INCLUDE [rbac-resource-policy](../includes/rbac-for-apis/rbac-resource-policy-apis-write.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
PATCH /admin/resourcePolicy/assignments/{resourcePolicyAssignment-uniqueName}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|
|Prefer|`create-if-missing`. Required to create an object when the unique name doesn't exist.|

## Request body

In the request body, supply the following properties.

|Property|Type|Description|
|:---|:---|:---|
|assignedPolicy|[assignedPolicyReference](../resources/assignedpolicyreference.md)|Required when creating an assignment. A **policyDefinitionReference** with `@odata.type`, **policyUniqueName**, and **version**.|
|enforcementMode|[enforcementMode](../resources/enums.md#enforcementmode-values)|Controls whether the effect is applied. The default is `doNotEnforce`. The possible values are: `doNotEnforce`, `enforce`, `unknownFutureValue`.|
|isEnabled|Boolean|Whether the assignment is evaluated. The default is `true`.|
|params|[Json](../resources/json.md)|The parameter values validated against the referenced definition's **paramsSchema**.|
|scope|String|The assignment scope. Currently only `/` (tenant-wide) is supported and is the default.|

## Response

If the object is created, this method returns `201 Created` and a [resourcePolicyAssignment](../resources/resourcepolicyassignment.md) object. If the object is updated, it returns `204 No Content` with no response body.

## Examples

### Example 1: Create an object that doesn't exist

#### Request

<!-- {"blockType": "request", "name": "resourcepolicyassignment_upsert"} -->
```http
PATCH https://graph.microsoft.com/beta/admin/resourcePolicy/assignments/tenant_application_baseline
Content-Type: application/json
Prefer: create-if-missing

{
  "isEnabled": true,
  "scope": "/",
  "enforcementMode": "doNotEnforce",
  "assignedPolicy": {
    "@odata.type": "#microsoft.graph.policyDefinitionReference",
    "policyUniqueName": "require_application_name",
    "version": "1.0.0"
  }
}
```

#### Response

<!-- {"blockType": "response", "truncated": false, "@odata.type": "microsoft.graph.resourcePolicyAssignment"} -->
```http
HTTP/1.1 201 Created
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

### Example 2: Update an existing object

#### Request

<!-- {"blockType": "request", "name": "resourcepolicyassignment_upsert_existing"} -->
```http
PATCH https://graph.microsoft.com/beta/admin/resourcePolicy/assignments/tenant_application_baseline
Content-Type: application/json
Prefer: create-if-missing

{
  "isEnabled": true,
  "scope": "/",
  "enforcementMode": "doNotEnforce",
  "assignedPolicy": {
    "@odata.type": "#microsoft.graph.policyDefinitionReference",
    "policyUniqueName": "require_application_name",
    "version": "1.0.0"
  }
}
```

#### Response

<!-- {"blockType": "response", "truncated": false} -->
```http
HTTP/1.1 204 No Content
```
