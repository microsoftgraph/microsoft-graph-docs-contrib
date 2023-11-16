---
title: "List daily userCount"
description: "Get a list of daily user count on apps registered in your tenant configured for Microsoft Entra External ID for customers."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# List daily userCount
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of daily [user count](../resources/usercountmetric.md) on apps registered in your tenant configured for Microsoft Entra External ID for customers.

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
GET /reports/userInsights/daily/userCount
```

## Optional query parameters
This method doesn't support OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

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
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_usercountmetric"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/userInsights/daily/userCount
```


### Response
The following example shows the response.
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
