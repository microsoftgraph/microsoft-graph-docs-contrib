---
title: "Delete permissionGrantPreApprovalPolicy"
description: "Delete a permissionGrantPreApprovalPolicy object."
author: "yuhko-msft"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: apiPageType
---

# Delete permissionGrantPreApprovalPolicy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "permissiongrantpreapprovalpolicy_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/permissiongrantpreapprovalpolicy-delete-permissions.md)]

[!INCLUDE [rbac-permission-grant-preapproval-policy-write](../includes/rbac-for-apis/rbac-permission-grant-preapproval-policy-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /policies/permissionGrantPreApprovalPolicies/{id}
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
<!-- {
  "blockType": "request",
  "name": "delete_permissiongrantpreapprovalpolicy"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/policies/permissionGrantPreApprovalPolicies/{id}
```


### Response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
