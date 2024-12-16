---
title: "cloudPcProvisioningPolicy: schedulePolicyApplyTask"
description: "Set a scheduled auto-reprovision task to do automatic regular apply. `Frontline shared` only. Administrators only."
author: "zhuangzhuang131419"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# cloudPcProvisioningPolicy: schedulePolicyApplyTask

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Set a scheduled auto-reprovision task to do automatic regular apply. `Frontline shared` only. Administrators only.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcprovisioningpolicy-schedulePolicyApplyTask" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcprovisioningpolicy-apply-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /deviceManagement/virtualEndpoint/provisioningPolicies/{id}/schedulePolicyApplyTask
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [cloudpcpolicyscheduledapplyactiondetail](../../beta/resources/cloudpcpolicyscheduledapplyactiondetail.md) object.

|Parameter|Type|Description|
|:---|:---|:---|
|reservePercentage|Int32|For `Frontline shared` only. The percentage of Cloud PCs to keep available. Administrators can set this property to a value from 0 to 99. Cloud PCs are reprovisioned only when there are no active and connected Cloud PC users.|
|cronScheduleExpression|String|Administrators can set a cron expression to define the scheduling rules for automatic regular apply. When auto provision is disabled, `cronScheduleExpression` is set to null, stopping the automatic task scheduling (ex. "0 0 0 20 * *" means schedules a job to run at midnight on the 20th of every month). Read-only.|

## Response

If successful, this method returns a `202 ACCEPTED` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "cloudpcprovisioningpolicy-schedulePolicyApplyTask"
}
-->

``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/provisioningPolicies/b0c2d35f-3385-46c8-a6f5-6c3dfad7708b/schedulePolicyApplyTask

{
  "reservePercentage": 50,
  "cronScheduleExpression": "0 0 0 20 * *"
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
