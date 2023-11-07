---
title: "List monthly signUps"
description: "Get a list of monthly userSignUps on apps registered in your Microsoft Entra External ID for customers tenant."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# List monthly signUps
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of monthly [userSignUps](../resources/usersignupmetric.md) on apps registered in your Microsoft Entra External ID for customers tenant.

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
GET /reports/userInsights/monthly/signUps
```

## Optional query parameters
This method supports `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [userSignUpMetric](../resources/usersignupmetric.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_monthlyusersignupmetric"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/userInsights/monthly/signUps
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.userSignUpMetric)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.userSignUpMetric)",
  "value": [
    {
      "id": "14",
      "factDate": "2023-07-01",
      "count": 10,
      "os": "MacOs"
    },
    {
      "id": "13",
      "factDate": "2023-07-01",
      "count": 8,
      "os": "Android"
    },
    {
      "id": "12",
      "factDate": "2023-07-01",
      "count": 2,
      "os": "Ios"
    }
  ]
}
```
