---
title: "List daily mfaCompletions"
description: "Get a list of daily mfaCompletions on apps registered in your Microsoft Entra External ID for customers tenant."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# List daily mfaCompletions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of daily [mfaCompletions](../resources/mfacompletionmetric.md) on apps registered in your Microsoft Entra External ID for customers tenant.

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
GET /reports/userInsights/daily/mfaCompletions
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

If successful, this method returns a `200 OK` response code and a collection of [mfaCompletionMetric](../resources/mfacompletionmetric.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_dailymfacompletionmetric"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/userInsights/daily/mfaCompletions
```

### Response
The following example shows the response.
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
      "id": "2",
      "factDate": "2023-09-28",
      "mfaMethod": "PhoneAppOTP",
      "successCount": 0,
      "attemptsCount": 1,
      "os": "Windows",
      "appId": "c44d4083-3bb0-49d1-b47d-974f53cbbf3e"
    },
    {
      "id": "1",
      "factDate": "2023-09-28",
      "mfaMethod": "PhoneAppNotification",
      "successCount": 4,
      "attemptsCount": 5,
      "os": "Windows",
      "appId": "c44d4083-3bb0-49d1-b47d-974f53cbbf3e"
    }
  ]
}
```
