---
title: "List monthly inactiveUsersByApplication"
description: "Get a list of the monthly inactiveUsersByApplication objects and their properties."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# List monthly inactiveUsersByApplication
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the monthly [inactiveUsersByApplicationMetric](../resources/inactiveusersbyapplicationmetricbase.md) objects and their properties.

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
GET GET /beta/reports/userInsights/monthly/inactiveUsersByApplication
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

If successful, this method returns a `200 OK` response code and a collection of [monthlyInactiveUsersByApplicationMetric](../resources/inactiveusersbyapplicationmetricbase.md) objects in the response body.

## Examples

### Request
Here's an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_monthlyinactiveusersbyapplicationmetric"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/userInsights/monthly/inactiveUsersByApplication
```


### Response
Here's an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.monthlyInactiveUsersByApplicationMetric)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.monthlyInactiveUsersByApplicationMetric)",
  "value": [
    {
      "id": "601",
      "factDate": "2023-10-01",
      "appId": "18ed3507-a475-4ccb-b669-d66bc9f2a36e",
      "inactiveCalendarMonthCount": 12,
      "inactive1DayCount": 6,
      "inactive30DayCount": 10,
      "inactive60DayCount": 30,
      "inactive90DayCount": 90
    },
    {
      "id": "600",
      "factDate": "2023-09-01",
      "appId": "04f0c124-f2bc-4f59-8241-bf6df9866bbd",
       "inactiveCalendarMonthCount": 25,
      "inactive1DayCount": 3,
      "inactive30DayCount": 23,
      "inactive60DayCount": 43,
      "inactive90DayCount": 60
    }
  ]
}
```

