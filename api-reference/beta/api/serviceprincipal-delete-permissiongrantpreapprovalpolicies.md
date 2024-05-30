---
title: "Remove a permissionGrantPreApprovalPolicy from a servicePrincipal"
description: "Remove a permissionGrantPreApprovalPolicy from servicePrincipal."
author: "yuhko-msft"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# Remove a permissionGrantPreApprovalPolicy from a servicePrincipal
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Unassign a [permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md) object from a [servicePrincipal](../resources/serviceprincipal.md).

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "serviceprincipal_delete_permissiongrantpreapprovalpolicies" } -->
[!INCLUDE [permissions-table](../includes/permissions/serviceprincipal-delete-permissiongrantpreapprovalpolicies-permissions.md)]

[!INCLUDE [rbac-permission-grant-preapproval-policy-write](../includes/rbac-for-apis/rbac-permission-grant-preapproval-policy-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /servicePrincipals/{{ servicePrincipal id }}/permissionGrantPreApprovalPolicies/{{ policy id }}/$ref
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
  "name": "serviceprincipal_remove_permissionGrantPreApprovalPoliciesdelete"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/servicePrincipals/37d4ba51-cc54-4762-9ff7-deb5c9438cc7/permissionGrantPreApprovalPolicies/71ba13dc-5947-4e59-bcc5-0ad5c339a853/$ref
```


### Response
<!-- {
  "blockType": "response"
} -->
``` http
HTTP/1.1 204 No Content
```
