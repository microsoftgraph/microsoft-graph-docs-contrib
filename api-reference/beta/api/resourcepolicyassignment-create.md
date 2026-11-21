---
title: "Create resourcePolicyAssignment"
description: "Create a new resourcePolicyAssignment object."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# Create resourcePolicyAssignment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [resourcePolicyAssignment](../resources/resourcepolicyassignment.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- {"blockType": "permissions", "name": "resourcepolicyassignment_create_permissions"} -->
[!INCLUDE [permissions-table](../includes/permissions/resourcepolicyassignment-create-permissions.md)]

[!INCLUDE [rbac-resource-policy](../includes/rbac-for-apis/rbac-resource-policy-apis-write.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /admin/resourcePolicy/assignments
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply the following properties.

|Property|Type|Description|
|:---|:---|:---|
|assignedPolicy|[assignedPolicyReference](../resources/assignedpolicyreference.md)|Required. A **policyDefinitionReference** with `@odata.type`, **policyUniqueName**, and **version**.|
|enforcementMode|[enforcementMode](../resources/enums.md#enforcementmode-values)|Controls whether the effect is applied. The default is `doNotEnforce`. The possible values are: `doNotEnforce`, `enforce`, `unknownFutureValue`.|
|isEnabled|Boolean|Whether the assignment is evaluated. The default is `true`.|
|params|[Json](../resources/json.md)|The parameter values validated against the referenced definition's **paramsSchema**.|
|scope|String|The assignment scope. Currently only `/` (tenant-wide) is supported and is the default.|
|uniqueName|String|Required. The immutable assignment name. Must start with an ASCII letter, contain only ASCII letters, digits, or underscores, and have at most 128 characters. The prefixes `microsoft` and `ms` (including `msft`) are reserved, regardless of case. This is separate from **assignedPolicy.policyUniqueName**, which identifies the definition.|

## Response

If successful, this method returns `201 Created` and a [resourcePolicyAssignment](../resources/resourcepolicyassignment.md) object in the response body.

## Examples

### Request

<!-- {"blockType": "request", "name": "resourcepolicyassignment_create"} -->
```http
POST https://graph.microsoft.com/beta/admin/resourcePolicy/assignments
Content-Type: application/json

{
  "uniqueName": "tenant_application_baseline",
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

### Response

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
