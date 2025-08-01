---
title: "cloudpcprovisioningpolicy: schedulePolicyApplyTask"
description: "Set a scheduled auto-reprovision task to do automatic regular apply. `Frontline shared` only. Administrators only."
author: "zhuangzhuang131419"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 01/07/2025
---

# cloudpcprovisioningpolicy: schedulePolicyApplyTask

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Set a scheduled auto-reprovision task to do automatic regular apply. `Frontline shared` only. Administrators only.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcprovisioningpolicy_schedulepolicyapplytask" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcprovisioningpolicy-schedulepolicyapplytask-permissions.md)]

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

In the request body, supply a JSON representation of the [cloudpcpolicyscheduledapplyactiondetail](../resources/cloudpcpolicyscheduledapplyactiondetail.md) object.

The following table shows the properties that can be supplied when you schedule a policy apply task.

|Parameter|Type|Description|
|:---|:---|:---|
|reservePercentage|Int32|For `Frontline shared` only. The percentage of Cloud PCs to keep available. Administrators can set this property to a value from 0 to 99. Cloud PCs are reprovisioned only when there are no active and connected Cloud PC users.|
|cronScheduleExpression|String|Administrators can set a cron expression to define the scheduling rules for automatic regular apply. When auto provision is disabled, `cronScheduleExpression` is set to null, stopping the automatic task scheduling (ex. "0 0 0 20 * *" means schedules a job to run at midnight on the 20th of every month). Read-only.|
|startDateTime|String|Indicates IT Admins can set a start date to define the first scheduler run after this time. If not set, default is current time. There are no time zone information at this time, it needs to be coordinated with `timezone`, for example, "2025-01-01 00:00:00" with "China Standard Time" means the scheduling rule will take effect after Jan 01 2025 00:00:00 GMT+0800 (China Standard Time).|
|endDateTime|String|Indicates IT Admins can set an end date to define the last scheduler run before this time. If not set, the scheduler runs continuously. There are no time zone information at this time, it needs to be coordinated with `timezone`, for example, "2025-02-01 00:00:00" with "China Standard Time" means the scheduling rule will take effect before Feb 01 2025 00:00:00 GMT+0800 (China Standard Time).|
|timezone|cloudPcPolicyTimezone|Indicates IT Admins can set a timezone to define the timezone of `nextRunDateTime`, `startDateTime`, `endDateTime`, default is `gmt`. Possible values are `gmt`, `bit`, `nut`, `hst`, `mit`, `akst`, `pst`, `mst`, `east`, `est`, `ast`, `nst`, `art`, `gst`, `azot`, `cet`, `cat`, `eat`, `get`, `pkt`, `ist`, `bst`, `tha`, `cst`, `jst`, `acst`, `pgt`, `sbt`, `fjt`, `tot`, `lint`, and `unknownFutureValue`.|

## Response

If successful, this method returns a `202 ACCEPTED` response code.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudpcprovisioningpolicy-schedulePolicyApplyTask"
}
-->

``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/provisioningPolicies/b0c2d35f-3385-46c8-a6f5-6c3dfad7708b/schedulePolicyApplyTask

{
  "reservePercentage": 50,
  "cronScheduleExpression": "0 0 0 20 * *",
  "startDateTime": "2025-03-12 00:00:00",
  "endDateTime": null,
  "timezone": "cst"
}

```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/cloudpcprovisioningpolicy-schedulepolicyapplytask-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/cloudpcprovisioningpolicy-schedulepolicyapplytask-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/cloudpcprovisioningpolicy-schedulepolicyapplytask-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/cloudpcprovisioningpolicy-schedulepolicyapplytask-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/cloudpcprovisioningpolicy-schedulepolicyapplytask-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/cloudpcprovisioningpolicy-schedulepolicyapplytask-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
