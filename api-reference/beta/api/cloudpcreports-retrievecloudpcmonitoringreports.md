---
title: "cloudPcReports: retrieveCloudPcMonitoringReports"
description: "Get monitoring reports for Cloud PCs."
author: "zzkkcc"
ms.date: 04/23/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# cloudPcReports: retrieveCloudPcMonitoringReports

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get monitoring reports for Cloud PCs. You can get tenant-level reports, configuration reports, user and device reports, and view data table reports for Cloud PC monitoring and troubleshooting.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcreports_retrievecloudpcmonitoringreports" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcreports-retrievecloudpcmonitoringreports-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/reports/retrieveCloudPcMonitoringReports
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
|filter|String|OData `$filter` syntax. Supported filters are: `and`, `or`, `gt`, `ge`, and `eq`. For mandatory filter parameters required by each report name, see [Remarks](#remarks).|
|groupBy|String collection|A list of columns that describe how to group the data in the report. Optional.|
|orderBy|String collection|Specifies the order by column name. Optional.|
|reportName|[cloudPCMonitoringReportType](../resources/cloudpcreports.md#cloudpcmonitoringreporttype-values)|The report name. The possible values are: `troubleshootTenantGlobalFilterReport`, `troubleshootTenantNetworkTrendReport`, `troubleshootTenantNetworkAggregatedReport`, `troubleshootTenantConnectionFailureRateTrendReport`, `troubleshootTenantConnectionFailureRateAggregatedReport`, `troubleshootTenantCloudPCHealthTrendReport`, `troubleshootTenantCloudPCHealthAggregatedReport`, `troubleshootTenantActiveConnectionCountTrendReport`, `troubleshootTenantActiveConnectionCountAggregatedReport`, `troubleshootTenantMeanTimeToFailureTrendReport`, `troubleshootTenantMeanTimeToFailureAggregatedReport`, `troubleshootTenantRemoteSignInTimeTrendReport`, `troubleshootTenantRemoteSignInTimeAggregatedReport`, `troubleshootEventsOfViewDataTableReport`, `troubleshootTenantEnvironmentMetricsOfViewDataTableReport`, `troubleshootCloudPCMetricsOfViewDataTableReport`, `troubleshootConfigurationConnectionCountTrendV1Report`, `troubleshootConfigurationTotalConnectionCountBarV1Report`, `troubleshootConfigurationGlobalFilterV1Report`, `troubleshootConnectionConfigurationOfViewDataTableV1Report`, `troubleshootTenantConnectedDevicesOfViewDataTableReport`, `troubleshootEnvironmentOverviewOfViewDataTableReport`, `troubleshootCloudPCNetworkTrendReport`, `troubleshootCloudPCNetworkAggregatedReport`, `troubleshootCloudPCErrorTrendReport`, `troubleshootCloudPCErrorAggregatedReport`, `troubleshootCloudPCDurationTrendReport`, `troubleshootCloudPCDurationAggregatedReport`, `troubleshootCloudPCRemoteSignInTimeTrendReport`, `troubleshootCloudPCRemoteSignInTimeAggregatedReport`, `troubleshootCloudPCListReport`, `troubleshootCloudPCHealthTrendReport`, `troubleshootMatchedUserReport`, `troubleshootMatchedCloudPCReport`, `troubleshootUserListReport`, `troubleshootVMPerformanceReport`, `getAIEnabledStateCPCReport`, `reserveLicenseReport`. Required.|
|search|String|The search string. Optional.|
|select|String collection|OData `$select` syntax. The selected columns of the reports. Optional.|
|skip|Int32|Number of records to skip. Optional.|
|top|Int32|The number of top records to return. If not specified, the default limit is 25, with a maximum of 1000. Optional.|

## Response

If successful, this action returns a `200 OK` response code and a Stream in the response body. For the columns returned for each **reportName** value, see [Cloud PC monitoring report column definitions](/graph/cloudpc-monitoring-report-columns).

## Remarks

The **filter** parameter is required for most **reportName** values. The following tables list the mandatory filter parameters by report category. Parameter values can be empty strings (`''`) if you're not filtering on that dimension. The maximum supported date range is 28 days for tenant-level and user and device reports, and 180 days for configuration reports.

### Tenant-level reports

| reportName | Mandatory filter parameters |
|:---|:---|
| `troubleshootTenantGlobalFilterReport`, `troubleshootConfigurationGlobalFilterV1Report` | `TimeRange` |
| `troubleshootTenantNetworkTrendReport`, `troubleshootTenantNetworkAggregatedReport`, `troubleshootTenantConnectionFailureRateTrendReport`, `troubleshootTenantConnectionFailureRateAggregatedReport`, `troubleshootTenantActiveConnectionCountTrendReport`, `troubleshootTenantActiveConnectionCountAggregatedReport`, `troubleshootTenantMeanTimeToFailureTrendReport`, `troubleshootTenantMeanTimeToFailureAggregatedReport`, `troubleshootTenantRemoteSignInTimeTrendReport`, `troubleshootTenantRemoteSignInTimeAggregatedReport` | `TimeRange`, `PolicyNameParam`, `RegionParam`, `UserSettingNameParam`, `ServicePlanTypeParam`, `ServicePlanNameParam`, `OSBuildVersionParam`, `AADJoinTypeParam`, `ImageNameParam`, `GatewayRegionParam`, `ClientOSParam`, `ClientTypeParam`, `TransportTypeParam`, `CloudPCEndpointCountryRegionParam`, `CloudPCEndpointStateParam`, `CloudPCEndpointCityParam` |
| `troubleshootTenantCloudPCHealthTrendReport`, `troubleshootTenantCloudPCHealthAggregatedReport` | `TimeRange`, `PolicyNameParam`, `RegionParam`, `ServicePlanTypeParam`, `ServicePlanNameParam`, `AADJoinTypeParam`, `ImageNameParam` |

### Configuration-level reports

| reportName | Mandatory filter parameters |
|:---|:---|
| `troubleshootConfigurationConnectionCountTrendV1Report`, `troubleshootConfigurationTotalConnectionCountBarV1Report` | `TimeRange`, `CloudPCStatusParam`, `RegionParam`, `PolicyNameParam`, `UserSettingNameParam`, `ImageNameParam`, `ServicePlanNameParam`, `ServicePlanTypeParam`, `OSVersionParam`, `OSBuildVersionParam`, `ClientOSParam`, `ClientTypeParam`, `ClientVersionParam`, `TeamsAppV2VersionParam`, `MMRVersionParam` |

### User and device reports

| reportName | Mandatory filter parameters | Notes |
|:---|:---|:---|
| `troubleshootMatchedUserReport`, `troubleshootMatchedCloudPCReport` | `SearchParam` | |
| `troubleshootCloudPCListReport` | `UPNParam` | |
| `troubleshootUserListReport` | `CloudPCIdParam` | |
| `troubleshootCloudPCNetworkTrendReport`, `troubleshootCloudPCNetworkAggregatedReport`, `troubleshootCloudPCErrorTrendReport`, `troubleshootCloudPCErrorAggregatedReport`, `troubleshootCloudPCDurationTrendReport`, `troubleshootCloudPCDurationAggregatedReport`, `troubleshootCloudPCRemoteSignInTimeTrendReport`, `troubleshootCloudPCRemoteSignInTimeAggregatedReport`, `troubleshootCloudPCMetricsOfViewDataTableReport` | `UPNParam`, `TimeRange`, `CloudPCIdParam` | At least one of **UPNParam** or **CloudPCIdParam** must have a non-empty value. |
| `troubleshootCloudPCHealthTrendReport` | `TimeRange`, `CloudPCIdParam` | |

### View data table reports

| reportName | Mandatory filter parameters |
|:---|:---|
| `troubleshootEnvironmentOverviewOfViewDataTableReport` | None. The **filter** parameter is optional. |
| `troubleshootTenantConnectedDevicesOfViewDataTableReport`, `troubleshootTenantEnvironmentMetricsOfViewDataTableReport` | `TimeRange`, `PolicyNameParam`, `RegionParam`, `UserSettingNameParam`, `ServicePlanTypeParam`, `ServicePlanNameParam`, `OSBuildVersionParam`, `AADJoinTypeParam`, `ImageNameParam`, `GatewayRegionParam`, `ClientOSParam`, `ClientTypeParam`, `TransportTypeParam`, `CloudPCEndpointCountryRegionParam`, `CloudPCEndpointStateParam`, `CloudPCEndpointCityParam` |
| `troubleshootEventsOfViewDataTableReport` | `TimeRange`, `PolicyNameParam`, `RegionParam`, `UserSettingNameParam`, `ServicePlanTypeParam`, `ServicePlanNameParam`, `OSBuildVersionParam`, `AADJoinTypeParam`, `ImageNameParam`, `GatewayRegionParam`, `ClientOSParam`, `ClientTypeParam`, `TransportTypeParam`, `UPNParam`, `CloudPCIdParam`, `CloudPCEndpointCountryRegionParam`, `CloudPCEndpointStateParam`, `CloudPCEndpointCityParam` |
| `troubleshootConnectionConfigurationOfViewDataTableV1Report` | `TimeRange`, `CloudPCStatusParam`, `RegionParam`, `PolicyNameParam`, `UserSettingNameParam`, `ImageNameParam`, `ServicePlanNameParam`, `ServicePlanTypeParam`, `OSVersionParam`, `OSBuildVersionParam`, `ClientOSParam`, `ClientTypeParam`, `ClientVersionParam`, `TeamsAppV2VersionParam`, `MMRVersionParam`, `CloudPCIdParam`, `UPNParam`, `AADJoinTypeParam`, `GatewayRegionParam`, `TransportTypeParam`, `CloudPCEndpointCountryRegionParam`, `CloudPCEndpointStateParam`, `CloudPCEndpointCityParam` |

For `troubleshootVMPerformanceReport`, `getAIEnabledStateCPCReport`, and `reserveLicenseReport`, the **filter** parameter is optional.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "cloudpcreports.retrieveCloudPcMonitoringReports"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/retrieveCloudPcMonitoringReports
Content-Type: application/json

{
  "reportName": "troubleshootTenantActiveConnectionCountTrendReport",
  "select": [
    "EventDateTime",
    "TotalActiveConnectionCountAvg",
    "GroupColumn"
  ],
  "filter": "(TimeRange eq 'Last 7 days') and (PolicyNameParam eq '') and (RegionParam eq '') and (UserSettingNameParam eq '') and (ServicePlanTypeParam eq 'Enterprise') and (ServicePlanNameParam eq '') and (OSBuildVersionParam eq '') and (AADJoinTypeParam eq '') and (ImageNameParam eq '') and (GatewayRegionParam eq '') and (ClientOSParam eq '') and (ClientTypeParam eq '') and (TransportTypeParam eq '') and (CloudPCEndpointCountryRegionParam eq '') and (CloudPCEndpointStateParam eq '') and (CloudPCEndpointCityParam eq '')",
  "top": 1000,
  "skip": 0,
  "groupBy": [
    "GatewayRegion"
  ]
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
Content-Type: application/json

{
  "TotalRowCount": 840,
  "Schema": [
    {
      "Column": "EventDateTime",
      "PropertyType": "DateTime"
    },
    {
      "Column": "TotalActiveConnectionCountAvg",
      "PropertyType": "Double"
    },
    {
      "Column": "GroupColumn",
      "PropertyType": "String"
    }
  ],
  "Values": [
    ["2026-03-25T04:00:00", 0.63, "australiaeast"],
    ["2026-03-25T04:00:00", 2.88, "japaneast"],
    ["2026-03-25T04:00:00", 3.63, "japanwest"],
    ["2026-03-25T04:00:00", 7.88, "southeastasia"],
    ["2026-03-25T04:00:00", 10.0, "westus2"],
    ["2026-03-25T08:00:00", 0.75, "israelcentral"],
    ["2026-03-25T08:00:00", 1.75, "japaneast"],
    ["2026-03-25T08:00:00", 8.13, "southeastasia"],
    ...
  ]
}
```
