---
title: "Get operation"
description: "Read the properties and relationships of an operation object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get operation
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [operation](../resources/operation.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "operation-get-permissions"
}
-->
[!INCLUDE [permissions-table](permissions/operation-get-permissions.md)]

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

If operation is completed successfully, this method returns a 200 OK response code and [exportSuccessOperation](../resources/partners.billing-exportsuccessoperation.md) object in the response body.
`resourceLocation` in the JSON response represent the URI to get [manifest](partners.billing-manifest.md) resource for the operation.

If operation failed, this method returns a 200 OK response code and [failedOperation](../resources/partners.billing-failedoperation.md) object in the response body.

If operation is still running, this method returns a 200 OK response code and [operation](../resources/partners.billing-runningoperation.md) object in the response body.

## Examples

### Request
The following request is an example.
<!-- {
  "blockType": "request",
  "name": "get_operation"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/partners/billing/operations/6fe687d7-1e0f-4bd6-9091-4672691f64bc
```


### Response
#### sample response if operation completed successfully
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
  "@odata.type": "#microsoft.graph.partners.billing.exportSuccessOperation",
  "id": "6fe687d7-1e0f-4bd6-9091-4672691f64bc",
  "status": "succeeded",
  "createdDateTime": "2023-03-09T08:12:53",
  "lastActionDateTime": "2023-03-09T08:37:48.5046691Z",
  "resourceLocation@odata.navigationLink": "https://graph.microsoft.com/beta/reports/partners/billing/manifests/8fe347d7-1e0f-4bd6-9091-4672691f32db"
}

```

#### sample response if operation failed

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

#### sample response if operation is still running

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
   "lastActionDateTime": "2023-03-09T08:37:48.5046691Z",
 }

```


