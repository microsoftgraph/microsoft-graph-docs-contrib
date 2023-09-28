---
title: "List activeUsersBreakdown"
description: "Get the activeUsersBreakdownMetric resources from the activeUsersBreakdown navigation property."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# List monthly activeUsersBreakdown
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the activeUsersBreakdownMetric resources from the activeUsersBreakdown navigation property.

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
GET /reports/userInsights/monthly/activeUsersBreakdown
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

If successful, this method returns a `200 OK` response code and a collection of [activeUsersBreakdownMetric](../resources/activeusersbreakdownmetric.md) objects in the response body.

## Examples

### Request
Here's an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_monthlyctiveusersbreakdownmetric"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/userInsights/monthly/activeUsersBreakdown
```


### Response
Here's an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.activeUsersBreakdownMetric)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.activeUsersBreakdownMetric",
      "id": "5e8880da-5611-89c3-ffde-36ba559e00b3",
      "factDate": "Date",
      "count": "Integer",
      "appId": "String",
      "appName": "String",
      "os": "String"
    }
  ]
}
```

