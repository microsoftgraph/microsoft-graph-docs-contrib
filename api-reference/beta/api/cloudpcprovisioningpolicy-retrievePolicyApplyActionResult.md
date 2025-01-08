---
title: "cloudPcPolicyApplyActionResult: retrievePolicyApplyActionResult"
description: "Get the result of the latest apply operation of a provision policy. `Frontline shared` only. Administrators only."
author: "zhuangzhuang131419"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 01/07/2025
---

# cloudPcPolicyApplyActionResult: retrievePolicyApplyActionResult

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the result of the latest apply operation of a provision policy. `Frontline shared` only. Administrators only.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcprovisioningpolicy-retrievePolicyApplyActionResult" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcprovisioningpolicy-retrievePolicyApplyActionResult-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /deviceManagement/virtualEndpoint/provisioningPolicies/{id}/retrievePolicyApplyActionResult
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a status, startDateTime, and finishDateTime in the response body.

|Parameter|Type|Description|
|:---|:---|:---|
|status|string|The status of the applied operation. Possible values are, `succeeded`, `pending`, and `failed`.|
|startDateTime|DateTime|The date and time when the operation was applied.|
|finishDateTime|DateTime|The date and time when the operation finished.|

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "cloudpcprovisioningpolicy-retrievePolicyApplyActionResult"
}
-->

``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/provisioningPolicies/b0c2d35f-3385-46c8-a6f5-6c3dfad7708b/retrievePolicyApplyActionResult
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcPolicyApplyActionResult"
}
-->

``` http
HTTP/1.1 200 OK

{
    "@odata.type": "https://graph.microsoft.com/beta/$metadata#cloudPcPolicyApplyActionResult",
    "status": "succeeded",
    "startDateTime": "2024-10-10T00:00:00",
    "finishDateTime": "2024-10-11T00:00:00"
}
```
