---
title: "Assign a permissionGrantPreApprovalPolicy to a servicePrincipal"
description: "Assign a permissionGrantPreApprovalPolicy to a servicePrincipal."
author: "yuhko-msft"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: apiPageType
---

# Assign a permissionGrantPreApprovalPolicy to a servicePrincipal
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Assign a [permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md) object to [servicePrincipal](../resources/serviceprincipal.md).

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
POST /servicePrincipals/{id}/permissionGrantPreApprovalPolicies/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON object that contains an **@odata.id** parameter with a reference to a single [permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md) object.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "serviceprincipal_assign_permissionGrantPreApprovalPolicies"
}
-->
``` http
POST https://graph.microsoft.com/beta/servicePrincipals/37d4ba51-cc54-4762-9ff7-deb5c9438cc7/permissionGrantPreApprovalPolicies/$ref
Content-Type: application/json

{
    "@odata.id": "https://graph.microsoft.com/beta/policies/permissionGrantPreApprovalPolicies/71ba13dc-5947-4e59-bcc5-0ad5c339a853"
}
```


### Response
<!-- {
  "blockType": "response"
} -->
``` http
HTTP/1.1 204 No Content
```
