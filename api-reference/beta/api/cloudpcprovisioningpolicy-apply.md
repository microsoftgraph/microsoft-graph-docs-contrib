---
title: "cloudPcProvisioningPolicy: apply"
description: "Apply the current provisioning policy configuration to all Cloud PC devices under a specified policy."
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# cloudPcProvisioningPolicy: apply

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Apply the current [provisioning policy](../resources/cloudpcprovisioningpolicy.md) configuration to all Cloud PC devices under a specified policy. Currently, the region is the only policy setting that you can apply.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcprovisioningpolicy_apply" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcprovisioningpolicy-apply-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /deviceManagement/virtualEndpoint/provisioningPolicies/{id}/apply
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameter that you can use with this method.

|Parameter|Type|Description|
|:---|:---|:---|
|policySettings|cloudPcPolicySettingType|The target property of this apply action. Possible values are: `region`, `singleSignOn`, `unknownFutureValue`. The default value is `region`. This action applies `region` as a value if this parameter is `null`.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "apply_cloudpcprovisioningpolicy"
}
-->

``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/provisioningPolicies/1d164206-bf41-4fd2-8424-a3192d39ffff/apply
Content-Type: application/json

{
  "policySettings": "region"
}
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
