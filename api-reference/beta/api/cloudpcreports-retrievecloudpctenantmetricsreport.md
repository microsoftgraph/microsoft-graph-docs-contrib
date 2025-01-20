---
title: "cloudPcReports: retrieveCloudPcTenantMetricsReport"
description: "Get a report related to the performance of Cloud PCs."
author: "YanLemon"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 1/13/2025
---

# cloudPcReports: retrieveCloudPcTenantMetricsReport

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a report related to the performance of Cloud PCs.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcreports-retrieveCloudPcTenantMetricsReport" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcreports-retrievecloudpctenantmetricsreport-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/reports/retrieveCloudPcTenantMetricsReport
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that you can use with this method.

| Parameter  | Type                         | Description                                                                                          |
|:-----------|:-----------------------------|:-----------------------------------------------------------------------------------------------------|
| filter     | String                       | OData `$filter` syntax. Supported filters are: `and`, `or`, `gt`, and `eq`.                          |
| groupBy    | String collection            | Specifies how to group the reports. If used, must have the same content as the **select** parameter. |
| orderBy    | String collection            | Specifies how to sort the reports.                                                                   |
| reportName | cloudPCPerformanceReportName | The report name. The possible values are: `performanceTrendReport`, `unknownFutureValue`, `cloudPcInsightReport`.            |
| search     | String                       | Specifies a String to search.                                                                        |
| select     | String collection            | OData `$select` syntax. The selected columns of the reports.                                         |
| skip       | Int32                        | Number of records to skip.                                                                           |
| top        | Int32                        | Specifies the page size. If not defined, the default is 25, with a maximum of 100.                   |

### cloudPCPerformanceReportName values

| Member                     | Description       |
| :------------------------- | :---------------- |
| performanceTrendReport     | Indicates a daily aggregated report that provides a list of connection quality metrics for Cloud PCs over the past seven days within a tenant. The metrics include `SlowRoundTripTimeCloudPcCount`, `LowUdpConnectionPercentageCount`, `NoTimeConnectedCloudPcCount`, and `LowTimeConnectedCloudPcCount`. Each daily report is an aggregation of the previous 28 days, counted back from the trigger time.  | 
| unknownFutureValue         | Evolvable enumeration sentinel value. Don't use.             |
| cloudPcInsightReport       | Indicates Cloud PC-level configuration data with insights.   |

## Response

If successful, this method returns a `200 OK` response code and a Stream object in the response body.

## Examples

### Example 1: TODO

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "cloudpcreportsthis.retrieveCloudPcTenantMetricsReport.performanceTrendReport"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/retrieveCloudPcTenantMetricsReport
Content-Type: application/json

{
  "reportName": "performanceTrendReport",
  "filter": "EventDateTime gt datetime'2023-10-13T00:00:00.000Z'",
  "select": [
    "EventDateTime",
    "SlowRoundTripTimeCloudPcCount",
    "LowUdpConnectionPercentageCount",
    "NoActiveTimeConnectedCount",
    "LowActiveTimeConnectedCount"
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
} -->
``` http
HTTP/1.1 200 OK
Content-Type: application/octet-stream

{
  "TotalRowCount": 2,
  "Schema": [
    {
      "Column": "EventDateTime",
      "PropertyType": "DateTime"
    },
    {
      "Column": "SlowRoundTripTimeCloudPcCount",
      "PropertyType": "Int64"
    },
    {
      "Column": "LowUdpConnectionPercentageCount",
      "PropertyType": "Int64"
    },
    {
      "Column": "NoActiveTimeConnectedCount",
      "PropertyType": "Int64"
    },
    {
      "Column": "LowActiveTimeConnectedCount",
      "PropertyType": "Int64"
    }
  ],
  "Values": [
    [
      "2023-10-16T00:00:00Z",
      3,
      8,
      3,
      92
    ],
    [
      "2023-10-15T00:00:00Z",
      4,
      6,
      5,
      91
    ]
  ]
}
```

### Example 2: TODO

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "cloudpcreportsthis.retrieveCloudPcTenantMetricsReport.cloudPcInsightReport"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/retrieveCloudPcTenantMetricsReport

{
  "reportName": "cloudPcInsightReport",
  "filter": "",
  "select": [
    "ManagedDeviceName",
    "DeviceId",
    "ClientOS",
    "ClientVersion",
    "MultimediaRedirectVersion",
    "TeamsClientVersion",
    "HostOSVersion",
    "HostSxSStackVersion",
    "HostAgentVersion",
    "PolicyName",
    "UserSettingName",
    "HostRegion",
    "AzureNetworkConnectName"
  ],
  "search": "",
  "skip": 0,
  "top": 50
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Edm.Stream"
} -->
``` http
HTTP/1.1 200 OK

{
  "TotalRowCount": 1,
  "Schema": [
    {
      "Column": "ManagedDeviceName",
      "PropertyType": "String"
    },
    {
      "Column": "DeviceId",
      "PropertyType": "String"
    },
    {
      "Column": "ClientOS",
      "PropertyType": "String"
    },
    {
      "Column": "ClientVersion",
      "PropertyType": "String"
    },
    {
      "Column": "MultimediaRedirectVersion",
      "PropertyType": "String"
    },
    {
      "Column": "TeamsClientVersion",
      "PropertyType": "String"
    },
    {
      "Column": "HostOSVersion",
      "PropertyType": "String"
    },
    {
      "Column": "HostOSVersion",
      "PropertyType": "String"
    },
    {
      "Column": "HostSxSStackVersion",
      "PropertyType": "String"
    },
    {
      "Column": "HostAgentVersion",
      "PropertyType": "String"
    },
    {
      "Column": "PolicyName",
      "PropertyType": "String"
    },
    {
      "Column": "UserSettingName",
      "PropertyType": "String"
    },
    {
      "Column": "HostRegion",
      "PropertyType": "String"
    },
    {
      "Column": "AzureNetworkConnectName",
      "PropertyType": "String"
    }
  ],
  "Values": [
    [
      "CPC_96718d38-74ef-4026-8d54-508d52901763",
      "96718d38-74ef-4026-8d54-508d52901763",
      "Windows 10",
      "2.0.02817.898",
      "1.0.2311.2004",
      "1.7.00.26062",
      "10.0.22631.4169",
      "rdp-sxs240705700",
      "1.0.9742.1900_release",
      "zengyantestPolicy",
      "mingjunTest",
      "eastus",
      "CRUD_TestIntuneAdminWSubReader"
    ]
  ]
}
```