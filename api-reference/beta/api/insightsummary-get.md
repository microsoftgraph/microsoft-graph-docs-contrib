---
title: "Get insightSummary"
description: "Read the properties and relationships of an insightSummary object."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# Get insightSummary
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [insightSummary](../resources/insightsummary.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Insights-UserMetrics.Read.All|
|Application|Insights-UserMetrics.Read.All|

[!INCLUDE [Insights-UserMetrics permissions](../../../concepts/permissions-reference.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /insightSummary
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

If successful, this method returns a `200 OK` response code and an [insightSummary](../resources/insightsummary.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_insightsummary"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/insightSummary
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.AAD.Reporting.insightSummary"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#Microsoft.AAD.Reporting.insightSummary",
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
}
```

