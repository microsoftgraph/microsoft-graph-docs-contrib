---
title: "cloudPcProvisioningPolicy: applyConfig"
description: "Update the provisioning policy configuration for a set of Cloud PC devices by their IDs."
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.topic: reference
---

# cloudPcProvisioningPolicy: applyConfig

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the [provisioning policy](../resources/cloudpcprovisioningpolicy.md) configuration for a set of Cloud PC devices by their IDs. This method supports retry and allows you to apply the configuration to a subset of Cloud PCs initially to test.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcprovisioningpolicy_applyconfig" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcprovisioningpolicy-applyconfig-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/provisioningPolicies/applyConfig
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that you can use with this method.

|Parameter|Type|Description|
|:---|:---|:---|
|cloudPcIds|String collection|A collection of Cloud PC IDs.|
|policySettings|cloudPcPolicySettingType|The target property of this apply action. Possible values are: `region`, `singleSignOn`, `unknownFutureValue`. The default value is `region`. This action applies `region` as a value if this parameter is `null`.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "cloudpcprovisioningpolicythis.applyconfig"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/provisioningPolicies/applyConfig
Content-Type: application/json

{
  "cloudPcIds": [
    "52aa2645-36ee-47d2-9eb3-b8fbb17c3fc4",
    "ff117b6c-e3e6-41be-9cae-eb6743249a30"
  ],
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
