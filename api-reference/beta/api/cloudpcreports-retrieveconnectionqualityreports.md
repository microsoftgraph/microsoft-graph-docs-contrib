---
title: "cloudPcReports: retrieveConnectionQualityReports"
description: "Get the overall connection quality reports for all devices in the current tenant, the regional connection quality trend report, and the regional connection quality insight report, including round trip time, available bandwidth, UPD usage, and drop connections."
author: "bingqiangxiang"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 09/16/2024
---

# cloudPcReports: retrieveConnectionQualityReports

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the overall connection quality reports for all devices in the current tenant. This includes the regional connection quality trend report, and the regional connection quality insight report, including round trip time, available bandwidth, UPD usage, and drop connections.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcreports_retrieveconnectionqualityreports" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcreports-retrieveconnectionqualityreports-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/reports/retrieveConnectionQualityReports
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|filter|String|OData `$filter` syntax. Supported filters include: `and`, `or`, `lt`, `le`, `gt`, `ge`, and `eq`.|
|groupBy|String collection|Specifies how to group the reports. If used, must have the same contents as the **select** parameter.|
|orderBy|String collection|Specifies how to sort the reports.|
|search|String|Specifies a String to search.|
|select|String collection|OData `$select` syntax. The selected columns of the reports. |
|skip|Int32|The number of records to skip.|
|top|Int32|The number of top records to return.|

## Response

If successful, this action returns a `200 OK` response code and a Stream in the response body.

The following table describes the columns in the returned report when you specify `regionalConnectionQualityTrendReport` for the **reportName** property in your API call.

| Member | Description |
|:---|:---|
| AvailableBandwidthTrend             | The trend in the weekly average available bandwidth. The trend is calculated using linear regression over four weeks of data. Values can be `Increasing` (slope > 15), `Decreasing` (slope < -15), or `Static` (otherwise). |
| DailyAvailableBandwidthInMbps       | The daily average available bandwidth in Mbps for the most recent day. |
| DailyAvgRoundTripTimeInMs           | The daily average round-trip time in milliseconds for the most recent day. |
| DailyDroppedConnectionsCount        | The daily count of dropped connections for the most recent day. |
| DailyWeeklyUdpUtilization           | The daily average UDP utilization percentage for the most recent day. |
| DroppedConnectionTrend              | The trend in the weekly ratio of dropped connections to the total device count in the region. The trend is calculated using linear regression over four weeks of data. Values can be `Increasing` (slope > 0.1), `Decreasing` (slope < -0.1), or `Static` (otherwise). |
| GatewayRegion                       | The region where the gateway is located. |
| RoundTripTimeTrend                  | The trend in the weekly average round-trip time. The trend is calculated using linear regression over four weeks of data. Values can be `Increasing` (slope > 10), `Decreasing` (slope < -10), or `Static` (otherwise). |
| UDPUtilizationTrend                 | The trend in the weekly average UDP utilization. The trend is calculated using linear regression over four weeks of data. Values can be `Increasing` (slope > 0.1), `Decreasing` (slope < -0.1), or `Static` (otherwise). |
| WeeklyAvailableBandwidthInMbps      | The weekly average available bandwidth in Mbps. The weekly period starts from Sunday to the current day. |
| WeeklyAvgRoundTripTimeInMs          | The weekly average round-trip time in milliseconds. The weekly period starts from Sunday to the current day. |
| WeeklyDroppedConnectionsCount       | The weekly count of dropped connections. The weekly period starts from Sunday to the current day. |
| WeeklyUdpUtilization                | The weekly average UDP utilization percentage. The weekly period starts from Sunday to the current day. |

## Examples

### Request

The following example shows a request.

``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/retrieveConnectionQualityReports
Content-Type: application/json
Content-length: 200

{
    "reportName":"regionalConnectionQualityTrendReport",
    "filter": "",
    "select": ["GatewayRegion", "RoundTripTimeTrend", "AvailableBandwidthTrend", "UDPUtilizationTrend", "DroppedConnectionTrend", "WeeklyAvgRoundTripTimeInMs", "DailyAvgRoundTripTimeInMs", "WeeklyAvailableBandwidthInMbps", "DailyAvailableBandwidthInMbps", "WeeklyUdpUtilization", "DailyWeeklyUdpUtilization", "WeeklyDroppedConnectionsCount", "DailyDroppedConnectionsCount"],
    "search": "",
    "skip": 0,
    "top": 50
}
```

### Response

The following example shows the response.

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
    "TotalRowCount": 2,
    "Schema": [
        {
            "Column": "GatewayRegion",
            "PropertyType": "String"
        },
        {
            "Column": "RoundTripTimeTrend",
            "PropertyType": "String"
        },
        {
            "Column": "AvailableBandwidthTrend",
            "PropertyType": "String"
        },
        {
            "Column": "UDPUtilizationTrend",
            "PropertyType": "String"
        },
        {
            "Column": "DroppedConnectionTrend",
            "PropertyType": "String"
        },
        {
            "Column": "WeeklyAvgRoundTripTimeInMs",
            "PropertyType": "Double"
        },
        {
            "Column": "DailyAvgRoundTripTimeInMs",
            "PropertyType": "Double"
        },
        {
            "Column": "WeeklyAvailableBandwidthInMbps",
            "PropertyType": "Double"
        },
        {
            "Column": "DailyAvailableBandwidthInMbps",
            "PropertyType": "Double"
        },
        {
            "Column": "WeeklyUdpUtilization",
            "PropertyType": "Double"
        },
        {
            "Column": "DailyWeeklyUdpUtilization",
            "PropertyType": "Double"
        },
        {
            "Column": "WeeklyDroppedConnectionsCount",
            "PropertyType": "Int32"
        },
        {
            "Column": "DailyDroppedConnectionsCount",
            "PropertyType": "Int32"
        }
    ],
    "Values" :[
        ["Japan East", "Increasing", "Decreasing", "Static", "Decreasing", "296.25", "350.50", "3.1", "2,1", "51.2", "47.8", "19", "29"],
        ["Southeast Asia", "Decreasing", "Static", "Increasing", "Increasing", "337.14", "299.50", "1.7", "2,2", "33.5", "67.8", "17", "16"],
    ]
}
```
