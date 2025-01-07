---
title: "cloudPcProvisioningPolicy: retrievePolicyApplySchedule"
description: "Get the scheduled apply rule set on the policy. `Frontline shared` only. Administrators only."
author: "zhuangzhuang131419"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 01/07/2025
---

# cloudPcProvisioningPolicy: retrievePolicyApplySchedule

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the scheduled apply rule set on the policy. `Frontline shared` only. Administrators only.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcprovisioningpolicy-retrievePolicyApplySchedule" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcprovisioningpolicy-apply-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /deviceManagement/virtualEndpoint/provisioningPolicies/{id}/retrievePolicyApplySchedule
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [cloudpcpolicyscheduledapplyactiondetail](../resources/cloudpcpolicyscheduledapplyactiondetail.md) in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "cloudpcprovisioningpolicy-retrievePolicyApplySchedule"
}
-->

``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/provisioningPolicies/b0c2d35f-3385-46c8-a6f5-6c3dfad7708b/retrievePolicyApplySchedule
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcPolicyScheduledApplyActionDetail"
}
-->

``` http
HTTP/1.1 200 OK

{
    "@odata.type": "https://graph.microsoft.com/beta/$metadata#cloudPcPolicyScheduledApplyActionDetail",
    "reservePercentage": 50,
    "cronScheduleExpression": "0 0 0 20 * *"
}
```
