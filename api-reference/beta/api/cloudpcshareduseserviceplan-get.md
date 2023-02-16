---
title: "Get cloudPcSharedUseServicePlan"
description: "Read the properties and relationships of a cloudPcSharedUseServicePlan object."
author: "GuoanTang"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# Get cloudPcSharedUseServicePlan

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [cloudPcSharedUseServicePlan](../resources/cloudpcshareduseserviceplan.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | CloudPC.Read.All, CloudPC.ReadWrite.All     |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | CloudPC.Read.All, CloudPC.ReadWrite.All     |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/virtualEndpoint/sharedUseServicePlans/{cloudPcSharedUseServicePlanId}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response.. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [cloudPcSharedUseServicePlan](../resources/cloudpcshareduseserviceplan.md) object in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "get_cloudpcshareduseserviceplan"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/sharedUseServicePlans/613a8d85-6c33-1268-9f55-b96a6540017c
```

### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcSharedUseServicePlan"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.cloudPcSharedUseServicePlan",
    "id": "613a8d85-6c33-1268-9f55-b96a6540017c",
    "displayName": "Display Name Value",
    "usedCount": "10",
    "totalCount": "20"
  }
}
```
