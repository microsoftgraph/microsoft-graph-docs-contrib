---
title: "Get operation"
description: "Read the properties and relationships of an operation object."
author: "abhishek-singh-ms"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: apiPageType
---

# Get operation

Namespace: microsoft.graph.partners.billing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [operation](../resources/operation.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "operation-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/partners-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/partners/billing/operations/{id}
```

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

<!-- {
  "blockType": "request",
  "name": "get_billing_operation"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/partners/billing/operations/6fe687d7-1e0f-4bd6-9091-4672691f64bc
```

#### Response

The following example shows the response for an operation that completed successfully.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.exportSuccessOperation"
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
  "resourceLocation@odata.navigationLink": "https://graph.microsoft.com/beta/reports/partners/billing/manifests/8fe347d7-1e0f-4bd6-9091-4672691f32db"
}
```

### Example 2: Get operation failed

#### Request

The following example shows a request that returns a [microsoft.graph.partners.billing.failedOperation](../resources/partners-billing-failedoperation.md) object.

<!-- {
  "blockType": "request",
  "name": "get_billing_operation_failed"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/partners/billing/operations/6fe687d7-1e0f-4bd6-9091-4672691f64bc
```

#### Response

The following example shows the response for an operation that failed.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.failedOperation"
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

<!-- {
  "blockType": "request",
  "name": "get_billing_operation_running"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/partners/billing/operations/6fe687d7-1e0f-4bd6-9091-4672691f64bc
```

#### Response

The following example shows the response for an operation that is still running.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.operation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.partners.billing.operation",
  "id": "6fe687d7-1e0f-4bd6-9091-4672691f64bc",
  "status": "running",
  "createdDateTime": "2023-03-09T08:12:53",
  "lastActionDateTime": "2023-03-09T08:37:48.5046691Z"
}
```
