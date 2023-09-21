---
title: "serviceActivity: getMetricsForMfaSignInSuccess"
description: "Get the number of times users successfully completing interactive MFA sign ins using Microsoft Entra MFA cloud service."
author: zachpeng
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# serviceActivity: getMetricsMfaSignInSuccess

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the number of times users successfully completing interactive MFA sign ins using Microsoft Entra MFA cloud service over a given time range.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Reports.Read.All |
| Application                            | Reports.Read.All |

In addition to the delegated permissions, the signed-in user needs to belong to one of the following directory roles that allow them to read sign-in reports. To learn more about directory roles, see [Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference):

+ Global Administrator
+ Global Reader
+ Reports Reader
+ Security Administrator
+ Security Operator
+ Security Reader

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/serviceActivity/getMetricsForMfaSignInSuccess
```

## Function parameters

In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|inclusiveStartDateTime|DateTimeOffset|Sets the starting date and time in UTC. The allowed earliest start time is 30 days from now.|
|exclusiveEndDateTime|DateTimeOffset|Sets the ending date and time in UTC.|
|aggregationIntervalInMinute|Int32|Aggregation interavl in minute. Defaul value is 15. Allowed values are 5, 10, 15 and 30.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [serviceActivityValueMetric](../resources/serviceActivityValueMetric.md) collection in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "reportsthis.getMetricsForMfaSignInSuccess"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/serviceActivity/getMetricsForMfaSignInSuccess(inclusiveStartDateTime=2023-01-01T00:00:00Z,exclusiveEndDateTime=2023-01-01T00:20:00Z,aggregationIntervalInMinute=10)
```

### Response

The following is an example of the response.
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
  "@odata.context": "https://graph.microsoft.com/beta/networkAccess/reports/$metadata#Collection(serviceActivityValueMetric)",
  "value": [
    {
      "intervalStartDateTime": "2023-01-10 00:00",
      "value": 4
    },
    {
      "intervalStartDateTime": "2023-01-10 00:10",
      "value": 5
    },
    {
      "intervalStartDateTime": "2023-01-10 00:20",
      "value": 4
    }
  ]
}
```