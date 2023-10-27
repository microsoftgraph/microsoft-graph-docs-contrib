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
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|    PermissionGrantPolicy.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|    PermissionGrantPolicy.ReadWrite.All|

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
|Authorization|Bearer {token}. Required.|

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
