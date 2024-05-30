---
title: "Get operation"
description: "Read the properties and relationships of an operation object."
author: "sourishdeb"
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: apiPageType
---

# Get operation

Namespace: microsoft.graph.partners.billing

[!INCLUDE [alerts-callout-csp-partner-only](../includes/alerts-callout-csp-partner-only.md)]


Read the properties and relationships of an [operation](../resources/partners-billing-operation.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "partners_billing_operation_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/partners-billing-operation-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/partners/billing/operations/{id}
```

## Optional query parameters

This method doesn't support any OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If an operation completes successfully, this method returns a `200 OK` response code and a [microsoft.graph.partners.billing.exportSuccessOperation](../resources/partners-billing-exportsuccessoperation.md) object in the response body. The **resourceLocation** navigation property in the response body represents the [microsoft.graph.partners.billing.manifest](../resources/partners-billing-manifest.md) resource for the operation.

If an operation fails, this method returns a `200 OK` response code and a [microsoft.graph.partners.billing.failedOperation](../resources/partners-billing-failedoperation.md) object in the response body.

If an operation is still running, this method returns a `200 OK` response code and a [microsoft.graph.partners.billing.runningOperation](../resources/partners-billing-runningoperation.md) object in the response body.

## Examples

### Example 1: Get operation succeeded

#### Request

The following example shows a request that returns a [microsoft.graph.partners.billing.exportSuccessOperation](../resources/partners-billing-exportsuccessoperation.md) object.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_billing_operation"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/reports/partners/billing/operations/6fe687d7-1e0f-4bd6-9091-4672691f64bc
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-billing-operation-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-billing-operation-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-billing-operation-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-billing-operation-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-billing-operation-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-billing-operation-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-billing-operation-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-billing-operation-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response for an operation that completed successfully.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.partners.billing.exportSuccessOperation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.partners.billing.exportSuccessOperation",
  "id": "6fe687d7-1e0f-4bd6-9091-4672691f64bc",
  "status": "succeeded",
  "createdDateTime": "2023-03-09T08:12:53",
  "lastActionDateTime": "2023-03-09T08:37:48.5046691Z",
  "resourceLocation@odata.navigationLink": "https://graph.microsoft.com/v1.0/reports/partners/billing/manifests/8fe347d7-1e0f-4bd6-9091-4672691f32db"
}
```

### Example 2: Get operation failed

#### Request

The following example shows a request that returns a [microsoft.graph.partners.billing.failedOperation](../resources/partners-billing-failedoperation.md) object.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_billing_operation_failed"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/reports/partners/billing/operations/6fe687d7-1e0f-4bd6-9091-4672691f64bc
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-billing-operation-failed-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-billing-operation-failed-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-billing-operation-failed-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-billing-operation-failed-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-billing-operation-failed-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-billing-operation-failed-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-billing-operation-failed-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-billing-operation-failed-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response for an operation that failed.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.partners.billing.failedOperation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.partners.billing.failedOperation",
  "id": "6fe687d7-1e0f-4bd6-9091-4672691f64bc",
  "status": "failed",
  "createdDateTime": "2023-03-09T08:12:53",
  "lastActionDateTime": "2023-03-09T08:37:48.5046691Z",
  "error": {
    "message": "No data available",
    "code": "5000"
  }
}
```

### Example 3: Get operation is still running

#### Request

The following example shows a request that returns a [microsoft.graph.partners.billing.runningOperation](../resources/partners-billing-runningoperation.md) object.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_billing_operation_running"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/reports/partners/billing/operations/6fe687d7-1e0f-4bd6-9091-4672691f64bc
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-billing-operation-running-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-billing-operation-running-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-billing-operation-running-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-billing-operation-running-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-billing-operation-running-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-billing-operation-running-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-billing-operation-running-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-billing-operation-running-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response for an operation that is still running.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.partners.billing.runningOperation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.partners.billing.runningOperation",
  "id": "6fe687d7-1e0f-4bd6-9091-4672691f64bc",
  "status": "running",
  "createdDateTime": "2023-03-09T08:12:53",
  "lastActionDateTime": "2023-03-09T08:37:48.5046691Z"
}
```
