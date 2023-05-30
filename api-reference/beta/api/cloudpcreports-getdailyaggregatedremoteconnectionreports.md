---
title: "cloudPcReports: getDailyAggregatedRemoteConnectionReports"
description: "Get the daily aggregated remote connection reports , such as round trip time, available bandwidth, and so on, in a given period."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPcReports: getDailyAggregatedRemoteConnectionReports
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the daily aggregated remote connection reports, such as round trip time, available bandwidth, and so on, in a given period.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.Read.All, CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CloudPC.Read.All, CloudPC.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/reports/getDailyAggregatedRemoteConnectionReports
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|filter|String|OData filter syntax. Supported filters include `and`, `or`, `lt`, `le`, `gt`, `ge` and `eq`.|
|select|String collection|OData select syntax. Represents the selected columns of the reports. |
|search|String|Specifies a string to search|
|groupBy|String collection|Specify how to group the reports. If used, must have the same contents as select parameter|
|orderBy|String collection|Specify how to sort the reports.|
|skip|Int32|Number of records to skip.|
|top|Int32|The number of top records to return.|



## Response

If successful, this action returns a `200 OK` response code and a Stream in the response body.

## Examples

### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudpcreportsthis.getdailyaggregatedremoteconnectionreports"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/getDailyAggregatedRemoteConnectionReports
Content-Type: application/json
Content-length: 199

{
    "filter" : "CloudPcId eq '5db15afe-025d-4f1b-b43a-d0554b63ffff' and RoundTripTimeInMsP50 lt 100 and EventDateTime gt 2022-06-01 ", 
    "search" : "abc0907", 
    "select" : ["EventDateTime", "CloudPcId", "ManagedDeviceName", "UsageInHour", "RoundTripTimeInMsP50", "AvailableBandwidthInMBpsP50", "RemoteSignInTimeInSecP50", "UserPrincipalName"],
    "skip": "0",
    "top": "25"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/cloudpcreportsthisgetdailyaggregatedremoteconnectionreports-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/cloudpcreportsthisgetdailyaggregatedremoteconnectionreports-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/cloudpcreportsthisgetdailyaggregatedremoteconnectionreports-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/cloudpcreportsthisgetdailyaggregatedremoteconnectionreports-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/cloudpcreportsthisgetdailyaggregatedremoteconnectionreports-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/cloudpcreportsthisgetdailyaggregatedremoteconnectionreports-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Edm.Stream"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/octet-stream

{
    "TotalRowCount": 1,
    "Schema": [
        {
            "Column": "UsageInHour",
            "PropertyType": "Double"
        },
        {
            "Column": "RoundTripTimeInMsP50",
            "PropertyType": "Double"
        },
        {
            "Column": "RemoteSignInTimeInSecP50",
            "PropertyType": "Double"
        },
        {
            "Column": "AvailableBandwidthInMBpsP50",
            "PropertyType": "Double"
        },
        {
            "Column": "EventDateTime",
            "PropertyType": "DateTime"
        }
    ],
    "Values": [
        [
            16.310277777777777,
            393.0,
            9.088,
            1.423828125,
            "2022-09-15T00:00:00"
        ]
    ]
}
```

