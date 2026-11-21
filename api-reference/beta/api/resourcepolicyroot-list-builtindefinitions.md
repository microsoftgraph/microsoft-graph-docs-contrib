---
title: "List built-in resourcePolicyDefinition objects"
description: "Get the read-only, Microsoft-authored resourcePolicyDefinition objects available to the tenant."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# List built-in resourcePolicyDefinition objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the read-only, Microsoft-authored built-in [resourcePolicyDefinition](../resources/resourcepolicydefinition.md) objects available to the tenant.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- {"blockType": "permissions", "name": "resourcepolicyroot_list_builtindefinitions_permissions"} -->
[!INCLUDE [permissions-table](../includes/permissions/resourcepolicyroot-list-builtindefinitions-permissions.md)]

[!INCLUDE [rbac-resource-policy](../includes/rbac-for-apis/rbac-resource-policy-apis-read.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /admin/resourcePolicy/builtInDefinitions
```

## Request headers

|Name|Description|
|:---|:---|
|Accept|`application/json`. Optional. This collection doesn't support `text/plain`; [get an individual built-in definition](../api/resourcepolicydefinition-get.md) to retrieve its Rego text.|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body.

## Response

If successful, this method returns `200 OK` and a collection of [resourcePolicyDefinition](../resources/resourcepolicydefinition.md) objects in the response body.

## Examples

### Request

<!-- {"blockType": "request", "name": "resourcepolicyroot_list_builtindefinitions"} -->
```http
GET https://graph.microsoft.com/beta/admin/resourcePolicy/builtInDefinitions
```

### Response

The response is shortened for readability.

<!-- {"blockType": "response", "truncated": true, "@odata.type": "microsoft.graph.resourcePolicyDefinition", "isCollection": true} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "uniqueName": "microsoft_block_implicit_grant_flow_enablement",
      "displayName": "Block implicit grant flow enablement",
      "category": "zeroTrust",
      "version": "1.0.0"
    }
  ]
}
```
