---
title: "cloudPcProvisioningPolicy: retry"
description: "Retry the provisioning operation for Cloud PCs that used the current `frontline shared` policy and failed to apply the provisioning policy. "
author: "ChyouChyou"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 12/16/2025
---

# cloudPcProvisioningPolicy: retry

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retry the provisioning operation for Cloud PCs that used the current policy and failed to apply the [provisioning policy](../resources/cloudpcprovisioningpolicy.md).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcprovisioningpolicy_retry" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcprovisioningpolicy-retry-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/provisioningPolicies/{provisioningPolicyId}/retry
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply an empty JSON object `{}` for this method.

## Response

If successful, this method returns a `202 No Accepted` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "cloudpcprovisioningpolicythis.retry"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/provisioningPolicies/52aa2645-36ee-47d2-9eb3-b8fbb17c3fc4/retry
Content-Type: application/json

{
}
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
```
