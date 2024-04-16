---
title: "cloudPcReports: getRemoteConnectionHistoricalReports"
description: "Get the remote connection history records of a Cloud PC during a given period."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# cloudPcReports: getRemoteConnectionHistoricalReports
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the remote connection history records of a Cloud PC during a given period. This report contains data such as signInDateTime, signOutDateTime, usageInHour, remoteSignInTimeInSec and roundTripTimeInMsP50, and so on. This data is aggregated hourly for a specified time period, such as the last seven days.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcreports_getremoteconnectionhistoricalreports" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcreports-getremoteconnectionhistoricalreports-permissions.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|filter|String|OData filter syntax. Supported filters include `and`, `or`, `lt`, `le`, `gt`, `ge` and `eq`. The `CloudPcId` filter is required; for example: `CloudPcId eq xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx`. If this filter is missing, malformed, or invalid, a query config will be thrown.|
|select|String collection|OData select syntax. The columns to include in the report.|
|search|String|The string to search for.|
|groupBy|String collection|A list of columns that describe how to group the data in the report.|
|orderBy|String collection|A list of columns that describe how to sort the data in the report.|
|skip|Int32|Number of records to skip.|
|top|Int32|The top number of records to return.|



## Response

If successful, this action returns a `200 OK` response code and a Stream in the response body.

## Examples

### Request
The following example shows a request.

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
        "RemoteSignInTimeInSec"
    ],
    "top": 25,
    "skip": 0
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/cloudpcreportsthisgetremoteconnectionhistoricalreports-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/cloudpcreportsthisgetremoteconnectionhistoricalreports-cli-snippets.md)]
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

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/cloudpcreportsthisgetremoteconnectionhistoricalreports-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response
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

