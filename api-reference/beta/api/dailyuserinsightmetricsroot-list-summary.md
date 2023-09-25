---
title: "List insightSummaries"
description: "Get a list of the insightSummary objects and their properties."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# List insightSummaries
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [insightSummary](../resources/insightsummary.md) objects and their properties.

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
daily GET /userInsightsRoot/daily/summary
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

If successful, this method returns a `200 OK` response code and a collection of [insightSummary](../resources/insightsummary.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_insightsummary"
}
-->
``` http
GET https://graph.microsoft.com/beta/userInsightsRoot/daily/summary
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.insightSummary)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.insightSummary",
      "id": "9db498ba-cc11-0738-014e-adba1118fdad",
      "factDate": "Date",
      "activeUsers": "Integer",
      "authenticationRequests": "Integer",
      "authenticationCompletions": "Integer",
      "securityTextRequests": "Integer",
      "securityTextCompletions": "Integer",
      "securityVoiceRequests": "Integer",
      "securityVoiceCompletions": "Integer",
      "os": "String",
      "appId": "String"
    }
  ]
}
```

