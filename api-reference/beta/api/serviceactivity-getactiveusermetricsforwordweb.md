---
title: "serviceActivity: getActiveUserMetricsForWordWeb"
description: "Get all the active usage based on the number of active users who open or save Word for the web."
author: "mkuninty"
ms.localizationpriority: medium
ms.subservice: "m365-monitoring-service"
doc_type: apiPageType
ms.date: 12/02/2024
---

# serviceActivity: getActiveUserMetricsForWordWeb
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all the active usage based on the number of active users who open or save Word for the web.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|ServiceActivity-Microsoft365Web.Read.All|Not available.|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|ServiceActivity-Microsoft365Web.Read.All|Not available.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/serviceActivity/getActiveUserMetricsForWordWeb
```

## Function parameters
In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|aggregationIntervalInMinutes|Int32|Aggregation interval in minutes. The default value is `15`, which sets the data to be aggregated into 15-minute sets. Allowed values are `5`, `10`, `15`, and `30`. Optional.|
|exclusiveIntervalEndDateTime|DateTimeOffset|The ending date and time in UTC. Required.|
|inclusiveIntervalStartDateTime|DateTimeOffset|The starting date and time in UTC. The earliest start time allowed is 30 days in the past. Required.|

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection in the response body.

## Examples

### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "serviceactivitythis.getactiveusermetricsforwordweb"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/serviceActivity/getActiveUserMetricsForWordWeb(inclusiveIntervalStartDateTime=2024-10-02T10:30:00Z,exclusiveIntervalEndDateTime=2024-10-02T10:59:59Z,aggregationIntervalInMinutes=10)
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.serviceActivityValueMetric)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.serviceActivityValueMetric)",
    "value": [
        {
            "intervalStartDateTime": "2024-10-02T10:30:00Z",
            "value": 530
        },
        {
            "intervalStartDateTime": "2024-10-02T10:40:00Z",
            "value": 514
        }
    ]
}
```
