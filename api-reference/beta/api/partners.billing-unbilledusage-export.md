---
title: "unbilledUsage: export"
description: "Export unbilled usage data"
author: "abhishek-singh-ms"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: apiPageType
---

# unbilledUsage: export
Namespace: microsoft.graph.partners.billing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Export unbilled usage data.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "partners-permissions"
}
-->
[!INCLUDE [permissions-table](permissions/partners-permissions.md)]

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

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|currencyCode|String|Partner billing currency code. Required.|
|billingPeriod|microsoft.graph.partners.billing.billingPeriod|Supported values are: `current`and `last`. Choose `current` for current billing period and `last` for last billing period. Required.|
|attributeSet|microsoft.graph.partners.billing.attributeSet|Supported values are: `full`and `basic`. Default value is `full`. Choose `full` for a complete response or `basic` for a subset of attributes. Optional.|



## Response

If successful, this action returns a `202 Accepted` response code and a [operation](../resources/partners.billing.operation.md) in the **Location** header.

## Examples

### Request
The following is an example of a request.
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
The following is an example of the response
>**Note:** The response does not have body.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.partners.billing.operation"
}
-->
``` http
HTTP/1.1 202 Accepted
Content-Type: application/json
Location: https://graph.microsoft.com/beta/reports/partners/billing/operations/
9ab9cb54-d07f-4f52-9ea6-a09d7de52c14


```

