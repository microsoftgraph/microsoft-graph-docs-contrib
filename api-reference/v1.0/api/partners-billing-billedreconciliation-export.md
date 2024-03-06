---
title: "billedReconciliation: export"
description: "Export the billed invoice reconciliation data."
author: "sourishdeb"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: apiPageType
---

# billedReconciliation: export

Namespace: microsoft.graph.partners.billing

[!INCLUDE [alerts-callout-csp-partner-only](../includes/alerts-callout-csp-partner-only.md)]

Export the billed invoice reconciliation data.

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
POST /reports/partners/billing/reconciliation/billed/export
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
|attributeSet|[microsoft.graph.partners.billing.attributeSet](../resources/partners-billing-attributeset.md)|Attributes that should be exported. Possible values are: `full`, `basic`, `unknownFutureValue`. The default value is `full`. Choose `full` for a complete response or `basic` for a subset of attributes. Optional.|
|invoiceId|String|The invoice ID for which the partner requested to export data. Required.|

## Response

If successful, this method returns a `202 Accepted` response code and a `Location` header that contains the URL to the long-running operation. You can check the status of the long-running operation by making a GET request to this URL that returns one of the following objects in the response body: [microsoft.graph.partners.billing.runningOperation](../resources/partners-billing-runningoperation.md), [microsoft.graph.partners.billing.exportSuccessOperation](../resources/partners-billing-exportsuccessoperation.md), or [microsoft.graph.partners.billing.failedOperation](../resources/partners-billing-failedoperation.md).

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "billedReconciliationthis.export"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/reports/partners/billing/reconciliation/billed/export
Content-Type: application/json

{
  "invoiceId": "G016907411",
  "attributeSet": "full"
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
Location: https://graph.microsoft.com/v1.0/reports/partners/billing/operations/9ab9cb54-d07f-4f52-9ea6-a09d7de52c14
```
