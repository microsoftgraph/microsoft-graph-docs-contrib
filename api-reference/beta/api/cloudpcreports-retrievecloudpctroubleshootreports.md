---
title: "cloudPcReports: retrieveCloudPcTroubleshootReports"
description: "Get troubleshooting reports for Cloud PCs."
author: "abbyzhccc"
ms.date: 12/10/2024
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# cloudPcReports: retrieveCloudPcTroubleshootReports

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get troubleshooting reports for Cloud PCs. You can get a regional troubleshooting report, a report with troubleshooting details, a report with troubleshooting trends, or a report on the number of troubleshooting issues.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcreports_retrievecloudpctroubleshootreports" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcreports-retrievecloudpctroubleshootreports-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/reports/retrieveCloudPcTroubleshootReports
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that you can use with this action.

|Parameter|Type|Description|
|:--------|:---|:----------|
|filter|String|OData `$filter` syntax. Supported filters are: `and`, `or`, `gt` ,`ge`, and `eq`. Optional.|
|groupBy|String collection|A list of columns that describe how to group the data in the report. Optional.|
|orderBy|String collection|Specifies the order by column name. Optional.|
|reportName|[cloudPCTroubleshootReportType](../resources/cloudpcreports.md#cloudpctroubleshootreporttype-values)|The report name. The possible values are: `troubleshootDetailsReport`, `troubleshootTrendCountReport`, `troubleshootRegionalReport`, `unknownFutureValue`, `troubleshootIssueCountReport`. Use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `troubleshootIssueCountReport`. The default value is `troubleshootDetailsReport`.|
|search|String|The search string. Optional.|
|select|String collection|OData `$select` syntax. The selected columns of the reports. Optional.|
|skip|Int32|Number of records to skip. Optional.|
|top|Int32|The number of top records to return. If not specified, the default limit is 25, with a maximum of 100. Optional.|

## Response

If successful, this action returns a `200 OK` response code and a Stream in the response body.

The following table describes the columns in the returned report when you specify `troubleshootRegionalReport` for the **reportName** property in your API call.

| Member                       | Description                                                                           |
|:-----------------------------|:--------------------------------------------------------------------------------------|
| AvgBandwidthInMbps           | The average available bandwidth in Mbps of certain `HostRegion`-`GatewayRegion` pair.     |
| AvgRoundTripTimeInMs         | The average round trip time in milliseconds of certain `HostRegion`-`GatewayRegion` pair. |
| BandwidthIssueCount          | The number of Cloud PC instances with available bandwidth issues.                     |
| BandwidthStabilityIssueCount | The number of Cloud PC instances with bandwidth stability issues.                     |
| ConnectErrorIssueCount       | The number of Cloud PC instances with connection error issues.                        |
| ConnectionErrorCount         | The number of connection errors in certain `HostRegion`-`GatewayRegion` pair.             |
| ConnectionQualityIssueCount  | The number of Cloud PC instances with connection quality issues.                      |
| GatewayRegion                | The region where the gateway is located.                                              |
| HostRegion                   | The region where the Cloud PC provision is located.                                   |
| RTTIssueCount                | The number of Cloud PC instances with round-trip time issues.                         |
| RTTStabilityIssueCount       | The number of Cloud PC instances with round-trip time stability issues.               |
| StabilityIssueCount          | The number of Cloud PC instances with stability issues.                               |

The following table describes the columns in the returned report when you specify `troubleshootDetailsReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| AvailableBandwidthInMbpsAvg | The average available bandwidth in Mbps.       |
| ConnectionErrorCount        | The number of connection errors.               |
| CurrentCPU                  | The current CPU usage of the resource.         |
| CurrentDiskInGB             | The current disk usage in GB.                  |
| CurrentRamInGB              | The current RAM usage in GB.                   |
| CurrentSize                 | The current size of the resource.              |
| HasNetworkIssue             | Indicates a network issue.                     |
| HasPerformanceIssue         | Indicates a performance issue.                 |
| HasReliabilityIssue         | Indicates a reliability issue.                 |
| ProvisionPolicyName         | The name of the provision policy.              |
| RecommendedRamInGB          | The recommended RAM usage in GB.               |
| RecommendedCPU              | The recommended CPU usage for the resource.    |
| RecommendedDiskInGB         | The recommended disk usage in GB.              |
| RecommendedSize             | The recommended size for the resource.         |
| RoundTripTimeInMsAvg        | The average round-trip time in milliseconds.   |
| UsageInsight                | Insights on the current usage of the resource. |

The following table describes the columns in the returned report when you specify `troubleshootTrendCountReport` for the **reportName** property in your API call.

| Member                             | Description                                                                          |
|:-----------------------------------|:-------------------------------------------------------------------------------------|
| CpuIssueCloudPcCount               | The number of Cloud PC instances with CPU issues.                                    |
| CpuIssueTrend                      | The trend in the weekly number of Cloud PC instances with CPU issues.                |
| ConnectionQualityIssueCloudPcCount | The number of Cloud PC instances with connection quality issues.                     |
| ConnectionQualityIssueTrend        | The trend in the weekly number of Cloud PC instances with connection quality issues. |
| MemoryIssueCloudPcCount            | The number of Cloud PC instances with memory issues.                                 |
| MemoryIssueTrend                   | The trend in the weekly number of Cloud PC instances with memory issues.             |
| NetworkIssueCount                  | The number of network issues.                                                        |
| PerformanceIssueCount              | The number of performance issues.                                                    |
| ReliabilityIssueCount              | The number of reliability issues.                                                    |
| RTTIssueCloudPcCount               | The number of Cloud PC instances with round-trip time issues.                        |
| RTTIssueTrend                      | The trend in the weekly number of Cloud PC instances with round-trip time issues.    |
| StabilityIssueCloudPcCount         | The number of Cloud PC instances with stability issues.                              |
| StabilityIssueTrend                | The trend in the weekly number of Cloud PC instances with stability issues.          |
| TotalImpactedCloudPcCount          | The total count of impacted Cloud PCs.                                               |

The following table describes the columns in the returned report when you specify `troubleshootIssueCountReport` for the **reportName** property in your API call.

| Member                      | Description                                      |
|:----------------------------|:-------------------------------------------------|
| AsofDate                    | The date and time of when the data was recorded. |
| ConnectionQualityIssueCount | The number of connection quality issues.         |
| CpuIssueCount               | The number of CPU issues.                        |
| MemoryIssueCount            | The number of memory issues.                     |
| NetworkIssueCount           | The number of network issues.                    |
| PerformanceIssueCount       | The number of performance issues.                |
| ReliabilityIssueCount       | The number of reliability issues.                |
| RTTIssueCount               | The number of round-trip time issues.            |
| StabilityIssueCount         | The number of stability issues.                  |

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudpcreports.retrieveCloudPcTroubleshootReports"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/retrieveCloudPcTroubleshootReports
Content-Type: application/json

{
  "reportName": "troubleshootDetailsReport",
  "select": [
    "CloudPcId",
    "ManagedDeviceName",
    "UserPrincipalName",
    "UsageInsight",
    "CurrentSize",
    "CurrentCPU",
    "CurrentRamInGB",
    "CurrentDiskInGB",
    "RecommendedSize",
    "RecommendedCPU",
    "RecommendedRamInGB",
    "RecommendedDiskInGB",
    "ProvisionPolicyName",
    "RoundTripTimeInMsAvg",
    "AvailableBandwidthInMbpsAvg"
  ],
  "search": "",
  "skip": 0,
  "top": 50
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/cloudpcreportsretrievecloudpctroubleshootreports-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/cloudpcreportsretrievecloudpctroubleshootreports-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/cloudpcreportsretrievecloudpctroubleshootreports-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/cloudpcreportsretrievecloudpctroubleshootreports-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/cloudpcreportsretrievecloudpctroubleshootreports-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/cloudpcreportsretrievecloudpctroubleshootreports-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
Content-Type: application/json

{
  "TotalRowCount": 1,
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
      "Column": "UserPrincipalName",
      "PropertyType": "String"
    },
    {
      "Column": "UsageInsight",
      "PropertyType": "String"
    },
    {
      "Column": "CurrentSize",
      "PropertyType": "Int"
    },
    {
      "Column": "CurrentCPU",
      "PropertyType": "Int"
    },
    {
      "Column": "CurrentRamInGB",
      "PropertyType": "Int"
    },
    {
      "Column": "CurrentDiskInGB",
      "PropertyType": "Int"
    },
    {
      "Column": "RecommendedSize",
      "PropertyType": "String"
    },
    {
      "Column": "RecommendedCPU",
      "PropertyType": "Int"
    },
    {
      "Column": "RecommendedRamInGB",
      "PropertyType": "Int"
    },
    {
      "Column": "RecommendedDiskInGB",
      "PropertyType": "Int"
    },
    {
      "Column": "ProvisionPolicyName",
      "PropertyType": "String"
    },
    {
      "Column": "RoundTripTimeInMsAvg",
      "PropertyType": "Double"
    },
    {
      "Column": "AvailableBandwidthInMbpsAvg",
      "PropertyType": "Double"
    }
  ],
  "Values": [
    [
      "f5ff445f-7488-40f8-8ab9-ee784a9c1f33",
      "Cloud PC-Ana Bowman",
      "ana@contoso.com",
      "Performance",
      "2",
      "4",
      "64",
      "Undersized",
      "4",
      "8",
      "128",
      "policy1",
      "200.1",
      "50.65"
    ]
  ]
}
```
