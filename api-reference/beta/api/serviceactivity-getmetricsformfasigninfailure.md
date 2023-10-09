---
title: "serviceActivity: getMetricsForMfaSignInFailure"
description: "Get the number of times users fail to complete interactive MFA sign-ins using the Microsoft Entra MFA cloud service over a given time range. A failure sign-in case can be users abandoning or canceling MFA requests, refreshing MFA sessions without doing interactive MFA, or using passwordless methods that are not counted as MFA sign-ins."
author: "Zacharypeng"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# serviceActivity: getMetricsForMfaSignInFailure
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the number of times users fail to complete interactive MFA sign-ins using the Microsoft Entra MFA cloud service over a given time range. A failure sign-in case can be users abandoning or canceling MFA requests, refreshing MFA sessions without doing interactive MFA, or using passwordless methods that are not counted as MFA sign-ins.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Reports.Read.All |
| Delegated (personal Microsoft account) | Not supported    |
| Application                            | Reports.Read.All |

In addition to the delegated permissions, the signed-in user who is accessing the data needs to belong to one of the following directory roles that allow them to read sign-in reports. To learn more about directory roles, see [Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference):

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
GET /reports/serviceActivity/getMetricsForMfaSignInFailure
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|inclusiveIntervalStartDateTime|DateTimeOffset|Sets the starting date and time in UTC. The allowed earliest start time is 30 days in the past.|
|exclusiveIntervalEndDateTime|DateTimeOffset|Sets the ending date and time in UTC.|
|aggregationIntervalInMinutes|Int32|Aggregation interval in minutes. This parameter is optional. The default value is 15, which sets the data to be aggregated into 15-minute sets. Allowed values are 5, 10, 15 and 30.|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "serviceactivitythis.getmetricsformfasigninfailure"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/serviceActivity/getMetricsForMfaSignInFailure(inclusiveIntervalStartDateTime=2023-01-01T00:00:00Z,exclusiveIntervalEndDateTime=2023-01-01T00:20:00Z,aggregationIntervalInMinutes=10)
```


### Response
The following is an example of the response
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

