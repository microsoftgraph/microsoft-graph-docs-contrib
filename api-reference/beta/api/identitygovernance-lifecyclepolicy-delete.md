---
title: "Delete lifecyclePolicy"
description: "Delete a lifecyclePolicy object."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Delete lifecyclePolicy

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md) object. This is a soft-delete operation: the policy can be restored with the [restore](identitygovernance-lifecyclepolicy-restore.md) action and appears under the deleted items container until it's permanently removed.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitygovernance_lifecyclepolicy_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-lifecyclepolicy-delete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /identityGovernance/lifecycleWorkflows/lifecyclePolicies/{lifecyclePolicyId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_agentidentitylifecyclepolicy"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/lifecyclePolicies/ba9191ab-e88f-4278-942c-4dcc6a4f05b1
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
