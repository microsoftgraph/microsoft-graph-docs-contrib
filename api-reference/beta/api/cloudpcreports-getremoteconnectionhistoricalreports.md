---
title: "cloudPcReports: getRemoteConnectionHistoricalReports"
description: "Get the remote connection history records of a Cloud PC during a given period."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPcReports: getRemoteConnectionHistoricalReports
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the remote connection history records of a Cloud PC during a given period.

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
POST /deviceManagement/virtualEndpoint/reports/getRemoteConnectionHistoricalReports
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
  "name": "cloudpcreportsthis.getremoteconnectionhistoricalreports"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/getRemoteConnectionHistoricalReports
Content-Type: application/json
Content-length: 199

{
    "filter": "CloudPcId eq '40f9315c-5b63-4126-9f89-b7dcb14fffff' and SignInDateTime gt datetime'2022-09-09T01:22:51.849Z'",
    "select": [
        "SignInDateTime",
        "SignOutDateTime",
        "UsageInHour",
        "RoundTripTimeInMsP50",
        "AvailableBandwidthInMBpsP50",
        "RemoteSignInTimeInSec",
    ],
    "top": 25,
    "skip": 0,
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/cloudpcreportsthisgetremoteconnectionhistoricalreports-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/cloudpcreportsthisgetremoteconnectionhistoricalreports-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/cloudpcreportsthisgetremoteconnectionhistoricalreports-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/cloudpcreportsthisgetremoteconnectionhistoricalreports-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/cloudpcreportsthisgetremoteconnectionhistoricalreports-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/cloudpcreportsthisgetremoteconnectionhistoricalreports-powershell-snippets.md)]
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
    "TotalRowCount": 4,
    "Schema": [
        {
            "Column": "SignInDateTime",
            "PropertyType": "DateTime"
        },
        {
            "Column": "SignOutDateTime",
            "PropertyType": "DateTime"
        },
        {
            "Column": "UsageInHour",
            "PropertyType": "Double"
        },
        {
            "Column": "RoundTripTimeInMsP50",
            "PropertyType": "Double"
        },
        {
            "Column": "AvailableBandwidthInMBpsP50",
            "PropertyType": "Double"
        },
        {
            "Column": "RemoteSignInTimeInSec",
            "PropertyType": "Double"
        }
    ],
    "Values": [
        [
            "2022-09-06T05:28:52",
            "2022-09-06T07:03:16",
            1.5733333333333333,
            293.0,
            5.22265625,
            19.606
        ],
        [
            "2022-09-06T13:25:04",
            "2022-09-06T13:25:37",
            0.009166666666666667,
            332.0,
            0.9345703125,
            11.264
        ],
        [
            "2022-09-06T13:26:26",
            "2022-09-06T13:48:00",
            0.3591666666666667,
            304.0,
            3.84765625,
            9.075
        ],
        [
            "2022-09-07T00:17:50",
            "2022-09-07T23:56:44",
            23.648055555555555,
            300.0,
            1.9375,
            10.977
        ]
    ]
}
```

