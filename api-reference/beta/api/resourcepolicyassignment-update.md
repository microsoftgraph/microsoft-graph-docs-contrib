---
title: "Update resourcePolicyAssignment"
description: "Update a resourcePolicyAssignment object."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# Update resourcePolicyAssignment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update a [resourcePolicyAssignment](../resources/resourcepolicyassignment.md) object.

Retrieve the current assignment and supply its `@odata.etag` value in the `If-Match` header. A stale ETag causes `412 Precondition Failed`; retrieve the latest assignment before retrying the update.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- {"blockType": "permissions", "name": "resourcepolicyassignment_update_permissions"} -->
[!INCLUDE [permissions-table](../includes/permissions/resourcepolicyassignment-update-permissions.md)]

[!INCLUDE [rbac-resource-policy](../includes/rbac-for-apis/rbac-resource-policy-apis-write.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
PATCH /admin/resourcePolicy/assignments/{resourcePolicyAssignment-uniqueName}
```

## Request headers

| Name          | Description                                                                                               |
|:--------------|:----------------------------------------------------------------------------------------------------------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
| Content-Type  | application/json. Required.                                                                               |
| If-Match      | Required. The current assignment's ETag, returned in `@odata.etag`.                                       |

## Request body

In the request body, supply the following properties.

|Property|Type|Description|
|:---|:---|:---|
|assignedPolicy|[assignedPolicyReference](../resources/assignedpolicyreference.md)|A **policyDefinitionReference** with `@odata.type`, **policyUniqueName**, and **version**.|
|enforcementMode|[enforcementMode](../resources/enums.md#enforcementmode-values)|Controls whether the effect is applied. The default is `doNotEnforce`. The possible values are: `doNotEnforce`, `enforce`, `unknownFutureValue`.|
|isEnabled|Boolean|Whether the assignment is evaluated. The default is `true`.|
|params|[Json](../resources/json.md)|The parameter values validated against the referenced definition's **paramsSchema**.|
|scope|String|The assignment scope. Currently only `/` (tenant-wide) is supported and is the default.|

## Response

If successful, this method returns `204 No Content` with no response body.

## Examples

### Request

<!-- {"blockType": "request", "name": "resourcepolicyassignment_update"} -->
```http
PATCH https://graph.microsoft.com/beta/admin/resourcePolicy/assignments/tenant_application_baseline
Content-Type: application/json
If-Match: "c84ce7ba-aa4b-4f10-8f3a-7c65814597c1"

{
  "isEnabled": true,
  "enforcementMode": "enforce"
}
```

### Response

<!-- {"blockType": "response", "truncated": false} -->
```http
HTTP/1.1 204 No Content
```
