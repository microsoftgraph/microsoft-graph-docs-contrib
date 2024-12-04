---
title: "cloudPcProvisioningPolicySchedule: get"
description: "For `Frontline shared` only. Administrators can get the the scheduled apply rule set on the policy."
author: "zhuangzhuang131419"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# cloudPcProvisioningPolicySchedule: get

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

For `Frontline shared` only. Administrators can get the the scheduled apply rule set on the policy.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcprovisioningpolicyschedule_get" } -->
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

If successful, this method returns a `200 OK` response code and a reservePercentage and cronScheduleExpression in the response body.

|Parameter|Type|Description|
|:---|:---|:---|
|reservePercentage|Int32|For `Frontline shared` only. The percentage of Cloud PCs to keep available. Administrators can set this property to a value from 0 to 99. Cloud PCs are reprovisioned only when there are no active and connected Cloud PC users.|
|cronScheduleExpression|String|Administrators can set a cron expression to define the scheduling rules for automatic regular apply. When auto provision is disabled, `cronScheduleExpression` will be set to null, stopping the automatic task scheduling (ex. "0 0 0 20 * *" means schedules a job to run at midnight on the 20th of every month). Read-Only.|

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudpcprovisioningpolicyschedule_get"
}
-->

``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/provisioningPolicies/b0c2d35f-3385-46c8-a6f5-6c3dfad7708b/retrievePolicyApplySchedule
```

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 200 OK

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#cloudPcPolicyScheduledApplyActionDetail",
    "reservePercentage": 50,
    "cronScheduleExpression": "0 0 0 20 * *"
}
```
