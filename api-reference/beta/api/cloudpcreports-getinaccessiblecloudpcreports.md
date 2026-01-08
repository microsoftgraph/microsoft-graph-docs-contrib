---
title: "cloudPcReports: getInaccessibleCloudPcReports"
description: "Get inaccessible Cloud PCs with details, including the latest health state, failed connection count, failed health check count, and system status."
author: "guanchenga"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 04/04/2024
---

# cloudPcReports: getInaccessibleCloudPcReports

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get inaccessible Cloud PCs with details, including the latest health state, failed connection count, failed health check count, and system status. An inaccessible Cloud PC represents a Cloud PC that is in an unavailable state (at least one of the health checks failed) or has consecutive user connections failure.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcreports_getinaccessiblecloudpcreports" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcreports-getinaccessiblecloudpcreports-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/reports/getInaccessibleCloudPcReports
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|
| Prefer: include-unknown-enum-members | Enables evolvable enum values beyond the sentinel value. For more information, see [Best practices for working with Microsoft Graph](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations). Optional. |

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that you can use with this method.

| Parameter | Type              | Description                                                                                |
|:----------|:------------------|:-------------------------------------------------------------------------------------------|
| filter    | String            | OData `$filter` syntax. Only `and`, `or`, `gt` ,`ge` and `eq` are currently supported.     |
| groupBy   | String collection | Specifies how to group the reports. If used, must have the same content as the select parameter.|
| orderBy   | String collection | Specifies how to sort the reports.                                                           |
| reportName | cloudPCInaccessibleReportName | The report name. The possible values are: `inaccessibleCloudPcReports`, `inaccessibleCloudPcTrendReport`, `unknownFutureValue`, `regionalInaccessibleCloudPcTrendReport`. The default value is `inaccessibleCloudPcReports` if the **reportName** is empty. You must use the `Prefer: include-unknown-enum-members` request header to get the following members in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `regionalInaccessibleCloudPcTrendReport`. |
| search    | String            | Specifies a String to search for.                                                          |
| select    | String collection | OData `$select` syntax. Represents the selected columns of the reports.                    |
| skip      | Int32             | Number of records to skip.                                                                 |
| top       | Int32             | The number of top records to return.                                                       |

### cloudPCInaccessibleReportName values

| Member                          | Description               |
| :------------------------------ | :------------------------ |
| inaccessibleCloudPcReports    | Indicates a report that contains details of Cloud PCs that are inaccessible, including those with consecutive connection failures or in an unavailable state.    |
| inaccessibleCloudPcTrendReport| Indicates a daily aggregated report for a specified period that contains details of Cloud PCs that are inaccessible, including those with consecutive connection failures or in an unavailable state.                                          |
| unknownFutureValue            | Evolvable enumeration sentinel value. Don't use.         |
| regionalInaccessibleCloudPcTrendReport | Indicates the weekly regional aggregated report of inaccessible Cloud PC trends. |

## Response

If successful, this method returns a `200 OK` response code and a Stream object in the response body.

The following table describes the columns in the returned report when you specify `inaccessibleCloudPcReports` for the **reportName** property in your API call. For `inaccessibleCloudPcReports`, the member values must be in camel case format.

| Member                         | Description                                                         |
|:-------------------------------|:--------------------------------------------------------------------|
| cloudPcId                      | The unique identifier of the Cloud PC.                              |
| cloudPcName                    | The display name of the Cloud PC.                                   |
| deviceHealthStatus             | The current health status of the Cloud PC device.                   |
| deviceHealthStatusDateTime     | The date and time when the device health status was last updated.   |
| provisioningStatus             | The provisioning status of the Cloud PC.                            |
| recentConnectionFailureCount   | The count of recent connection failures for the Cloud PC.           |
| recentDeviceHealthFailureCount | The count of recent device health check failures.                   |
| region                         | The Azure region where the Cloud PC is hosted.                      |
| systemStatus                   | The current system status of the Cloud PC.                          |
| systemStatusDateTime           | The date and time when the system status was last updated.          |
| userPrincipalName              | The user principal name (UPN) of the user assigned to the Cloud PC. |

The following table describes the columns in the returned report when you specify `regionalInaccessibleCloudPcTrendReport` for the **reportName** property in your API call.

| Member | Description |
|:---|:---|
| CloudPcCount                        | The total number of Cloud PCs in the region. |
| HostRegionName                      | The name of the Azure region where the Cloud PCs are hosted. |
| Last24hPeakInaccessibleCloudPcCount | The peak number of inaccessible Cloud PCs during the last 24 hours. |
| WeeklyInaccessibleTrend             | The trend in the weekly ratio of inaccessible Cloud PCs to the total Cloud PC count in the region. The trend is calculated using linear regression over four weeks of data. Values can be `Increasing` (slope > 0.05), `Decreasing` (slope < -0.05), or `Static` (otherwise). |
| WeeklyPeakInaccessibleCloudPcCount  | The peak number of inaccessible Cloud PCs during the current week. The weekly period starts from Sunday to the current day. |

## Examples

### Example 1: Get reports of inaccessible Cloud PCs in a specific region

The following example shows how to get reports of inaccessible Cloud PCs in a specific region.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudpcreports.getInaccessibleCloudPcReports"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/getInaccessibleCloudPcReports
Content-Type: application/json
Content-length: 199

{
  "filter": "region eq 'westus2'",
  "orderBy": [
    "cloudPcId"
  ],
  "select": [
    "cloudPcId",
    "aadDeviceId",
    "cloudPcName",
    "userPrincipalName",
    "provisioningStatus",
    "region",
    "deviceHealthStatus",
    "deviceHealthStatusDateTime",
    "recentDeviceHealthFailureCount",
    "recentConnectionFailureCount",
    "systemStatus",
    "systemStatusDateTime"
  ],
  "top": 10,
  "skip": 0
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/cloudpcreportsgetinaccessiblecloudpcreports-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/cloudpcreportsgetinaccessiblecloudpcreports-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/cloudpcreportsgetinaccessiblecloudpcreports-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/cloudpcreportsgetinaccessiblecloudpcreports-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/cloudpcreportsgetinaccessiblecloudpcreports-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/cloudpcreportsgetinaccessiblecloudpcreports-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
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
      "Column": "cloudPcId",
      "PropertyType": "String"
    },
    {
      "Column": "aadDeviceId",
      "PropertyType": "String"
    },
    {
      "Column": "cloudPcName",
      "PropertyType": "String"
    },
    {
      "Column": "userPrincipalName",
      "PropertyType": "String"
    },
    {
      "Column": "provisioningStatus",
      "PropertyType": "String"
    },
    {
      "Column": "region",
      "PropertyType": "String"
    },
    {
      "Column": "deviceHealthStatus",
      "PropertyType": "String"
    },
    {
      "Column": "deviceHealthStatusDateTime",
      "PropertyType": "DateTime"
    },
    {
      "Column": "recentDeviceHealthFailureCount",
      "PropertyType": "Int32"
    },
    {
      "Column": "recentConnectionFailureCount",
      "PropertyType": "Int64"
    },
    {
      "Column": "systemStatus",
      "PropertyType": "String"
    },
    {
      "Column": "systemStatusDateTime",
      "PropertyType": "DateTime"
    }
  ],
  "Values": [
    [
      "04e279c5-b228-4700-93c3-6f1339c7c86d",
      "a8f78191-8e43-4165-9191-16867d372161",
      "CPC-test1-VGTEK",
      "bob@fabrikam.com",
      "Provisioned",
      "westus2",
      "ErrorVMNotRunning",
      "2023-06-26T03:55:04",
      3,
      0,
      "",
      null
    ],
    [
      "818ff73d-9764-4412-ad99-fc65a396daf3",
      "daefef60-a912-4180-a5c0-f607e346878f",
      "CPC-test2-C84W3",
      "megan@fabrikam.com",
      "Provisioned",
      "westus2",
      "ErrorVMNotRunning",
      "2023-06-26T04:03:49",
      3,
      0,
      "",
      null
    ]
  ]
}
```

### Example 2: Get the weekly regional aggregated report of inaccessible Cloud PC trends

The following example shows how to get the weekly regional aggregated report of inaccessible Cloud PC trends.

#### Request

The following example shows a request.

``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/getInaccessibleCloudPcReports
Content-Type: application/json
Prefer: include-unknown-enum-members

{
  "reportName": "regionalInaccessibleCloudPcTrendReport",
  "filter": "",
  "select": [
    "HostRegionName",
    "CloudPcCount",
    "WeeklyPeakInaccessibleCloudPcCount",
    "Last24hPeakInaccessibleCloudPcCount",
    "WeeklyInaccessibleTrend"
  ],
  "search": "",
  "skip": 0,
  "top": 50
}
```

#### Response

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
      "Column": "HostRegionName",
      "PropertyType": "String"
    },
    {
      "Column": "CloudPcCount",
      "PropertyType": "Int64"
    },
    {
      "Column": "WeeklyPeakInaccessibleCloudPcCount",
      "PropertyType": "Int64"
    },
    {
      "Column": "Last24hPeakInaccessibleCloudPcCount",
      "PropertyType": "Int64"
    },
    {
      "Column": "WeeklyInaccessibleTrend",
      "PropertyType": "String"
    }
  ],
  "Values": [
    [ "Japan East", 46, 10, 5, "Increasing" ],
    [ "East US", 1, 0, 0, "Decreasing" ]
  ]
}
```

