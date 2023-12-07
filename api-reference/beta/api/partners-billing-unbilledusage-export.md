---
title: "unbilledUsage: export"
description: "Export the unbilled Azure usage data for a specific billing period and a given currency"
author: "abhishek-singh-ms"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: apiPageType
---

# unbilledUsage: export

Namespace: microsoft.graph.partners.billing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Export the unbilled Azure usage data for a specific billing period and a given currency.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "partners-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/partners-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /reports/partners/billing/usage/unbilled/export
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that you can use with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|attributeSet|microsoft.graph.partners.billing.attributeSet|Attributes that should be exported. Supported values are: `full`and `basic`. Default value is `full`. Choose `full` for a complete response or `basic` for a subset of attributes. Optional.|
|billingPeriod|microsoft.graph.partners.billing.billingPeriod|Supported values are: `current`and `last`. Choose `current` for current billing period and `last` for last billing period. Required.|
|currencyCode|String|Partner billing currency code. Required.|

## Response

If successful, this method returns a `202 Accepted` response code and a **Location** header that contains the URL to the long-running operation. You can check the status of the long-running operation by making a GET request to this URL that returns one of the following objects in the response body: [microsoft.graph.partners.billing.runningOperation](../resources/partners-billing-runningoperation.md), [microsoft.graph.partners.billing.exportSuccessOperation](../resources/partners-billing-exportsuccessoperation.md), [microsoft.graph.partners.billing.failedOperation](../resources/partners-billing-failedoperation.md).

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "unbilledusagethis.export"
}
-->
``` http
POST https://graph.microsoft.com/beta/reports/partners/billing/usage/unbilled/export
Content-Type: application/json

{
  "currencyCode" : "USD",
  "attributeSet" : "full",
  "billingPeriod" : "current"
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
HTTP/1.1 202 Accepted
Content-Type: application/json
Location: https://graph.microsoft.com/beta/reports/partners/billing/operations/9ab9cb54-d07f-4f52-9ea6-a09d7de52c14
```
