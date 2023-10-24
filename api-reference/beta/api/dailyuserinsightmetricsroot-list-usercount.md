---
title: "List daily userCount"
description: "Get a list of the daily userCountMetric objects and their properties."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# List userCountMetrics
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the daily [userCountMetric](../resources/usercountmetric.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Insights-UserMetrics.Read.All|
|Application|Insights-UserMetrics.Read.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/userInsights/daily/userCount
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [userCountMetric](../resources/usercountmetric.md) objects in the response body.

## Examples

### Request
Here's an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_usercountmetric"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/userInsights/daily/userCount
```


### Response
Here's an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.userCountMetric)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.userCountMetric)",
    "value": [
      {
        "id": "2",
        "count": 549,
        "factDate": "2023-10-18"
      },
      {
        "id": "1",
        "count": 583,
        "factDate": "2023-10-19"
      }
    ]
}
```

