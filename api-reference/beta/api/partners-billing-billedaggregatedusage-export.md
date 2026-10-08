---
title: "billedAggregatedUsage: export"
description: "Export billed aggregated Azure usage data for a specific invoice."
author: "tingh-msft"
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: apiPageType
ms.date: 09/02/2026
---

# billedAggregatedUsage: export

Namespace: microsoft.graph.partners.billing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [alerts-callout-csp-partner-only](../includes/alerts-callout-csp-partner-only.md)]

Export billed aggregated Azure usage data for a specific invoice from a [billedAggregatedUsage](../resources/partners-billing-billedaggregatedusage.md) resource.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "partners_billing_billedaggregatedusage_export" } -->
[!INCLUDE [permissions-table](../includes/permissions/partners-billing-billedaggregatedusage-export-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /reports/partners/billing/aggregatedUsage/billed/export
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that you can use with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|invoiceId|String|The invoice ID for which to export billed aggregated Azure usage data. Required.|

## Response

If successful, this method returns a `202 Accepted` response code and a `Location` header that contains the URL to the long-running operation. You can check the status of the long-running operation by making a GET request to this URL that returns one of the following objects in the response body: [microsoft.graph.partners.billing.runningOperation](../resources/partners-billing-runningoperation.md), [microsoft.graph.partners.billing.exportSuccessOperation](../resources/partners-billing-exportsuccessoperation.md), or [microsoft.graph.partners.billing.failedOperation](../resources/partners-billing-failedoperation.md).

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "billedaggregatedusagethis.export"
}
-->
```http
POST https://graph.microsoft.com/beta/reports/partners/billing/aggregatedUsage/billed/export
Content-Type: application/json

{
  "invoiceId": "G000000"
}
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/beta/reports/partners/billing/operations/9ab9cb54-d07f-4f52-9ea6-a09d7de52c14
```
