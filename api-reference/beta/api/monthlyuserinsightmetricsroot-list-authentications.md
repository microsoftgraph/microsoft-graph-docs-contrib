---
title: "List monthly authentications"
description: "Get the monthly authenticationsMetric resources from the authentications navigation property."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# List monthly authentications
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the monthly [authenticationsMetric](../resources/authenticationsmetric.md) resources from the authentications navigation property.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

||Permission type|Permissions (from least to most privileged)|
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
GET /reports/userInsights/monthly/authentications
```

## Optional query parameters
This method supports the $filter, $select, server-side paging through a large response, and in-clause filter OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

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
Here's an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_monthlyauthenticationsmetric"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/userInsights/monthly/authentications
```


### Response
Here's an example of the response.
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
      "factDate": "2023-09-21",
      "os": "Windows",
      "country": "DE",
      "attemptsCount": 3,
      "successCount": 3,
      "appid": "10e90284-3dd4-4f82-a641-55ee4068b633"
    },
    {
      "id": "2",
      "factDate": "2023-09-21",
      "os": "Windows",
      "country": "BR",
      "attemptsCount": 2,
      "successCount": 2,
      "appid": "10e90284-3dd4-4f82-a641-55ee4068b633"
    },
    {
      "id": "1",
      "factDate": "2023-09-21",
      "os": "Windows",
      "country": "IL",
      "attemptsCount": 1,
      "successCount": 0,
      "appid": "ecf4f310-6d09-4506-b9b4-0ee64f4a8d6d"
    }
  ]
}
```

