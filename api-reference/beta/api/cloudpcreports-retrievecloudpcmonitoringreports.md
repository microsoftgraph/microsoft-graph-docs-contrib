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
|filter|String|OData `$filter` syntax. Supported filters are: `and`, `or`, `gt`, `ge`, and `eq`. **Report-specific requirements**: <br/>• **For tenant network/connection/mean time to failure/sign-in reports** (`troubleshootTenantNetworkTrendReport`, `troubleshootTenantNetworkAggregatedReport`, `troubleshootTenantConnectionFailureRateTrendReport`, `troubleshootTenantConnectionFailureRateAggregatedReport`, `troubleshootTenantActiveConnectionCountTrendReport`, `troubleshootTenantActiveConnectionCountAggregatedReport`, `troubleshootTenantMeanTimeToFailureTrendReport`, `troubleshootTenantMeanTimeToFailureAggregatedReport`, `troubleshootTenantRemoteSignInTimeTrendReport`, `troubleshootTenantRemoteSignInTimeAggregatedReport`): **ALL 16 parameters required** in filter: `(TimeRange eq 'Last X days') and (PolicyNameParam eq '[value]') and (RegionParam eq '[value]') and (UserSettingNameParam eq '[value]') and (ServicePlanTypeParam eq '[value]') and (ServicePlanNameParam eq '[value]') and (OSBuildVersionParam eq '[value]') and (AADJoinTypeParam eq '[value]') and (ImageNameParam eq '[value]') and (GatewayRegionParam eq '[value]') and (ClientOSParam eq '[value]') and (ClientTypeParam eq '[value]') and (TransportTypeParam eq '[value]') and (CloudPCEndpointCountryRegionParam eq '[value]') and (CloudPCEndpointStateParam eq '[value]') and (CloudPCEndpointCityParam eq '[value]')`. Parameter values can be empty strings ('') if not filtering on that dimension.<br/>• **For tenant health reports** (`troubleshootTenantCloudPCHealthTrendReport`, `troubleshootTenantCloudPCHealthAggregatedReport`): **7 parameters required** in filter: `(TimeRange eq 'Last X days') and (PolicyNameParam eq '[value]') and (RegionParam eq '[value]') and (ServicePlanTypeParam eq '[value]') and (ServicePlanNameParam eq '[value]') and (AADJoinTypeParam eq '[value]') and (ImageNameParam eq '[value]')`. Parameter values can be empty strings ('') if not filtering on that dimension.<br/>• **For tenant global filter report** (`troubleshootTenantGlobalFilterReport`): **Only TimeRange required** in filter: `(TimeRange eq 'Last X days')`<br/>• **For configuration connection reports** (`troubleshootConfigurationTotalConnectionCountBarV1Report`, `troubleshootConfigurationConnectionCountTrendV1Report`): **15 parameters required** in filter: `(TimeRange eq 'Last X days') and (CloudPCStatusParam eq '[value]') and (RegionParam eq '[value]') and (PolicyNameParam eq '[value]') and (UserSettingNameParam eq '[value]') and (ImageNameParam eq '[value]') and (ServicePlanNameParam eq '[value]') and (ServicePlanTypeParam eq '[value]') and (OSVersionParam eq '[value]') and (OSBuildVersionParam eq '[value]') and (ClientOSParam eq '[value]') and (ClientTypeParam eq '[value]') and (ClientVersionParam eq '[value]') and (TeamsAppV2VersionParam eq '[value]') and (MMRVersionParam eq '[value]')`. Parameter values can be empty strings ('') if not filtering on that dimension.<br/>• **For other configuration reports** (`troubleshootConfigurationGlobalFilterV1Report`): **Only TimeRange required** in filter: `(TimeRange eq 'Last X days')`<br/>• **For user/device matched reports** (`troubleshootMatchedUserReport`, `troubleshootMatchedCloudPCReport`): **SearchParam required** in filter: `(SearchParam eq '[search_value]')`<br/>• **For user/device list reports**: **Single parameter required** in filter: `(UPNParam eq '[value]')` for `troubleshootCloudPCListReport`, or `(CloudPCIdParam eq '[value]')` for `troubleshootUserListReport`<br/>• **For CloudPC trend/aggregated reports** (`troubleshootCloudPCDurationTrendReport`, `troubleshootCloudPCDurationAggregatedReport`, `troubleshootCloudPCErrorTrendReport`, `troubleshootCloudPCErrorAggregatedReport`, `troubleshootCloudPCNetworkTrendReport`, `troubleshootCloudPCNetworkAggregatedReport`, `troubleshootCloudPCRemoteSignInTimeTrendReport`, `troubleshootCloudPCRemoteSignInTimeAggregatedReport`): **3 parameters required** in filter: `(UPNParam eq '[value]') and (TimeRange eq 'Last X hours/days') and (CloudPCIdParam eq '[value]')`. **At least one of UPNParam or CloudPCIdParam must have a non-empty value.** Parameter values can be empty strings ('') if not filtering on that dimension.<br/>• **For view data table reports with 16 parameters** (`troubleshootTenantConnectedDevicesOfViewDataTableReport`, `troubleshootTenantEnvironmentMetricsOfViewDataTableReport`): **16 parameters required** in filter: `(TimeRange eq 'Last X days') and (PolicyNameParam eq '[value]') and (RegionParam eq '[value]') and (UserSettingNameParam eq '[value]') and (ServicePlanTypeParam eq '[value]') and (ServicePlanNameParam eq '[value]') and (OSBuildVersionParam eq '[value]') and (AADJoinTypeParam eq '[value]') and (ImageNameParam eq '[value]') and (GatewayRegionParam eq '[value]') and (ClientOSParam eq '[value]') and (ClientTypeParam eq '[value]') and (TransportTypeParam eq '[value]') and (CloudPCEndpointCountryRegionParam eq '[value]') and (CloudPCEndpointStateParam eq '[value]') and (CloudPCEndpointCityParam eq '[value]')`. Parameter values can be empty strings ('') if not filtering on that dimension.<br/>• **For connection configuration view data table report** (`troubleshootConnectionConfigurationOfViewDataTableV1Report`): **23 parameters required** in filter: `(TimeRange eq 'Last X days') and (CloudPCStatusParam eq '[value]') and (RegionParam eq '[value]') and (PolicyNameParam eq '[value]') and (UserSettingNameParam eq '[value]') and (ImageNameParam eq '[value]') and (ServicePlanNameParam eq '[value]') and (ServicePlanTypeParam eq '[value]') and (OSVersionParam eq '[value]') and (OSBuildVersionParam eq '[value]') and (ClientOSParam eq '[value]') and (ClientTypeParam eq '[value]') and (ClientVersionParam eq '[value]') and (TeamsAppV2VersionParam eq '[value]') and (MMRVersionParam eq '[value]') and (CloudPCIdParam eq '[value]') and (UPNParam eq '[value]') and (AADJoinTypeParam eq '[value]') and (GatewayRegionParam eq '[value]') and (TransportTypeParam eq '[value]') and (CloudPCEndpointCountryRegionParam eq '[value]') and (CloudPCEndpointStateParam eq '[value]') and (CloudPCEndpointCityParam eq '[value]')`. Parameter values can be empty strings ('') if not filtering on that dimension.<br/>• **For events view data table report** (`troubleshootEventsOfViewDataTableReport`): **18 parameters required** in filter: `(TimeRange eq 'Last X days') and (PolicyNameParam eq '[value]') and (RegionParam eq '[value]') and (UserSettingNameParam eq '[value]') and (ServicePlanTypeParam eq '[value]') and (ServicePlanNameParam eq '[value]') and (OSBuildVersionParam eq '[value]') and (AADJoinTypeParam eq '[value]') and (ImageNameParam eq '[value]') and (GatewayRegionParam eq '[value]') and (ClientOSParam eq '[value]') and (ClientTypeParam eq '[value]') and (TransportTypeParam eq '[value]') and (UPNParam eq '[value]') and (CloudPCIdParam eq '[value]') and (CloudPCEndpointCountryRegionParam eq '[value]') and (CloudPCEndpointStateParam eq '[value]') and (CloudPCEndpointCityParam eq '[value]')`. Parameter values can be empty strings ('') if not filtering on that dimension.<br/>• **For CloudPC metrics view data table report** (`troubleshootCloudPCMetricsOfViewDataTableReport`): **3 parameters required** in filter: `(TimeRange eq 'Last X days') and (CloudPCIdParam eq '[value]') and (UPNParam eq '[value]')`. **At least one of UPNParam or CloudPCIdParam must have a non-empty value.** Parameter values can be empty strings ('') if not filtering on that dimension.<br/>• **For CloudPC health trend report** (`troubleshootCloudPCHealthTrendReport`): **2 parameters required** in filter: `(TimeRange eq 'Last X hours/days') and (CloudPCIdParam eq '[value]')`. Parameter values can be empty strings ('') if not filtering on that dimension.<br/>• **For environment overview view data table report** (`troubleshootEnvironmentOverviewOfViewDataTableReport`): **No mandatory filter parameters**. Filter is optional.<br/>• **Optional** for other report types<br/>• Maximum date range: 28 days for Tenant report and User & Device Report, 180 days for configuration Report.|
|groupBy|String collection|A list of columns that describe how to group the data in the report. Optional.|
|orderBy|String collection|Specifies the order by column name. Optional.|
|reportName|[cloudPCMonitoringReportType](../resources/cloudpcreports.md#cloudpcmonitoringreporttype-values)|The report name. The possible values are: `troubleshootTenantGlobalFilterReport`, `troubleshootTenantNetworkTrendReport`, `troubleshootTenantNetworkAggregatedReport`, `troubleshootTenantConnectionFailureRateTrendReport`, `troubleshootTenantConnectionFailureRateAggregatedReport`, `troubleshootTenantCloudPCHealthTrendReport`, `troubleshootTenantCloudPCHealthAggregatedReport`, `troubleshootTenantActiveConnectionCountTrendReport`, `troubleshootTenantActiveConnectionCountAggregatedReport`, `troubleshootTenantMeanTimeToFailureTrendReport`, `troubleshootTenantMeanTimeToFailureAggregatedReport`, `troubleshootTenantRemoteSignInTimeTrendReport`, `troubleshootTenantRemoteSignInTimeAggregatedReport`, `troubleshootEventsOfViewDataTableReport`, `troubleshootTenantEnvironmentMetricsOfViewDataTableReport`, `troubleshootCloudPCMetricsOfViewDataTableReport`, `troubleshootConfigurationConnectionCountTrendV1Report`, `troubleshootConfigurationTotalConnectionCountBarV1Report`, `troubleshootConfigurationGlobalFilterV1Report`, `troubleshootConnectionConfigurationOfViewDataTableV1Report`, `troubleshootTenantConnectedDevicesOfViewDataTableReport`, `troubleshootEnvironmentOverviewOfViewDataTableReport`, `troubleshootCloudPCNetworkTrendReport`, `troubleshootCloudPCNetworkAggregatedReport`, `troubleshootCloudPCErrorTrendReport`, `troubleshootCloudPCErrorAggregatedReport`, `troubleshootCloudPCDurationTrendReport`, `troubleshootCloudPCDurationAggregatedReport`, `troubleshootCloudPCRemoteSignInTimeTrendReport`, `troubleshootCloudPCRemoteSignInTimeAggregatedReport`, `troubleshootCloudPCListReport`, `troubleshootCloudPCHealthTrendReport`, `troubleshootMatchedUserReport`, `troubleshootMatchedCloudPCReport`, `troubleshootUserListReport`, `troubleshootVMPerformanceReport`, `getAIEnabledStateCPCReport`, `reserveLicenseReport`. Required.|
|search|String|The search string. Optional.|
|select|String collection|OData `$select` syntax. The selected columns of the reports. Optional.|
|skip|Int32|Number of records to skip. Optional.|
|top|Int32|The number of top records to return. If not specified, the default limit is 25. Optional.|

## Response

If successful, this action returns a `200 OK` response code and a Stream in the response body. For the columns returned for each **reportName** value, see [Cloud PC monitoring report column definitions](/graph/cloudpc-monitoring-report-columns).

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
  "groupby": [
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
