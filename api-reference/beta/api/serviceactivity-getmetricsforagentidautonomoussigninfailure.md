---
title: "serviceActivity: getMetricsForAgentIdAutonomousSignInFailure"
description: "Retrieve the number of failed autonomous sign-ins by Agent IDs during a specified time period."
author: "Zacharypeng"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
ms.date: 10/22/2026
---

# serviceActivity: getMetricsForAgentIdAutonomousSignInFailure
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the number of failed autonomous sign-ins by Agent IDs during a specified time period.

In Agent ID autonomous sign-ins, the agent signs in and acts as itself, including both Agent ID instances and designated service principals. This metric counts attempts for which authentication wasn't completed.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "serviceactivity_getmetricsforagentidautonomoussigninfailure" } -->
[!INCLUDE [permissions-table](../includes/permissions/serviceactivity-getmetricsforagentidautonomoussigninfailure-permissions.md)]

[!INCLUDE [rbac-entra-health-service-activity-apis](../includes/rbac-for-apis/rbac-entra-health-service-activity-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/serviceActivity/getMetricsForAgentIdAutonomousSignInFailure(inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime},exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime})
```

## Function parameters
In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|aggregationIntervalInMinutes|Int32|Aggregation interval in minutes. The default value is `15`, which sets the data to be aggregated into 15-minute sets. Allowed values are `5`, `10`, `15`, and `30`. Optional.|
|exclusiveIntervalEndDateTime|DateTimeOffset|Set the ending date and time in UTC. Required.|
|inclusiveIntervalStartDateTime|DateTimeOffset|Set the starting date and time in UTC. The earliest start time allowed is 30 days in the past. Required.|

## Request headers
|Name|Description|
|:---|:---|
|Authorization|****** Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection in the response body.

## Examples

### Example 1: Get autonomous sign-in failure metrics

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "serviceactivitythis.getmetricsforagentidautonomoussigninfailure"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/serviceActivity/getMetricsForAgentIdAutonomousSignInFailure(inclusiveIntervalStartDateTime=2023-01-01T00:00:00Z,exclusiveIntervalEndDateTime=2023-01-01T00:30:00Z,aggregationIntervalInMinutes=10)
```

#### Response

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
      "intervalStartDateTime": "2023-01-01T00:00:00Z",
      "value": 4
    },
    {
      "intervalStartDateTime": "2023-01-01T00:10:00Z",
      "value": 5
    },
    {
      "intervalStartDateTime": "2023-01-01T00:20:00Z",
      "value": 4
    }
  ]
}
```
