---
title: "List monthlyInactiveUsersMetric"
description: "Get a list of the monthly inactiveUsersMetric objects and their properties."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# List monthlyInactiveUsersMetric
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the monthly [inactiveUsersMetric](../resources/inactiveusersmetricbase.md) objects together with their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Insights-UserMetrics.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Insights-UserMetrics.Read.All|
In addition to the delegated permissions, the signed-in user needs to belong to one of the following directory roles that allow them to read sign-in reports. To learn more about directory roles, see [Microsoft Entra built-in roles](https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference).
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
GET beta/reports/userinsights/monthly/inactiveUsers
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

If successful, this method returns a `200 OK` response code and a collection of [inactiveUsersMetricBase](../resources/inactiveusersmetricbase.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_inactiveusersmetricbase"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/userinsights/monthly/inactiveUsers
```


### Response
The following is an example of the response.
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
      "inactiveCalendarMonthCount": 80,
      "inactive30DayCount": 78,
      "inactive60DayCount": 120,
      "inactive90DayCount": 300
    },
    {
      "id": "19",
      "factDate": "2023-09-01",
      "inactiveCalendarMonthCount": 95,
      "inactive30DayCount": 90,
      "inactive60DayCount": 150,
      "inactive90DayCount": 230
    },
    {
      "id": "18",
      "factDate": "2023-08-01",
      "inactiveCalendarMonthCount": 95,
      "inactive30DayCount": 90,
      "inactive60DayCount": 200,
      "inactive90DayCount": 280
    }
  ]
}
```

