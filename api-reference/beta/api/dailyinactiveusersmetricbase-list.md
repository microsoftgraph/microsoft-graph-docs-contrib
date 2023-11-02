---
title: "List dailyInactiveUsersMetric"
description: "Get a list of the daily inactiveUsersMetric objects and their properties."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# List dailyInactiveUsersMetric
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the daily [inactiveUsersMetric](../resources/inactiveusersmetricbase.md) objects together with their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Insights-UserMetrics.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Insights-UserMetrics.Read.All|

[!INCLUDE [rbac-ciam-user-insights-apis](../includes/rbac-for-apis/rbac-ciam-user-insights-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET beta/reports/userinsights/daily/inactiveUsers
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

If successful, this method returns a `200 OK` response code and a collection of [inactiveUsersMetricBase](../resources/inactiveusersmetricbase.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_inactiveusersmetricbase"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/userinsights/daily/inactiveUsers
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.inactiveUsersMetricBase)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.dailyInactiveUsersMetric)",
  "value": [
    {
      "id": "20",
      "factDate": "2023-10-01",
      "inactive1DayCount": 68,
      "inactive30DayCount": 80,
      "inactive60DayCount": 120,
      "inactive90DayCount": 300
    },
    {
      "id": "19",
      "factDate": "2023-10-02",
      "inactive1DayCount": 70,
      "inactive30DayCount": 90,
      "inactive60DayCount": 150,
      "inactive90DayCount": 230
    }
  ]
}
```

