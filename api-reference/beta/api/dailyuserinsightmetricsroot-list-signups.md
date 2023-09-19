---
title: "List userSignUpMetrics"
description: "Get a list of the userSignUpMetric objects and their properties."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# List userSignUpMetrics
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [userSignUpMetric](../resources/usersignupmetric.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Insights-UserMetrics.Read.All|
|Application|Insights-UserMetrics.Read.All|

[

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/userInsights/daily/signUps
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

If successful, this method returns a `200 OK` response code and a collection of [userSignUpMetric](../resources/usersignupmetric.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_usersignupmetric"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/userInsights/daily/signUps
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.AAD.Reporting.userSignUpMetric)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#Microsoft.AAD.Reporting.userSignUpMetric",
      "id": "99fce108-65fc-db90-3ffc-037e2de3a0b2",
      "factDate": "Date",
      "count": "Integer",
      "os": "String"
    }
  ]
}
```

