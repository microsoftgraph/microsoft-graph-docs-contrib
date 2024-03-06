---
title: "billedUsage: export"
description: "Export the billed Azure usage data."
author: "abhishek-singh-ms"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: apiPageType
---

# billedUsage: export

Namespace: microsoft.graph.partners.billing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [alerts-callout-csp-partner-only](../includes/alerts-callout-csp-partner-only.md)]

Export the billed Azure usage data.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

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
POST /reports/partners/billing/usage/billed/export
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
|attributeSet|[microsoft.graph.partners.billing.attributeSet](../resources/partners-billing-attributeset.md)|Attributes that should be exported. Possible values are: `full`, `basic`, `unknownFutureValue`. The default value is `full`. Choose `full` for a complete response or `basic` for a subset of attributes. Optional.|
|invoiceId|String|The invoice ID for which the partner requested to export data. Required.|

## Response

If successful, this method returns a `202 Accepted` response code and a `Location` header that contains the URL to the long-running operation. You can check the status of the long-running operation by making a GET request to this URL that returns one of the following objects in the response body: [microsoft.graph.partners.billing.runningOperation](../resources/partners-billing-runningoperation.md), [microsoft.graph.partners.billing.exportSuccessOperation](../resources/partners-billing-exportsuccessoperation.md), or [microsoft.graph.partners.billing.failedOperation](../resources/partners-billing-failedoperation.md).

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "billedusagethis.export"
}
-->
``` http
POST https://graph.microsoft.com/beta/reports/partners/billing/usage/billed/export
Content-Type: application/json

{
  "invoiceId" : "G016907411",
  "attributeSet" : "full"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/billedusagethisexport-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/billedusagethisexport-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/billedusagethisexport-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/billedusagethisexport-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/billedusagethisexport-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/billedusagethisexport-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/billedusagethisexport-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/billedusagethisexport-python-snippets.md)]
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
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/beta/reports/partners/billing/operations/9ab9cb54-d07f-4f52-9ea6-a09d7de52c14
```
