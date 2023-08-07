---
title: "cloudPcReports: getRawRemoteConnectionReports "
description: "Get a Cloud PC's raw real-time remote connection report without any calculation or aggregation, such as roundTripTime, available bandwidth. This API is different from getRemoteConnectionHistoricalReports. The getRemoteConnectionHistoricalReports API will return the report that hourly aggregates the raw event data, while getRawRemoteConnectionReports API will directly return the raw event data. The getRawRemoteConnectionReports API aims to give users a clearer and detailed insight into their remote connections."
author: "pihaogong"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPcReports: getRawRemoteConnectionReports
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a Cloud PC's raw real-time remote connection report without any calculation or aggregation, such as roundTripTime, available bandwidth. This API is different from getRemoteConnectionHistoricalReports. The getRemoteConnectionHistoricalReports API will return the report that hourly aggregates the raw event data, while getRawRemoteConnectionReports API will directly return the raw event data. The getRawRemoteConnectionReports API aims to give users a clearer and detailed insight into their remote connections.

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
POST /deviceManagement/virtualEndpoint/reports/getRawRemoteConnectionReports
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
  "name": "cloudpcreportsthis.getrawremoteconnectionreports"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/getRawRemoteConnectionReports
Content-Type: application/json
Content-length: 199

{
    "filter": "ActivityId eq 'cb6ad4c4-8a17-4245-a644-e4436b1ee204'",
    "select":["RoundTripTimeInMs", "AvailableBandwidthInMBps", "SignInDateTime"],
    "skip": 0,
    "top": 50
}
```
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
            "Column": "RoundTripTimeInMs",
            "PropertyType": "Double"
        }
        {
            "Column": "AvailableBandwidthInMBps",
            "PropertyType": "Double"
        },
        {
            "Column": "SignInDateTime",
            "PropertyType": "DateTime"
        }],
    "Values": [
        ["316", "8", "2023-07-03T18:14:34Z"]
    ]
}
```

