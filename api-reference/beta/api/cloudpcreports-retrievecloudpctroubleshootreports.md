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
|reportName|[cloudPCTroubleshootReportType](../resources/cloudpcreports.md#cloudpctroubleshootreporttype-values)|The report name. The possible values are: `troubleshootGetLatestDeviceReport`, `troubleshootGetProvisionCountReport`, `troubleshootGetRegionFilterQueryReport`, `troubleshootGetCloudPCTypeFilterQueryReport`, `troubleshootTenantGlobalFilterReport`, `troubleshootTenantNetworkTrendReport`, `troubleshootTenantNetworkAggregatedReport`, `troubleshootTenantConnectionFailureRateTrendReport`, `troubleshootTenantConnectionFailureRateAggregatedReport`, `troubleshootTenantConnectionCountTrendReport`, `troubleshootTenantConnectionCountAggregatedReport`, `troubleshootTenantCloudPCHealthTrendReport`, `troubleshootTenantCloudPCHealthAggregatedReport`, `troubleshootTenantActiveConnectionCountTrendReport`, `troubleshootTenantActiveConnectionCountAggregatedReport`, `troubleshootTenantMTTFTrendReport`, `troubleshootTenantMTTFAggregatedReport`, `troubleshootTenantMTTRTrendReport`, `troubleshootTenantMTTRAggregatedReport`, `troubleshootTenantRemoteSignInTimeTrendReport`, `troubleshootTenantRemoteSignInTimeAggregatedReport`, `troubleshootConfigurationConnectionCountTrendReport`, `troubleshootConfigurationTotalConnectionCountBarReport`, `troubleshootConfigurationGlobalFilterReport`, `troubleshootConnectionConfigurationOfViewDataTableReport`, `troubleshootEventsOfViewDataTableReport`, `troubleshootTenantMetricsOfViewDataTableReport`, `troubleshootCloudPCMetricsOfViewDataTableReport`, `troubleshootTenantEnvironmentMetricsOfViewDataTableReport`, `troubleshootCloudPCEnvironmentMetricsOfViewDataTableReport`, `troubleshootConfigurationConnectionCountTrendV1Report`, `troubleshootConfigurationTotalConnectionCountBarV1Report`, `troubleshootConfigurationGlobalFilterV1Report`, `troubleshootConnectionConfigurationOfViewDataTableV1Report`, `troubleshootEnvironmentOverviewOfViewDataTableReport`, `troubleshootTenantConnectedDevicesOfViewDataTableReport`, `troubleshootCloudPCNetworkTrendReport`, `troubleshootCloudPCNetworkAggregatedReport`, `troubleshootCloudPCErrorTrendReport`, `troubleshootCloudPCErrorAggregatedReport`, `troubleshootCloudPCDurationTrendReport`, `troubleshootCloudPCDurationAggregatedReport`, `troubleshootCloudPCListReport`, `troubleshootCloudPCHealthTrendReport`, `troubleshootMatchedUserReport`, `troubleshootMatchedCloudPCReport`, `troubleshootUserListReport`, `unknownFutureValue`. The default value is `troubleshootGetLatestDeviceReport`.|
|search|String|The search string. Optional.|
|select|String collection|OData `$select` syntax. The selected columns of the reports. Optional.|
|skip|Int32|Number of records to skip. Optional.|
|top|Int32|The number of top records to return. If not specified, the default limit is 25, with a maximum of 100. Optional.|

## Response

If successful, this action returns a `200 OK` response code and a Stream in the response body.

### Tenant Reports

The following table describes the columns in the returned report when you specify `troubleshootTenantGlobalFilterReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| TenantId                    | The unique identifier of the tenant.          |
| PolicyName                  | The name of the policy applied.               |
| Region                      | The region where the Cloud PC is located.     |
| UserSettingName             | The name of the user setting configuration.   |
| ServicePlanType             | The Cloud PC service plan type (FrontlineShared, FrontlineDedicated, Enterprise, or Reserve). |
| ServicePlanName             | The name of the service plan.                 |
| OSBuildVersion              | The operating system build version.           |
| AADJoinType                 | The Azure Active Directory join type.         |
| ImageName                   | The name of the OS image used.                |
| GatewayRegion               | The region where the gateway is located.      |
| ClientOS                    | The client operating system.                  |
| ClientType                  | The type of client device.                    |
| TransportType               | The transport protocol type used.             |

The following table describes the columns in the returned report when you specify `troubleshootTenantNetworkTrendReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| AvgRoundTripTimeInMs        | The average round trip time in milliseconds.  |
| TenantId                    | The unique identifier of the tenant.          |
| EventDateTime               | The date and time when the event occurred.    |
| GroupColumn                 | The metric used for grouping data (PolicyName, Region, UserSettingName, ServicePlanType, ServicePlanName, OSBuildVersion, AADJoinType, ImageName, GatewayRegion, ClientOS, ClientType, TransportType, CloudPCEndpointCountryRegion, CloudPCEndpointState, or CloudPCEndpointCity). |

The following table describes the columns in the returned report when you specify `troubleshootTenantNetworkAggregatedReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| AvgRoundTripTimeInMs        | The average round trip time in milliseconds.  |
| TenantId                    | The unique identifier of the tenant.          |
| GroupColumn                 | The metric used for grouping data (PolicyName, Region, UserSettingName, ServicePlanType, ServicePlanName, OSBuildVersion, AADJoinType, ImageName, GatewayRegion, ClientOS, ClientType, TransportType, CloudPCEndpointCountryRegion, CloudPCEndpointState, or CloudPCEndpointCity). |

The following table describes the columns in the returned report when you specify `troubleshootTenantConnectionFailureRateTrendReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| SuccessCount                | The number of successful connections.          |
| FailCount                   | The number of failed connections.              |
| CompletedConnectionCount    | The total number of completed connection attempts. |
| ConnectionFailureRate       | The rate of connection failures as a percentage. |
| TenantId                    | The unique identifier of the tenant.          |
| EventDateTime               | The date and time when the event occurred.    |
| GroupColumn                 | The metric used for grouping data (PolicyName, Region, UserSettingName, ServicePlanType, ServicePlanName, OSBuildVersion, AADJoinType, ImageName, GatewayRegion, ClientOS, ClientType, TransportType, CloudPCEndpointCountryRegion, CloudPCEndpointState, or CloudPCEndpointCity). |

The following table describes the columns in the returned report when you specify `troubleshootTenantConnectionFailureRateAggregatedReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| SuccessCount                | The number of successful connections.          |
| FailCount                   | The number of failed connections.              |
| CompletedConnectionCount    | The total number of completed connection attempts. |
| ConnectionFailureRate       | The rate of connection failures as a percentage. |
| TenantId                    | The unique identifier of the tenant.          |
| GroupColumn                 | The metric used for grouping data (PolicyName, Region, UserSettingName, ServicePlanType, ServicePlanName, OSBuildVersion, AADJoinType, ImageName, GatewayRegion, ClientOS, ClientType, TransportType, CloudPCEndpointCountryRegion, CloudPCEndpointState, or CloudPCEndpointCity). |

The following table describes the columns in the returned report when you specify `troubleshootTenantCloudPCHealthTrendReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| HealthPercentage            | The health percentage of Cloud PC systems.    |
| TenantId                    | The unique identifier of the tenant.          |
| EventDateTime               | The date and time when the event occurred.    |
| GroupColumn                 | The metric used for grouping data (PolicyName, Region, UserSettingName, ServicePlanType, ServicePlanName, OSBuildVersion, AADJoinType, ImageName, GatewayRegion, ClientOS, ClientType, TransportType, CloudPCEndpointCountryRegion, CloudPCEndpointState, or CloudPCEndpointCity). |

The following table describes the columns in the returned report when you specify `troubleshootTenantCloudPCHealthAggregatedReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| HealthPercentage            | The health percentage of Cloud PC systems.    |
| TenantId                    | The unique identifier of the tenant.          |
| GroupColumn                 | The metric used for grouping data (PolicyName, Region, UserSettingName, ServicePlanType, ServicePlanName, OSBuildVersion, AADJoinType, ImageName, GatewayRegion, ClientOS, ClientType, TransportType, CloudPCEndpointCountryRegion, CloudPCEndpointState, or CloudPCEndpointCity). |

The following table describes the columns in the returned report when you specify `troubleshootTenantActiveConnectionCountTrendReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| TotalActiveConnectionCountAvg | The average count of total active connections. |
| TenantId                    | The unique identifier of the tenant.          |
| EventDateTime               | The date and time when the event occurred.    |
| GroupColumn                 | The metric used for grouping data (PolicyName, Region, UserSettingName, ServicePlanType, ServicePlanName, OSBuildVersion, AADJoinType, ImageName, GatewayRegion, ClientOS, ClientType, TransportType, CloudPCEndpointCountryRegion, CloudPCEndpointState, or CloudPCEndpointCity). |

The following table describes the columns in the returned report when you specify `troubleshootTenantActiveConnectionCountAggregatedReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| TotalActiveConnectionCountAvg | The average count of total active connections. |
| TenantId                    | The unique identifier of the tenant.          |
| GroupColumn                 | The metric used for grouping data (PolicyName, Region, UserSettingName, ServicePlanType, ServicePlanName, OSBuildVersion, AADJoinType, ImageName, GatewayRegion, ClientOS, ClientType, TransportType, CloudPCEndpointCountryRegion, CloudPCEndpointState, or CloudPCEndpointCity). |

The following table describes the columns in the returned report when you specify `troubleshootTenantMTTFTrendReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| MeanTimeToFailInHour        | The mean time to failure in hours.            |
| TenantId                    | The unique identifier of the tenant.          |
| EventDateTime               | The date and time when the event occurred.    |
| GroupColumn                 | The metric used for grouping data (PolicyName, Region, UserSettingName, ServicePlanType, ServicePlanName, OSBuildVersion, AADJoinType, ImageName, GatewayRegion, ClientOS, ClientType, TransportType, CloudPCEndpointCountryRegion, CloudPCEndpointState, or CloudPCEndpointCity). |

The following table describes the columns in the returned report when you specify `troubleshootTenantMTTFAggregatedReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| MeanTimeToFailInHour        | The mean time to failure in hours.            |
| TenantId                    | The unique identifier of the tenant.          |
| GroupColumn                 | The metric used for grouping data (PolicyName, Region, UserSettingName, ServicePlanType, ServicePlanName, OSBuildVersion, AADJoinType, ImageName, GatewayRegion, ClientOS, ClientType, TransportType, CloudPCEndpointCountryRegion, CloudPCEndpointState, or CloudPCEndpointCity). |

The following table describes the columns in the returned report when you specify `troubleshootTenantMTTRTrendReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| MeanTimeToRepairInSecond    | The mean time to repair in seconds.           |
| TenantId                    | The unique identifier of the tenant.          |
| EventDateTime               | The date and time when the event occurred.    |
| GroupColumn                 | The metric used for grouping data (PolicyName, Region, UserSettingName, ServicePlanType, ServicePlanName, OSBuildVersion, AADJoinType, ImageName, GatewayRegion, ClientOS, ClientType, TransportType, CloudPCEndpointCountryRegion, CloudPCEndpointState, or CloudPCEndpointCity). |

The following table describes the columns in the returned report when you specify `troubleshootTenantMTTRAggregatedReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| MeanTimeToRepairInSecond    | The mean time to repair in seconds.           |
| TenantId                    | The unique identifier of the tenant.          |
| GroupColumn                 | The metric used for grouping data (PolicyName, Region, UserSettingName, ServicePlanType, ServicePlanName, OSBuildVersion, AADJoinType, ImageName, GatewayRegion, ClientOS, ClientType, TransportType, CloudPCEndpointCountryRegion, CloudPCEndpointState, or CloudPCEndpointCity). |

The following table describes the columns in the returned report when you specify `troubleshootTenantRemoteSignInTimeTrendReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| RemoteSignInTimeInSecondAvg | The average remote sign-in time in seconds.   |
| TenantId                    | The unique identifier of the tenant.          |
| EventDateTime               | The date and time when the event occurred.    |
| GroupColumn                 | The metric used for grouping data (PolicyName, Region, UserSettingName, ServicePlanType, ServicePlanName, OSBuildVersion, AADJoinType, ImageName, GatewayRegion, ClientOS, ClientType, TransportType, CloudPCEndpointCountryRegion, CloudPCEndpointState, or CloudPCEndpointCity). |

The following table describes the columns in the returned report when you specify `troubleshootTenantRemoteSignInTimeAggregatedReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| RemoteSignInTimeInSecondAvg | The average remote sign-in time in seconds.   |
| TenantId                    | The unique identifier of the tenant.          |
| GroupColumn                 | The metric used for grouping data (PolicyName, Region, UserSettingName, ServicePlanType, ServicePlanName, OSBuildVersion, AADJoinType, ImageName, GatewayRegion, ClientOS, ClientType, TransportType, CloudPCEndpointCountryRegion, CloudPCEndpointState, or CloudPCEndpointCity). |

### Configuration Reports

The following table describes the columns in the returned report when you specify `troubleshootConfigurationGlobalFilterReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| MockColumn1                 | MockDescription for configuration report.     |
| MockColumn2                 | MockDescription for configuration report.     |
| MockColumn3                 | MockDescription for configuration report.     |

The following table describes the columns in the returned report when you specify `troubleshootTenantConnectionCountTrendReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| MockConnectionCount         | MockDescription for connection count trend.   |
| MockPeakConnections         | MockDescription for peak connections.         |
| MockConnectionTrend         | MockDescription for connection trend data.    |

The following table describes the columns in the returned report when you specify `troubleshootTenantConnectionCountAggregatedReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| MockTotalCount              | MockDescription for total connection count.   |
| MockAverageCount            | MockDescription for average count.            |
| MockCountSummary            | MockDescription for count summary.            |


### CloudPC Reports

The following table describes the columns in the returned report when you specify `troubleshootCloudPCNetworkTrendReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| MockColumn1                 | MockDescription for CloudPC report.           |
| MockColumn2                 | MockDescription for CloudPC report.           |
| MockColumn3                 | MockDescription for CloudPC report.           |

### User/Device Reports

The following table describes the columns in the returned report when you specify `troubleshootMatchedUserReport` for the **reportName** property in your API call.

| Member                             | Description                                                                          |
|:-----------------------------------|:-------------------------------------------------------------------------------------|
| CpuIssueCloudPcCount               | The number of Cloud PC instances with CPU issues. |
| MockColumn1                 | MockDescription for user/identity report.       |
| MockColumn2                 | MockDescription for user/identity report.       |
| MockColumn3                 | MockDescription for user/identity report.       |

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
