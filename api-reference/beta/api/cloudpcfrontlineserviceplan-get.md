---
title: "Get cloudPcFrontLineServicePlan"
description: "Get the properties and relationships of a cloudPcFrontLineServicePlan object."
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# Get cloudPcFrontLineServicePlan

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties and relationships of a [cloudPcFrontLineServicePlan](../resources/cloudpcfrontlineserviceplan.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | CloudPC.Read.All, CloudPC.ReadWrite.All     |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | CloudPC.Read.All, CloudPC.ReadWrite.All     |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /deviceManagement/virtualEndpoint/frontLineServicePlans/{cloudPcFrontLineServicePlanId}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [cloudPcFrontLineServicePlan](../resources/cloudpcfrontlineserviceplan.md) object in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "get_cloudpcfrontlineserviceplan"
}
-->

```http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/frontLineServicePlans/dd3801e2-4aa1-4b16-a44b-243e55497584
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcFrontLineServicePlan"
}
-->

```http
HTTP/1.1 200 OK

{
  "value": {
    "@odata.type": "#microsoft.graph.cloudPcFrontLineServicePlan",
    "id": "dd3801e2-4aa1-4b16-a44b-243e55497584",
    "displayName": "Cloud PC Frontline 4vCPU/16GB/128GB",
    "usedCount": 10,
    "totalCount": 30
  }
}
```
