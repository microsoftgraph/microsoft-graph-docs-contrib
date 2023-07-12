---
title: "List dailyActiveUsers"
description: "Get the activeUsersMetric resources from the activeUsers navigation property."
author: "kingjuli"
ms.localizationpriority: medium
ms.prod: "user-insights"
doc_type: apiPageType
---

# List dailyActiveUsers
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the dailyActiveUsersMetric resources from the activeUsers navigation property.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Insights-UserMetrics.Read.All|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/userInsights/daily/activeUsers
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

If successful, this method returns a `200 OK` response code and a collection of [activeUsersMetric](../resources/activeusersmetric.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_activeusersmetric"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/userInsights/daily/activeUsers
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.AAD.Reporting.activeUsersMetric)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#Microsoft.AAD.Reporting.activeUsersMetric",
      "id": "a98e5f69-4e86-0323-687a-87dd6135249e",
      "factDate": "Date",
      "count": "Integer"
    }
  ]
}
```

