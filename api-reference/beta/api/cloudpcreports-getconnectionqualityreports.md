---
title: "cloudPcReports: getConnectionQualityReports"
description: "Get the overall connection quality reports for all devices within a current tenant during a given time period, including metrics like the average round trip time (P50), average available bandwidth, and UDP connection percentage."
author: "RuiHou105"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPcReports: getConnectionQualityReports

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the overall connection quality reports for all devices within a current tenant during a given time period, including metrics like the average round trip time (P50), average available bandwidth, and UDP connection percentage. Get also other real-time metrics such as last connection round trip time, last connection client IP, last connection gateway, and last connection protocol.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

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
POST /deviceManagement/virtualEndpoint/reports/getConnectionQualityReports
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
|filter|String|OData `$filter` syntax. Supported filters include: `and`, `or`, `lt`, `le`, `gt`, `ge`, and `eq`.|
|groupBy|String collection|Specify how to group the reports. If used, must have the same contents as the **select** parameter.|
|orderBy|String collection|Specify how to sort the reports.|
|search|String|Specifies a String to search|
|select|String collection|OData `$select` syntax. The selected columns of the reports. |
|skip|Int32|Number of records to skip.|
|top|Int32|The number of top records to return.|

## Response

If successful, this action returns a `200 OK` response code and a Stream in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "cloudpcreportsthis.getconnectionqualityreports"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/getConnectionQualityReports
Content-Type: application/json
Content-length: 200

{
  "filter": "EventDateTime gt datetime'2023-04-16T07:40:41.694Z'",
  "search": "",
  "select": [
    "CloudPcId",
    "ManagedDeviceName",
    "AvgRoundTripTimeInMsP50",
    "LastConnectionRoundTripTimeInMs",
    "AvgAvailableBandwidthInMBpsP50",
    "LastConnectionAvailableBandWidthInMSps",
    "AvgRemoteSignInTimeInSecP50",
    "UDPConnectionPercentage",
    "LastConnectionGateway",
    "LastConnectionProtocol",
    "EventDateTime"
  ],
  "skip": "0",
  "top": "25",
  "orderBy": []
}
```

### Response

The following is an example of the response.

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
  "TotalRowCount": 3,
  "Schema": [
    {
      "Column": "CloudPcId",
      "PropertyType": "String"
    },
    {
      "Column": "ManagedDeviceName",
      "PropertyType": "String"
    },
    {
      "Column": "AvgRoundTripTimeInMsP50",
      "PropertyType": "Double"
    },
    {
      "Column": "LastConnectionRoundTripTimeInMs",
      "PropertyType": "Double"
    },
    {
      "Column": "AvgAvailableBandwidthInMBpsP50",
      "PropertyType": "Double"
    },
    {
      "Column": "LastConnectionAvailableBandWidthInMSps",
      "PropertyType": "Double"
    },
    {
      "Column": "AvgRemoteSignInTimeInSecP50",
      "PropertyType": "Double"
    },
    {
      "Column": "UDPConnectionPercentage",
      "PropertyType": "Double"
    },
    {
      "Column": "LastConnectionGateway",
      "PropertyType": "String"
    },
    {
      "Column": "LastConnectionProtocol",
      "PropertyType": "String"
    },
    {
      "Column": "EventDateTime",
      "PropertyType": "DateTime"
    }
  ],
  "Values": [
    [
      "1", "f5ff445f-7488-40f8-8ab9-ee784a9c1f33", "Cloud PC-Ana Bowman", "110", "90", "0.32", "0.41", "10.15", "0.80", "East US 2", "192.168.1.01", "UDP (STUN)", "2023-04-17T00:00:00Z"
    ],
    [
      "1", "f5ff445f-7488-40f8-8ab9-ee784a9c1f33", "Cloud PC-Isabel Bowman", "201", "72", "1.22", "1.7", "10.37", "0.62", "West US 3", "192.168.1.02", "UDP (STUN)", "2023-04-18T00:00:00Z"
    ],
    [
      "1", "f5ff445f-7488-40f8-8ab9-ee784a9c1f33", "Cloud PC-Mary Bowman", "213", "200", "1.74", "0.88", "12.35", "0.45", "East US 2", "192.168.1.03", "TCP", "2023-04-19T00:00:00Z"
    ]
  ]
}
```
