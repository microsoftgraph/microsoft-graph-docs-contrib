---
title: "List insightSummaries"
description: "Get a list of the daily insightSummary objects and their properties."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# List daily insightSummaries
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the daily [insightSummary](../resources/insightsummary.md) objects and their properties.

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
Here's an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_dailyinsightsummary"
}
-->
``` http
GET https://graph.microsoft.com/beta/userInsightsRoot/daily/summary
```


### Response
Here's an example of the response.
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.insightSummary)",
  "value": [
    {
      "id": "3",
      "factDate": "2023-09-23",
      "activeUsers": 1,
      "authenticationRequests": 4,
      "authenticationCompletions": 2,
      "securityTextRequests": 0,
      "securityTextCompletions": 0,
      "securityVoiceRequests": 0,
      "securityVoiceCompletions": 0,
      "os": "LINUX",
      "appId": "10e90284-3cc4-4f82-a641-55ee4068d633"
    },
    {
      "id": "2",
      "factDate": "2023-09-25",
      "activeUsers": 1,
      "authenticationRequests": 19,
      "authenticationCompletions": 7,
      "securityTextRequests": 0,
      "securityTextCompletions": 0,
      "securityVoiceRequests": 0,
      "securityVoiceCompletions": 0,
      "os": "WINDOWS",
      "appId": "193e5365-3872-4bc8-b32f-b7620ef9da0f"
    },
    {
      "id": "1",
      "factDate": "2023-09-26",
      "activeUsers": 2,
      "authenticationRequests": 1,
      "authenticationCompletions": 1,
      "securityTextRequests": 0,
      "securityTextCompletions": 0,
      "securityVoiceRequests": 0,
      "securityVoiceCompletions": 0,
      "os": "MACOS",
      "appId": "7e30b8ed-42a3-4d1f-89ad-14d4df3c9e52"
    }
  ]
}
```

