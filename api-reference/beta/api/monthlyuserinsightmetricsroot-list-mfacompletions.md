---
title: "List monthly mfaCompletions"
description: "Get the monthly mfaCompletionMetric resources from the mfaCompletions navigation property."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# List monthly mfaCompletions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the monthly [mfaCompletionMetric](../resources/mfacompletionmetric.md) objects and their properties.

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
GET /reports/userInsights/monthly/mfaCompletions
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

If successful, this method returns a `200 OK` response code and a collection of [mfaCompletionMetric](../resources/mfacompletionmetric.md) objects in the response body.

## Examples

### Request
Here's an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_monthlymfacompletionmetric"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/userInsights/monthly/mfaCompletions
```


### Response
Here's an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.mfaCompletionMetric)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.mfaCompletionMetric)",
  "value": [
    {
      "id": "8",
      "factDate": "2023-07-01",
      "mfaMethod": "PhoneAppNotification",
      "successCount": 6,
      "attemptsCount": 6,
      "os": "Windows",
      "appId": "c44d4083-3bb0-49d1-b47d-974f53cbbf3e"
    },
    {
      "id": "7",
      "factDate": "2023-07-01",
      "mfaMethod": "PhoneAppNotification",
      "successCount": 3,
      "attemptsCount": 4,
      "os": "OSX",
      "appId": "c44d4083-3bb0-49d1-b47d-974f53cbbf3e"
    },
    {
      "id": "6",
      "factDate": "2023-08-01",
      "mfaMethod": "PhoneAppOTP",
      "successCount": 1,
      "attemptsCount": 1,
      "os": "Windows",
      "appId": "c44d4083-3bb0-49d1-b47d-974f53cbbf3e"
    }
  ]
}
```

