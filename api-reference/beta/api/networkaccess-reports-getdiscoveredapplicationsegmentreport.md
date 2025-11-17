---
title: "reports: getDiscoveredApplicationSegmentReport"
description: "Returns a collection of discoveredApplicationSegmentReport based on aggregated traffic logs for a given period."
author: "miritsadon"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# reports: getDiscoveredApplicationSegmentReport

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Returns a collection of discoveredApplicationSegmentReport based on aggregated traffic logs for a given period.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-reports-getdiscoveredapplicationsegmentreport-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-reports-getdiscoveredapplicationsegmentreport-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /networkAccess/reports/getDiscoveredApplicationSegmentReport(startDateTime={startDateTime},endDateTime={endDateTime})
```

## Function parameters
In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|Start of the period for aggregating traffic logs. Required.|
|endDateTime|DateTimeOffset|End of the period for aggregating traffic logs. Required.|
|userId|String|The Azure Active Directory (AAD) user ID of the user in GUID format. Optional. When used, it will return only the discovered application segments accessed by the user.|


## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [discoveredApplicationSegmentReport](../resources/networkaccess-discoveredapplicationsegmentreport.md) collection in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "reportsthis.getdiscoveredapplicationsegmentreport"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/networkAccess/reports/getDiscoveredApplicationSegmentReport(startDateTime=2023-01-01T00:00:00Z,endDateTime=2023-01-31T23:59:59Z,userId=null)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/reportsthisgetdiscoveredapplicationsegmentreport-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/reportsthisgetdiscoveredapplicationsegmentreport-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/reportsthisgetdiscoveredapplicationsegmentreport-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/reportsthisgetdiscoveredapplicationsegmentreport-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/reportsthisgetdiscoveredapplicationsegmentreport-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/reportsthisgetdiscoveredapplicationsegmentreport-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/reportsthisgetdiscoveredapplicationsegmentreport-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
> **Note**: The acronym "API" stands for "Application Programming Interface."
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.discoveredApplicationSegmentReport)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "discoveredApplicationSegmentId": "12345678-1234-1234-1234-123456789012",
      "fqdn": "app.contoso.com",
      "ip": "192.168.1.1",
      "port": 443,
      "transportProtocol": "tcp",
      "accessType": "privateAccess",
      "firstAccessDateTime": "2023-01-15T08:30:00Z",
      "lastAccessDateTime": "2023-01-20T17:45:30Z",
      "transactionCount": 250,
      "userCount": 15,
      "deviceCount": 12,
      "totalBytesSent": 2500000,
      "totalBytesReceived": 5000000
    },
    {
      "discoveredApplicationSegmentId": "98765432-9876-9876-9876-987654321098",
      "fqdn": "internal.contoso.com",
      "ip": "192.168.1.2",
      "port": 8080,
      "transportProtocol": "tcp",
      "accessType": "privateAccess",
      "firstAccessDateTime": "2023-01-10T11:20:00Z",
      "lastAccessDateTime": "2023-01-25T14:30:15Z",
      "transactionCount": 180,
      "userCount": 10,
      "deviceCount": 8,
      "totalBytesSent": 1800000,
      "totalBytesReceived": 3600000
    }
  ]
}
```
