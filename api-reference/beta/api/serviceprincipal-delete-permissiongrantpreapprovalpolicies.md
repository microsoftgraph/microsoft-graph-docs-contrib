---
title: "Remove a permissionGrantPreApprovalPolicy from a servicePrincipal"
description: "Remove a permissionGrantPreApprovalPolicy from servicePrincipal."
author: "yuhko-msft"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: apiPageType
---

# Remove a permissionGrantPreApprovalPolicy from a servicePrincipal
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Unassign a [permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md) object from a [servicePrincipal](../resources/serviceprincipal.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Application.ReadWrite.All and Policy.ReadWrite.PermissionGrant|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Application.ReadWrite.All and Policy.ReadWrite.PermissionGrant|

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
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.



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
