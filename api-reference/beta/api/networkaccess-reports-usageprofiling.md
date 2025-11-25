---
title: "reports: usageProfiling"
description: "Returns an object containing count tables for the traffic types in Global Secure Access."
author: "miritsadon"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# reports: usageProfiling

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Returns an object containing count tables for the traffic types in Global Secure Access, aggregated by the time period specified.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-reports-usageprofiling-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-reports-usageprofiling-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /networkAccess/reports/usageProfiling(startDateTime={startDateTime},endDateTime={endDateTime},aggregatedBy={aggregatedBy})
```

## Function parameters
In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|Start of the period for aggregating traffic logs. Required.|
|endDateTime|DateTimeOffset|End of the period for aggregating traffic logs. Required.|
|aggregatedBy|microsoft.graph.networkaccess.aggregationFilter|The aggregation type for the returned data. Options include: `transactions`, `users`, `devices`, `bytesSent`, `bytesReceived`, `totalBytes`. Required.|
|discoveredApplicationSegmentId|String|The unique identifier of the discovered application segment. Optional.|
|applicationId|String|The unique identifier of the application for which the traffic data is being queried. Optional.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [usageProfilingPoint](../resources/networkaccess-usageprofilingpoint.md) collection in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "reportsthis.usageprofiling"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/networkAccess/reports/usageProfiling(startDateTime=2023-03-01T00:00:00Z,endDateTime=2023-03-31T23:59:59Z,aggregatedBy='transactions',discoveredApplicationSegmentId=null)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/reportsthisusageprofiling-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/reportsthisusageprofiling-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/reportsthisusageprofiling-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/reportsthisusageprofiling-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/reportsthisusageprofiling-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/reportsthisusageprofiling-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/reportsthisusageprofiling-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.usageProfilingPoint)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "timeStampDateTime": "2023-03-01T00:00:00Z",
      "totalTrafficCount": 5280,
      "microsoft365AccessTrafficCount": 2150,
      "privateAccessTrafficCount": 1430,
      "internetAccessTrafficCount": 1400,
      "microsoftAccessTrafficCount": 300
    },
    {
      "timeStampDateTime": "2023-03-02T00:00:00Z",
      "totalTrafficCount": 4950,
      "microsoft365AccessTrafficCount": 2000,
      "privateAccessTrafficCount": 1350,
      "internetAccessTrafficCount": 1300,
      "microsoftAccessTrafficCount": 300
    },
    {
      "timeStampDateTime": "2023-03-03T00:00:00Z",
      "totalTrafficCount": 3800,
      "microsoft365AccessTrafficCount": 1600,
      "privateAccessTrafficCount": 1000,
      "internetAccessTrafficCount": 950,
      "microsoftAccessTrafficCount": 250
    }
  ]
}
```
