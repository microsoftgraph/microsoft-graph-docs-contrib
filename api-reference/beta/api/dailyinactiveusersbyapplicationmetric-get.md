---
title: "Get dailyInactiveUsersByApplicationMetric"
description: "Read the properties and relationships of a dailyInactiveUsersByApplicationMetric object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get dailyInactiveUsersByApplicationMetric
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [dailyInactiveUsersByApplicationMetric](../resources/dailyinactiveusersbyapplicationmetric.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /dailyInactiveUsersByApplicationMetric
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [dailyInactiveUsersByApplicationMetric](../resources/dailyinactiveusersbyapplicationmetric.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_dailyinactiveusersbyapplicationmetric"
}
-->
``` http
GET https://graph.microsoft.com/beta/dailyInactiveUsersByApplicationMetric
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.dailyInactiveUsersByApplicationMetric"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.dailyInactiveUsersByApplicationMetric",
    "id": "a42a6c11-24a9-6411-5804-e0967a0b93af",
    "factDate": "Date",
    "inactive30DayCount": "Integer",
    "inactive60DayCount": "Integer",
    "inactive90DayCount": "Integer",
    "inactive1DayCount": "Integer"
  }
}
```

