---
title: "List daily authentications"
description: "Get a list of the authentications on apps registered in your Microsoft Entra External ID for customers tenant."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# List daily authentications
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of daily [authentications](../resources/authenticationsmetric.md) on apps registered in your Microsoft Entra External ID for customers tenant.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Insights-UserMetric.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Insights-UserMetric.Read.All|

[!INCLUDE [rbac-ciam-user-insights-apis](../includes/rbac-for-apis/rbac-ciam-user-insights-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/userInsights/daily/authentications
```

## Optional query parameters
This method supports the `$filter` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [authenticationsMetric](../resources/authenticationsmetric.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_dailyauthenticationsmetric"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/userInsights/daily/authentications
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.authenticationsMetric)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.authenticationsMetric)",
  "value": [
    {
      "id": "3",
      "factDate": "2023-09-20",
      "os": "Windows",
      "country": "IL",
      "attemptsCount": 3,
      "successCount": 3,
      "appid": "df8bf8b5-d9d9-48e1-a8ed-c748df725064"
    },
    {
      "id": "2",
      "factDate": "2023-09-20",
      "os": "MacOs",
      "country": "UK",
      "attemptsCount": 3,
      "successCount": 0,
      "appid": "10e90284-3dd4-4f82-a641-55ee4068b633"
    },
    {
      "id": "1",
      "factDate": "2023-09-20",
      "os": "Windows",
      "country": "US",
      "attemptsCount": 18,
      "successCount": 18,
      "appid": "6fa90dbc-614e-4762-846f-bf95e1b27558"
    }
  ]
}
```
