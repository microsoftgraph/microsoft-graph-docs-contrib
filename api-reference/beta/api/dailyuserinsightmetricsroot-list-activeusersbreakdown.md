---
title: "List daily activeUsersBreakdown"
description: "Get a list of the daily activeUsersBreakdownMetric objects and their properties."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# List daily activeUsersBreakdown
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a breakdown of the daily [activeUsersBreakdownMetric](../resources/activeusersbreakdownmetric.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Insights-UserMetrics.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Insights-UserMetrics.Read.All|

In addition to the delegated permissions, the signed-in user needs to belong to one of the following directory roles that allow them to read sign-in reports. To learn more about directory roles, see [Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference).
- Reports Reader
- Application Administrator
- Cloud Application Administrator
- Company Administrator
- Global Readers
- Security Administrator
- Security Reader
- Security Operator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/userInsights/daily/activeUsersBreakdown
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

If successful, this method returns a `200 OK` response code and a collection of [activeUsersBreakdownMetric](../resources/activeusersbreakdownmetric.md) objects in the response body.

## Examples

### Request
Here's an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_dailyactiveusersbreakdownmetric"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/userInsights/daily/activeUsersBreakdown
```


### Response
Here's an example of the response.
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.activeUsersBreakdownMetric)",
  "value": [
    {
      "id": "2",
      "appId": "7a30b8ef-42h3-4d1e-84ad-17d4ca3c9a52",
      "appName": "Bank",
      "count": 1,
      "factDate": "2023-09-28",
      "os": "Windows"
    },
    {
      "id": "1",
      "appId": "65e59557-d9d1-485f-87c5-80b92a99dfda",
      "appName": "Kiosk",
      "count": 1,
      "factDate": "2023-09-20",
      "os": "Ios"
    }
  ]
}
```

