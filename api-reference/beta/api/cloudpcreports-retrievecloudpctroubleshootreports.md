---
title: "cloudPcReports: retrieveCloudPcTroubleshootReports"
description: "Get troubleshooting reports for Cloud PCs."
author: "zzkkcc"
ms.date: 04/03/2026
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
|filter|String|OData `$filter` syntax. Supported filters are: `and`, `or`, `gt`, `ge`, and `eq`. **Report-specific requirements**: <br/>• **For tenant network/connection/MTTF/MTTR/sign-in reports** (`troubleshootTenant*NetworkTrendReport`, `troubleshootTenant*NetworkAggregatedReport`, `troubleshootTenant*ConnectionFailureRateReport`, `troubleshootTenant*ActiveConnectionCountReport`, `troubleshootTenant*MTTFReport`, `troubleshootTenant*MTTRReport`, `troubleshootTenant*RemoteSignInTimeReport`): **ALL 16 parameters required** in filter: `(TimeRange eq 'Last X days') and (PolicyNameParam eq '[value]') and (RegionParam eq '[value]') and (UserSettingNameParam eq '[value]') and (ServicePlanTypeParam eq '[value]') and (ServicePlanNameParam eq '[value]') and (OSBuildVersionParam eq '[value]') and (AADJoinTypeParam eq '[value]') and (ImageNameParam eq '[value]') and (GatewayRegionParam eq '[value]') and (ClientOSParam eq '[value]') and (ClientTypeParam eq '[value]') and (TransportTypeParam eq '[value]') and (CloudPCEndpointCountryRegionParam eq '[value]') and (CloudPCEndpointStateParam eq '[value]') and (CloudPCEndpointCityParam eq '[value]')`. Parameter values can be empty strings ('') if not filtering on that dimension.<br/>• **For tenant health reports** (`troubleshootTenantCloudPCHealthTrendReport`, `troubleshootTenantCloudPCHealthAggregatedReport`): **7 parameters required** in filter: `(TimeRange eq 'Last X days') and (PolicyNameParam eq '[value]') and (RegionParam eq '[value]') and (ServicePlanTypeParam eq '[value]') and (ServicePlanNameParam eq '[value]') and (AADJoinTypeParam eq '[value]') and (ImageNameParam eq '[value]')`. Parameter values can be empty strings ('') if not filtering on that dimension.<br/>• **For tenant global filter report** (`troubleshootTenantGlobalFilterReport`): **Only TimeRange required** in filter: `(TimeRange eq 'Last X days')`<br/>• **For configuration connection reports** (`troubleshootConfigurationTotalConnectionCountBarV1Report`, `troubleshootConfigurationConnectionCountTrendV1Report`): **15 parameters required** in filter: `(TimeRange eq 'Last X days') and (CloudPCStatusParam eq '[value]') and (RegionParam eq '[value]') and (PolicyNameParam eq '[value]') and (UserSettingNameParam eq '[value]') and (ImageNameParam eq '[value]') and (ServicePlanNameParam eq '[value]') and (ServicePlanTypeParam eq '[value]') and (OSVersionParam eq '[value]') and (OSBuildVersionParam eq '[value]') and (ClientOSParam eq '[value]') and (ClientTypeParam eq '[value]') and (ClientVersionParam eq '[value]') and (TeamsAppV2VersionParam eq '[value]') and (MMRVersionParam eq '[value]')`. Parameter values can be empty strings ('') if not filtering on that dimension.<br/>• **For other configuration reports** (`troubleshootConfigurationGlobalFilterV1Report`): **Only TimeRange required** in filter: `(TimeRange eq 'Last X days')`<br/>• **For user/device matched reports** (`troubleshootMatchedUserReport`, `troubleshootMatchedCloudPCReport`): **SearchParam required** in filter: `(SearchParam eq '[search_value]')`<br/>• **For user/device list reports**: **Single parameter required** in filter: `(UPNParam eq '[value]')` for `troubleshootCloudPCListReport`, or `(CloudPCIdParam eq '[value]')` for `troubleshootUserListReport`<br/>• **For CloudPC trend/aggregated reports** (`troubleshootCloudPCDurationTrendReport`, `troubleshootCloudPCDurationAggregatedReport`, `troubleshootCloudPCErrorTrendReport`, `troubleshootCloudPCErrorAggregatedReport`, `troubleshootCloudPCNetworkTrendReport`, `troubleshootCloudPCNetworkAggregatedReport`, `troubleshootCloudPCRemoteSignInTimeTrendReport`, `troubleshootCloudPCRemoteSignInTimeAggregatedReport`): **3 parameters required** in filter: `(UPNParam eq '[value]') and (TimeRange eq 'Last X hours/days') and (CloudPCIdParam eq '[value]')`. **At least one of UPNParam or CloudPCIdParam must have a non-empty value.** Parameter values can be empty strings ('') if not filtering on that dimension.<br/>• **For view data table reports with 16 parameters** (`troubleshootTenantConnectedDevicesOfViewDataTableReport`, `troubleshootTenantMetricsOfViewDataTableReport`): **16 parameters required** in filter: `(TimeRange eq 'Last X days') and (PolicyNameParam eq '[value]') and (RegionParam eq '[value]') and (UserSettingNameParam eq '[value]') and (ServicePlanTypeParam eq '[value]') and (ServicePlanNameParam eq '[value]') and (OSBuildVersionParam eq '[value]') and (AADJoinTypeParam eq '[value]') and (ImageNameParam eq '[value]') and (GatewayRegionParam eq '[value]') and (ClientOSParam eq '[value]') and (ClientTypeParam eq '[value]') and (TransportTypeParam eq '[value]') and (CloudPCEndpointCountryRegionParam eq '[value]') and (CloudPCEndpointStateParam eq '[value]') and (CloudPCEndpointCityParam eq '[value]')`. Parameter values can be empty strings ('') if not filtering on that dimension.<br/>• **For connection configuration view data table report** (`troubleshootConnectionConfigurationOfViewDataTableV1Report`): **23 parameters required** in filter: `(TimeRange eq 'Last X days') and (CloudPCStatusParam eq '[value]') and (RegionParam eq '[value]') and (PolicyNameParam eq '[value]') and (UserSettingNameParam eq '[value]') and (ImageNameParam eq '[value]') and (ServicePlanNameParam eq '[value]') and (ServicePlanTypeParam eq '[value]') and (OSVersionParam eq '[value]') and (OSBuildVersionParam eq '[value]') and (ClientOSParam eq '[value]') and (ClientTypeParam eq '[value]') and (ClientVersionParam eq '[value]') and (TeamsAppV2VersionParam eq '[value]') and (MMRVersionParam eq '[value]') and (CloudPCIdParam eq '[value]') and (UPNParam eq '[value]') and (AADJoinTypeParam eq '[value]') and (GatewayRegionParam eq '[value]') and (TransportTypeParam eq '[value]') and (CloudPCEndpointCountryRegionParam eq '[value]') and (CloudPCEndpointStateParam eq '[value]') and (CloudPCEndpointCityParam eq '[value]')`. Parameter values can be empty strings ('') if not filtering on that dimension.<br/>• **For events view data table report** (`troubleshootEventsOfViewDataTableReport`): **18 parameters required** in filter: `(TimeRange eq 'Last X days') and (PolicyNameParam eq '[value]') and (RegionParam eq '[value]') and (UserSettingNameParam eq '[value]') and (ServicePlanTypeParam eq '[value]') and (ServicePlanNameParam eq '[value]') and (OSBuildVersionParam eq '[value]') and (AADJoinTypeParam eq '[value]') and (ImageNameParam eq '[value]') and (GatewayRegionParam eq '[value]') and (ClientOSParam eq '[value]') and (ClientTypeParam eq '[value]') and (TransportTypeParam eq '[value]') and (UPNParam eq '[value]') and (CloudPCIdParam eq '[value]') and (CloudPCEndpointCountryRegionParam eq '[value]') and (CloudPCEndpointStateParam eq '[value]') and (CloudPCEndpointCityParam eq '[value]')`. Parameter values can be empty strings ('') if not filtering on that dimension.<br/>• **For CloudPC metrics view data table report** (`troubleshootCloudPCMetricsOfViewDataTableReport`): **3 parameters required** in filter: `(TimeRange eq 'Last X days') and (CloudPCIdParam eq '[value]') and (UPNParam eq '[value]')`. **At least one of UPNParam or CloudPCIdParam must have a non-empty value.** Parameter values can be empty strings ('') if not filtering on that dimension.<br/>• **For CloudPC health trend report** (`troubleshootCloudPCHealthTrendReport`): **2 parameters required** in filter: `(TimeRange eq 'Last X hours/days') and (CloudPCIdParam eq '[value]')`. Parameter values can be empty strings ('') if not filtering on that dimension.<br/>• **For environment overview view data table report** (`troubleshootEnvironmentOverviewOfViewDataTableReport`): **No mandatory filter parameters**. Filter is optional.<br/>• **Optional** for other report types<br/>• Maximum date range: 28 days for Tenant report and User & Device Report, 180 days for configuration Report.|
|groupBy|String collection|A list of columns that describe how to group the data in the report. Optional.|
|orderBy|String collection|Specifies the order by column name. Optional.|
|reportName|[cloudPCTroubleshootReportType](../resources/cloudpcreports.md#cloudpctroubleshootreporttype-values)|The report name. The possible values are: `troubleshootTenantGlobalFilterReport`, `troubleshootTenantNetworkTrendReport`, `troubleshootTenantNetworkAggregatedReport`, `troubleshootTenantConnectionFailureRateTrendReport`, `troubleshootTenantConnectionFailureRateAggregatedReport`, `troubleshootTenantCloudPCHealthTrendReport`, `troubleshootTenantCloudPCHealthAggregatedReport`, `troubleshootTenantActiveConnectionCountTrendReport`, `troubleshootTenantActiveConnectionCountAggregatedReport`, `troubleshootTenantMTTFTrendReport`, `troubleshootTenantMTTFAggregatedReport`, `troubleshootTenantMTTRTrendReport`, `troubleshootTenantMTTRAggregatedReport`, `troubleshootTenantRemoteSignInTimeTrendReport`, `troubleshootTenantRemoteSignInTimeAggregatedReport`, `troubleshootEventsOfViewDataTableReport`, `troubleshootTenantMetricsOfViewDataTableReport`, `troubleshootCloudPCMetricsOfViewDataTableReport`, `troubleshootConfigurationConnectionCountTrendV1Report`, `troubleshootConfigurationTotalConnectionCountBarV1Report`, `troubleshootConfigurationGlobalFilterV1Report`, `troubleshootConnectionConfigurationOfViewDataTableV1Report`, `troubleshootTenantConnectedDevicesOfViewDataTableReport`, `troubleshootEnvironmentOverviewOfViewDataTableReport`, `troubleshootCloudPCNetworkTrendReport`, `troubleshootCloudPCNetworkAggregatedReport`, `troubleshootCloudPCErrorTrendReport`, `troubleshootCloudPCErrorAggregatedReport`, `troubleshootCloudPCDurationTrendReport`, `troubleshootCloudPCDurationAggregatedReport`, `troubleshootCloudPCListReport`, `troubleshootCloudPCHealthTrendReport`, `troubleshootMatchedUserReport`, `troubleshootMatchedCloudPCReport`, `troubleshootUserListReport`, `unknownFutureValue`. The default value is `troubleshootTenantGlobalFilterReport`.|
|search|String|The search string. Optional.|
|select|String collection|OData `$select` syntax. The selected columns of the reports. Optional.|
|skip|Int32|Number of records to skip. Optional.|
|top|Int32|The number of top records to return. If not specified, the default limit is 25. Optional.|

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
The following table describes the columns in the returned report when you specify `troubleshootConfigurationGlobalFilterV1Report` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| TenantId                    | The unique identifier of the tenant.          |
| CloudPCStatus               | The status of the Cloud PC.                   |
| Region                      | The region where the Cloud PC is located.     |
| PolicyName                  | The name of the policy applied.               |
| UserSettingName             | The name of the user setting configuration.   |
| ImageName                   | The name of the OS image used.                |
| ServicePlanName             | The name of the service plan.                 |
| ServicePlanType             | The Cloud PC service plan type.               |
| OSVersion                   | The operating system version.                 |
| OSBuildVersion              | The operating system build version.           |
| ClientOS                    | The client operating system.                  |
| ClientType                  | The type of client device.                    |
| ClientVersion               | The version of the client software.           |
| TeamsAppV2Version           | The version of the Teams App V2.              |
| MMRVersion                  | The version of the MMR component.             |

The following table describes the columns in the returned report when you specify `troubleshootConfigurationTotalConnectionCountBarV1Report` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| TotalActivityCount          | The total count of activities.                |
| TenantId                    | The unique identifier of the tenant.          |
| GroupColumn                 | The metric used for grouping data (CloudPCStatus, Region, PolicyName, UserSettingName, ImageName, ServicePlanName, ServicePlanType, OSVersion, OSBuildVersion, ClientOS, ClientType, ClientVersion, TeamsAppV2Version, or MMRVersion). |

The following table describes the columns in the returned report when you specify `troubleshootConfigurationConnectionCountTrendV1Report` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| TotalActivityCount          | The total count of activities.                |
| TenantId                    | The unique identifier of the tenant.          |
| EventDateTime               | The date and time when the event occurred.    |
| GroupColumn                 | The metric used for grouping data (CloudPCStatus, Region, PolicyName, UserSettingName, ImageName, ServicePlanName, ServicePlanType, OSVersion, OSBuildVersion, ClientOS, ClientType, ClientVersion, TeamsAppV2Version, or MMRVersion). |

### User & CloudPC Reports

The following table describes the columns in the returned report when you specify `troubleshootMatchedUserReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| CloudPCId                   | The unique identifier of the Cloud PC.        |
| UPN                         | The User Principal Name of the user.          |
| UserId                      | The unique identifier of the user.            |

The following table describes the columns in the returned report when you specify `troubleshootMatchedCloudPCReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| TenantId                    | The unique identifier of the tenant.          |
| CloudPCId                   | The unique identifier of the Cloud PC.        |
| ManagedDeviceName           | The name of the managed device.               |

The following table describes the columns in the returned report when you specify `troubleshootCloudPCListReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| CloudPCId                   | The unique identifier of the Cloud PC.        |
| ManagedDeviceName           | The name of the managed device.               |
| UserDisplayName             | The display name of the user.                 |
| UPN                         | The User Principal Name of the user.          |
| UserId                      | The unique identifier of the user.            |
| ServicePlanType             | The Cloud PC service plan type (FrontlineShared, FrontlineDedicated, Enterprise, or Reserve). |
| ProductType                 | The product type of the Cloud PC.             |
| ProvisioningType            | The provisioning type of the Cloud PC.        |
| SKUName                     | The SKU name of the Cloud PC.                 |
| LastActiveTime              | The last active time of the Cloud PC.         |
| ConnectionState             | The connection state of the Cloud PC.         |
| DeviceHealthTime            | The device health check time.                 |
| CloudDeviceHealthState      | The health state of the Cloud PC device.      |
| ProvisioningPolicyId        | The unique identifier of the provisioning policy. |
| PolicyName                  | The name of the policy applied.               |

The following table describes the columns in the returned report when you specify `troubleshootUserListReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| CloudPCId                   | The unique identifier of the Cloud PC.        |
| ManagedDeviceName           | The name of the managed device.               |
| UserDisplayName             | The display name of the user.                 |
| UPN                         | The User Principal Name of the user.          |
| UserId                      | The unique identifier of the user.            |
| ServicePlanType             | The Cloud PC service plan type (FrontlineShared, FrontlineDedicated, Enterprise, or Reserve). |
| ProductType                 | The product type of the Cloud PC.             |
| ProvisioningType            | The provisioning type of the Cloud PC.        |
| SKUName                     | The SKU name of the Cloud PC.                 |
| LastActiveTime              | The last active time of the Cloud PC.         |
| LastGatewayRegion           | The region of the last used gateway.          |
| LastClientType              | The type of the last used client device.      |
| LastClientOS                | The operating system of the last used client. |
| ConnectionState             | The connection state of the Cloud PC.         |
| DeviceHealthTime            | The device health check time.                 |
| CloudDeviceHealthState      | The health state of the Cloud PC device.      |
| ProvisioningPolicyId        | The unique identifier of the provisioning policy. |
| PolicyName                  | The name of the policy applied.               |

The following table describes the columns in the returned report when you specify `troubleshootCloudPCDurationTrendReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| TenantId                    | The unique identifier of the tenant.          |
| CloudPCId                   | The unique identifier of the Cloud PC.        |
| ManagedDeviceName           | The name of the managed device.               |
| UPN                         | The User Principal Name of the user.          |
| EventDateTime               | The date and time when the event occurred.    |
| DurationInHour              | The duration time in hours.                   |
| AvgDurationInHour           | The average duration time in hours.           |

The following table describes the columns in the returned report when you specify `troubleshootCloudPCDurationAggregatedReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| TenantId                    | The unique identifier of the tenant.          |
| CloudPCId                   | The unique identifier of the Cloud PC.        |
| ManagedDeviceName           | The name of the managed device.               |
| UPN                         | The User Principal Name of the user.          |
| DurationInHour              | The duration time in hours.                   |
| AvgDurationInHour           | The average duration time in hours.           |

The following table describes the columns in the returned report when you specify `troubleshootCloudPCErrorTrendReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| TenantId                    | The unique identifier of the tenant.          |
| CodeSymbolic                | The symbolic error code identifier.           |
| EventDateTime               | The date and time when the event occurred.    |
| ErrorCount                  | The count of errors reported.                 |

The following table describes the columns in the returned report when you specify `troubleshootCloudPCErrorAggregatedReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| TenantId                    | The unique identifier of the tenant.          |
| CodeSymbolic                | The symbolic error code identifier.           |
| ErrorCount                  | The count of errors reported.                 |
| ErrorPercentage             | The percentage of errors reported.            |

The following table describes the columns in the returned report when you specify `troubleshootCloudPCNetworkTrendReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| TenantId                    | The unique identifier of the tenant.          |
| CloudPCId                   | The unique identifier of the Cloud PC.        |
| ManagedDeviceName           | The name of the managed device.               |
| UPN                         | The User Principal Name of the user.          |
| EventDateTime               | The date and time when the event occurred.    |
| RoundTripTimeInMsP50        | The 50th percentile round trip time in milliseconds. |
| BandwidthInMbpsP50          | The 50th percentile bandwidth in megabits per second. |

The following table describes the columns in the returned report when you specify `troubleshootCloudPCNetworkAggregatedReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| TenantId                    | The unique identifier of the tenant.          |
| CloudPCId                   | The unique identifier of the Cloud PC.        |
| ManagedDeviceName           | The name of the managed device.               |
| UPN                         | The User Principal Name of the user.          |
| RoundTripTimeInMsP50        | The 50th percentile round trip time in milliseconds. |
| BandwidthInMbpsP50          | The 50th percentile bandwidth in megabits per second. |

The following table describes the columns in the returned report when you specify `troubleshootCloudPCRemoteSignInTimeTrendReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| TenantId                    | The unique identifier of the tenant.          |
| CloudPCId                   | The unique identifier of the Cloud PC.        |
| ManagedDeviceName           | The name of the managed device.               |
| UPN                         | The User Principal Name of the user.          |
| EventDateTime               | The date and time when the event occurred.    |
| RemoteSignInTimeInSecondAvg | The average remote sign-in time in seconds.   |

The following table describes the columns in the returned report when you specify `troubleshootCloudPCRemoteSignInTimeAggregatedReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| TenantId                    | The unique identifier of the tenant.          |
| CloudPCId                   | The unique identifier of the Cloud PC.        |
| ManagedDeviceName           | The name of the managed device.               |
| UPN                         | The User Principal Name of the user.          |
| RemoteSignInTimeInSecondAvg | The average remote sign-in time in seconds.   |

The following table describes the columns in the returned report when you specify `troubleshootCloudPCHealthTrendReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| TenantId                    | The unique identifier of the tenant.          |
| CloudPCId                   | The unique identifier of the Cloud PC.        |
| ManagedDeviceName           | The name of the managed device.               |
| UPN                         | The User Principal Name of the user.          |
| UserId                      | The unique identifier of the user.            |
| EventDateTime               | The date and time when the event occurred.    |
| HealthPercentage            | The health percentage of Cloud PC systems.    |

### View Data Table Reports

The following table describes the columns in the returned report when you specify `troubleshootTenantConnectedDevicesOfViewDataTableReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| TenantId                    | The unique identifier of the tenant.          |
| Timestamp                   | The timestamp when the data was recorded.     |
| ManagedDeviceName           | The name of the managed device.               |
| CloudPCId                   | The unique identifier of the Cloud PC.        |
| ConnectionState             | The connection state of the Cloud PC.         |
| LastActiveTime              | The last active time of the Cloud PC.         |
| UPN                         | The User Principal Name of the user.          |
| ProvisioningPolicyName      | The name of the provisioning policy.          |
| UserSettingName             | The name of the user setting configuration.   |
| CloudPCHostGeography        | The geographical location of the Cloud PC host. |
| Region                      | The region where the Cloud PC is located.     |
| ServicePlanType             | The Cloud PC service plan type (FrontlineShared, FrontlineDedicated, Enterprise, or Reserve). |
| ServicePlanName             | The name of the service plan.                 |
| ImageName                   | The name of the OS image used.                |

The following table describes the columns in the returned report when you specify `troubleshootConnectionConfigurationOfViewDataTableV1Report` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| TenantId                    | The unique identifier of the tenant.          |
| ActivityId                  | The unique identifier of the activity session. |
| SessionBeginTime            | The start time of the session.                |
| SessionEndTime              | The end time of the session.                  |
| UPN                         | The User Principal Name of the user.          |
| UserId                      | The unique identifier of the user.            |
| ManagedDeviceName           | The name of the managed device.               |
| CloudPCId                   | The unique identifier of the Cloud PC.        |
| CloudPCHostGeography        | The geographical location of the Cloud PC host. |
| Region                      | The region where the Cloud PC is located.     |
| SessionHostAgentVersion     | The version of the session host agent.        |
| SessionHostSxSStackVersion  | The version of the session host SxS stack.    |
| GatewayRegion               | The region where the gateway is located.      |
| PolicyName                  | The name of the policy applied.               |
| UserSettingName             | The name of the user setting configuration.   |
| ServicePlanType             | The Cloud PC service plan type (FrontlineShared, FrontlineDedicated, Enterprise, or Reserve). |
| ServicePlanName             | The name of the service plan.                 |
| AADJoinType                 | The Azure Active Directory join type.         |
| ImageName                   | The name of the OS image used.                |
| TransportType               | The transport protocol type used.             |
| PlatformName                | The name of the platform.                     |
| ClientOS                    | The client operating system.                  |
| ClientType                  | The type of client device.                    |
| ClientVersion               | The version of the client software.           |
| TeamsAppV2Version           | The version of the Teams App V2.              |
| MMRVersion                  | The version of the MMR component.             |
| SessionHostIPAddress        | The IP address of the session host.           |
| CloudPCEndpointCountry      | The country of the Cloud PC endpoint.         |
| CloudPCEndpointCountryRegion| The country region of the Cloud PC endpoint.  |
| CloudPCEndpointState        | The state of the Cloud PC endpoint.           |
| CloudPCEndpointCity         | The city of the Cloud PC endpoint.            |

The following table describes the columns in the returned report when you specify `troubleshootEventsOfViewDataTableReport` for the **reportName** property in your API call.

| Member                       | Description                                    |
|:-----------------------------|:-----------------------------------------------|
| TenantId                     | The unique identifier of the tenant.          |
| ActivityId                   | The unique identifier of the activity session. |
| Timestamp                    | The timestamp when the event occurred.        |
| UPN                          | The User Principal Name of the user.          |
| UserId                       | The unique identifier of the user.            |
| ManagedDeviceName            | The name of the managed device.               |
| CloudPCId                    | The unique identifier of the Cloud PC.        |
| EventCategory                | The category of the event.                    |
| EventName                    | The name of the event.                        |
| EventSource                  | The source system that generated the event.   |
| CheckpointParameters         | Additional parameters related to the checkpoint. |
| ErrorCode                    | The numeric error code if applicable.         |
| ErrorCodeSymbolic            | The symbolic representation of the error code. |
| ErrorMessage                 | The descriptive error message if applicable.  |
| ResultType                   | The type of result for the event.             |
| EventLevel                   | The severity level of the event.              |
| CloudDeviceHealthState       | The health state of the Cloud PC device.      |

The following table describes the columns in the returned report when you specify `troubleshootCloudPCMetricsOfViewDataTableReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| TenantId                    | The unique identifier of the tenant.          |
| EventDateTime               | The date and time when the event occurred.    |
| TotalActiveConnectionCountAvg | The average count of total active connections. |
| AvgRoundTripTimeInMs        | The average round trip time in milliseconds.  |
| AvgBandwidthInMbps          | The average bandwidth in megabits per second. |
| ConnectionSuccessCount      | The number of successful connections.          |
| ConnectionFailCount         | The number of failed connections.              |
| ConnectionFailurePercentage | The percentage of connection failures.         |
| HealthyCount                | The number of healthy Cloud PCs.              |
| UnhealthyCount              | The number of unhealthy Cloud PCs.            |
| UnknownCount                | The number of Cloud PCs with unknown health status. |
| HealthPercentage            | The health percentage of Cloud PC systems.    |
| TotalDurationInHour         | The total duration time in hours.             |
| AvgDurationInHour           | The average duration time in hours.           |
| RemoteSignInTimeInSecondAvg | The average remote sign-in time in seconds.   |

The following table describes the columns in the returned report when you specify `troubleshootTenantMetricsOfViewDataTableReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| EventDateTime               | The date and time when the event occurred.    |
| TotalActiveConnectionCountAvg | The average count of total active connections. |
| AvgRoundTripTimeInMs        | The average round trip time in milliseconds.  |
| AvgBandwidthInMbps          | The average bandwidth in megabits per second. |
| ConnectionFailurePercentage | The percentage of connection failures.         |
| HealthPercentage            | The health percentage of Cloud PC systems.    |
| TotalDurationInHour         | The total duration time in hours.             |
| AvgDurationInHour           | The average duration time in hours.           |
| MeanTimeToFailInHour        | The mean time to failure in hours.            |
| MeanTimeToRepairInSecond    | The mean time to repair in seconds.           |
| RemoteSignInTimeInSecondAvg | The average remote sign-in time in seconds.   |

The following table describes the columns in the returned report when you specify `troubleshootEnvironmentOverviewOfViewDataTableReport` for the **reportName** property in your API call.

| Member                      | Description                                    |
|:----------------------------|:-----------------------------------------------|
| TenantId                    | The unique identifier of the tenant.          |
| DimensionName               | The name of the dimension used for grouping (for example, Region, PolicyName, or ServicePlanType). |
| DimensionValue              | The raw value of the dimension.               |
| DimensionValueDisplayName   | The display name of the dimension value.      |
| HasAnomaly                  | Indicates whether an anomaly was detected for this dimension value. |
| HasTrendAnomaly             | Indicates whether a trend anomaly was detected for this dimension value. |
| P50RTT                      | The 50th percentile round trip time in milliseconds. |
| P95RTT                      | The 95th percentile round trip time in milliseconds. |
| ConnectionFailureRate       | The rate of connection failures as a percentage. |
| ActiveConnectionCount       | The count of active connections.              |
| HealthPercentage            | The health percentage of Cloud PC systems.    |

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
