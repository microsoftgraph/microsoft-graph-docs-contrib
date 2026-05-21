---
title: "Cloud PC troubleshoot report types"
description: "Reference for the report types, mandatory filter parameters, and response columns accepted by the retrieveCloudPcTroubleshootReports API."
author: "abbyzhccc"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
ms.date: 05/21/2026
ms.topic: concept-article
---

# Cloud PC troubleshoot report types

The [retrieveCloudPcTroubleshootReports](/graph/api/cloudpcreports-retrievecloudpctroubleshootreports?view=graph-rest-beta&preserve-view=true) API returns Cloud PC troubleshooting data across four scopes:

- [Tenant-level reports](#tenant-level-reports)
- [Configuration-level reports](#configuration-level-reports)
- [User and device reports](#user-and-device-reports)
- [View data table reports](#view-data-table-reports)

Each `reportName` value belongs to one scope. The scope determines the mandatory filter parameters that you must include in the **filter** request body field and the columns returned in the response Stream. Use this article as a reference when you construct a request and interpret the response.

The maximum supported date range is 28 days for tenant-level and user and device reports, and 180 days for configuration-level reports. Parameter values can be empty strings (`''`) if you don't want to filter on that dimension, unless the report type marks them as required.

## Tenant-level reports

### Mandatory filter parameters

The following table lists the mandatory filter parameters for tenant-level reports.

| reportName | Mandatory filter parameters |
|:---|:---|
| `troubleshootTenantGlobalFilterReport` | `TimeRange` |
| `troubleshootTenantNetworkTrendReport`, `troubleshootTenantNetworkAggregatedReport`, `troubleshootTenantConnectionFailureRateTrendReport`, `troubleshootTenantConnectionFailureRateAggregatedReport`, `troubleshootTenantActiveConnectionCountTrendReport`, `troubleshootTenantActiveConnectionCountAggregatedReport`, `troubleshootTenantMeanTimeToFailureTrendReport`, `troubleshootTenantMeanTimeToFailureAggregatedReport`, `troubleshootTenantRemoteSignInTimeTrendReport`, `troubleshootTenantRemoteSignInTimeAggregatedReport` | `TimeRange`, `PolicyNameParam`, `RegionParam`, `UserSettingNameParam`, `ServicePlanTypeParam`, `ServicePlanNameParam`, `OSBuildVersionParam`, `AADJoinTypeParam`, `ImageNameParam`, `GatewayRegionParam`, `ClientOSParam`, `ClientTypeParam`, `TransportTypeParam`, `CloudPCEndpointCountryRegionParam`, `CloudPCEndpointStateParam`, `CloudPCEndpointCityParam` |
| `troubleshootTenantCloudPCHealthTrendReport`, `troubleshootTenantCloudPCHealthAggregatedReport` | `TimeRange`, `PolicyNameParam`, `RegionParam`, `ServicePlanTypeParam`, `ServicePlanNameParam`, `AADJoinTypeParam`, `ImageNameParam` |

### Response columns

#### troubleshootTenantGlobalFilterReport

| Column | Description |
|:-------|:------------|
| TenantId | The unique identifier of the tenant. |
| PolicyName | The name of the policy applied. |
| Region | The region where the Cloud PC is located. |
| UserSettingName | The name of the user setting configuration. |
| ServicePlanType | The Cloud PC service plan type (FrontlineShared, FrontlineDedicated, Enterprise, or Reserve). |
| ServicePlanName | The name of the service plan. |
| OSBuildVersion | The operating system build version. |
| AADJoinType | The Azure Active Directory join type. |
| ImageName | The name of the OS image used. |
| GatewayRegion | The region where the gateway is located. |
| ClientOS | The client operating system. |
| ClientType | The type of client device. |
| TransportType | The transport protocol type used. |

#### troubleshootTenantNetworkTrendReport

| Column | Description |
|:-------|:------------|
| AvgRoundTripTimeInMs | The average round trip time in milliseconds. |
| TenantId | The unique identifier of the tenant. |
| EventDateTime | The date and time when the event occurred. |
| GroupColumn | The metric used for grouping data (PolicyName, Region, UserSettingName, ServicePlanType, ServicePlanName, OSBuildVersion, AADJoinType, ImageName, GatewayRegion, ClientOS, ClientType, TransportType, CloudPCEndpointCountryRegion, CloudPCEndpointState, or CloudPCEndpointCity). |

#### troubleshootTenantNetworkAggregatedReport

| Column | Description |
|:-------|:------------|
| AvgRoundTripTimeInMs | The average round trip time in milliseconds. |
| TenantId | The unique identifier of the tenant. |
| GroupColumn | The metric used for grouping data (PolicyName, Region, UserSettingName, ServicePlanType, ServicePlanName, OSBuildVersion, AADJoinType, ImageName, GatewayRegion, ClientOS, ClientType, TransportType, CloudPCEndpointCountryRegion, CloudPCEndpointState, or CloudPCEndpointCity). |

#### troubleshootTenantConnectionFailureRateTrendReport

| Column | Description |
|:-------|:------------|
| SuccessCount | The number of successful connections. |
| FailCount | The number of failed connections. |
| CompletedConnectionCount | The total number of completed connection attempts. |
| ConnectionFailureRate | The rate of connection failures as a percentage. |
| TenantId | The unique identifier of the tenant. |
| EventDateTime | The date and time when the event occurred. |
| GroupColumn | The metric used for grouping data (PolicyName, Region, UserSettingName, ServicePlanType, ServicePlanName, OSBuildVersion, AADJoinType, ImageName, GatewayRegion, ClientOS, ClientType, TransportType, CloudPCEndpointCountryRegion, CloudPCEndpointState, or CloudPCEndpointCity). |

#### troubleshootTenantConnectionFailureRateAggregatedReport

| Column | Description |
|:-------|:------------|
| SuccessCount | The number of successful connections. |
| FailCount | The number of failed connections. |
| CompletedConnectionCount | The total number of completed connection attempts. |
| ConnectionFailureRate | The rate of connection failures as a percentage. |
| TenantId | The unique identifier of the tenant. |
| GroupColumn | The metric used for grouping data (PolicyName, Region, UserSettingName, ServicePlanType, ServicePlanName, OSBuildVersion, AADJoinType, ImageName, GatewayRegion, ClientOS, ClientType, TransportType, CloudPCEndpointCountryRegion, CloudPCEndpointState, or CloudPCEndpointCity). |

#### troubleshootTenantActiveConnectionCountTrendReport

| Column | Description |
|:-------|:------------|
| TotalActiveConnectionCountAvg | The average count of total active connections. |
| TenantId | The unique identifier of the tenant. |
| EventDateTime | The date and time when the event occurred. |
| GroupColumn | The metric used for grouping data (PolicyName, Region, UserSettingName, ServicePlanType, ServicePlanName, OSBuildVersion, AADJoinType, ImageName, GatewayRegion, ClientOS, ClientType, TransportType, CloudPCEndpointCountryRegion, CloudPCEndpointState, or CloudPCEndpointCity). |

#### troubleshootTenantActiveConnectionCountAggregatedReport

| Column | Description |
|:-------|:------------|
| TotalActiveConnectionCountAvg | The average count of total active connections. |
| TenantId | The unique identifier of the tenant. |
| GroupColumn | The metric used for grouping data (PolicyName, Region, UserSettingName, ServicePlanType, ServicePlanName, OSBuildVersion, AADJoinType, ImageName, GatewayRegion, ClientOS, ClientType, TransportType, CloudPCEndpointCountryRegion, CloudPCEndpointState, or CloudPCEndpointCity). |

#### troubleshootTenantMeanTimeToFailureTrendReport

| Column | Description |
|:-------|:------------|
| MeanTimeToFailInHour | The mean time to failure in hours. |
| TenantId | The unique identifier of the tenant. |
| EventDateTime | The date and time when the event occurred. |
| GroupColumn | The metric used for grouping data (PolicyName, Region, UserSettingName, ServicePlanType, ServicePlanName, OSBuildVersion, AADJoinType, ImageName, GatewayRegion, ClientOS, ClientType, TransportType, CloudPCEndpointCountryRegion, CloudPCEndpointState, or CloudPCEndpointCity). |

#### troubleshootTenantMeanTimeToFailureAggregatedReport

| Column | Description |
|:-------|:------------|
| MeanTimeToFailInHour | The mean time to failure in hours. |
| TenantId | The unique identifier of the tenant. |
| GroupColumn | The metric used for grouping data (PolicyName, Region, UserSettingName, ServicePlanType, ServicePlanName, OSBuildVersion, AADJoinType, ImageName, GatewayRegion, ClientOS, ClientType, TransportType, CloudPCEndpointCountryRegion, CloudPCEndpointState, or CloudPCEndpointCity). |

#### troubleshootTenantRemoteSignInTimeTrendReport

| Column | Description |
|:-------|:------------|
| RemoteSignInTimeInSecondAvg | The average remote sign-in time in seconds. |
| TenantId | The unique identifier of the tenant. |
| EventDateTime | The date and time when the event occurred. |
| GroupColumn | The metric used for grouping data (PolicyName, Region, UserSettingName, ServicePlanType, ServicePlanName, OSBuildVersion, AADJoinType, ImageName, GatewayRegion, ClientOS, ClientType, TransportType, CloudPCEndpointCountryRegion, CloudPCEndpointState, or CloudPCEndpointCity). |

#### troubleshootTenantRemoteSignInTimeAggregatedReport

| Column | Description |
|:-------|:------------|
| RemoteSignInTimeInSecondAvg | The average remote sign-in time in seconds. |
| TenantId | The unique identifier of the tenant. |
| GroupColumn | The metric used for grouping data (PolicyName, Region, UserSettingName, ServicePlanType, ServicePlanName, OSBuildVersion, AADJoinType, ImageName, GatewayRegion, ClientOS, ClientType, TransportType, CloudPCEndpointCountryRegion, CloudPCEndpointState, or CloudPCEndpointCity). |

#### troubleshootTenantCloudPCHealthTrendReport

| Column | Description |
|:-------|:------------|
| HealthPercentage | The health percentage of Cloud PC systems. |
| TenantId | The unique identifier of the tenant. |
| EventDateTime | The date and time when the event occurred. |
| GroupColumn | The metric used for grouping data (PolicyName, Region, UserSettingName, ServicePlanType, ServicePlanName, OSBuildVersion, AADJoinType, ImageName, GatewayRegion, ClientOS, ClientType, TransportType, CloudPCEndpointCountryRegion, CloudPCEndpointState, or CloudPCEndpointCity). |

#### troubleshootTenantCloudPCHealthAggregatedReport

| Column | Description |
|:-------|:------------|
| HealthPercentage | The health percentage of Cloud PC systems. |
| TenantId | The unique identifier of the tenant. |
| GroupColumn | The metric used for grouping data (PolicyName, Region, UserSettingName, ServicePlanType, ServicePlanName, OSBuildVersion, AADJoinType, ImageName, GatewayRegion, ClientOS, ClientType, TransportType, CloudPCEndpointCountryRegion, CloudPCEndpointState, or CloudPCEndpointCity). |

## Configuration-level reports

### Mandatory filter parameters

The following table lists the mandatory filter parameters for configuration-level reports.

| reportName | Mandatory filter parameters |
|:---|:---|
| `troubleshootConfigurationGlobalFilterV1Report` | `TimeRange` |
| `troubleshootConfigurationConnectionCountTrendV1Report`, `troubleshootConfigurationTotalConnectionCountBarV1Report` | `TimeRange`, `CloudPCStatusParam`, `RegionParam`, `PolicyNameParam`, `UserSettingNameParam`, `ImageNameParam`, `ServicePlanNameParam`, `ServicePlanTypeParam`, `OSVersionParam`, `OSBuildVersionParam`, `ClientOSParam`, `ClientTypeParam`, `ClientVersionParam`, `TeamsAppV2VersionParam`, `MMRVersionParam` |

### Response columns

#### troubleshootConfigurationGlobalFilterV1Report

| Column | Description |
|:-------|:------------|
| TenantId | The unique identifier of the tenant. |
| CloudPCStatus | The status of the Cloud PC. |
| Region | The region where the Cloud PC is located. |
| PolicyName | The name of the policy applied. |
| UserSettingName | The name of the user setting configuration. |
| ImageName | The name of the OS image used. |
| ServicePlanName | The name of the service plan. |
| ServicePlanType | The Cloud PC service plan type. |
| OSVersion | The operating system version. |
| OSBuildVersion | The operating system build version. |
| ClientOS | The client operating system. |
| ClientType | The type of client device. |
| ClientVersion | The version of the client software. |
| TeamsAppV2Version | The version of the Teams App V2. |
| MMRVersion | The version of the MMR component. |

#### troubleshootConfigurationConnectionCountTrendV1Report

| Column | Description |
|:-------|:------------|
| TotalActivityCount | The total count of activities. |
| TenantId | The unique identifier of the tenant. |
| EventDateTime | The date and time when the event occurred. |
| GroupColumn | The metric used for grouping data (CloudPCStatus, Region, PolicyName, UserSettingName, ImageName, ServicePlanName, ServicePlanType, OSVersion, OSBuildVersion, ClientOS, ClientType, ClientVersion, TeamsAppV2Version, or MMRVersion). |

#### troubleshootConfigurationTotalConnectionCountBarV1Report

| Column | Description |
|:-------|:------------|
| TotalActivityCount | The total count of activities. |
| TenantId | The unique identifier of the tenant. |
| GroupColumn | The metric used for grouping data (CloudPCStatus, Region, PolicyName, UserSettingName, ImageName, ServicePlanName, ServicePlanType, OSVersion, OSBuildVersion, ClientOS, ClientType, ClientVersion, TeamsAppV2Version, or MMRVersion). |

## User and device reports

### Mandatory filter parameters

The following table lists the mandatory filter parameters for user and device reports.

| reportName | Mandatory filter parameters | Notes |
|:---|:---|:---|
| `troubleshootMatchedUserReport`, `troubleshootMatchedCloudPCReport` | `SearchParam` | |
| `troubleshootCloudPCListReport` | `UPNParam` | |
| `troubleshootUserListReport` | `CloudPCIdParam` | |
| `troubleshootCloudPCNetworkTrendReport`, `troubleshootCloudPCNetworkAggregatedReport`, `troubleshootCloudPCErrorTrendReport`, `troubleshootCloudPCErrorAggregatedReport`, `troubleshootCloudPCDurationTrendReport`, `troubleshootCloudPCDurationAggregatedReport`, `troubleshootCloudPCRemoteSignInTimeTrendReport`, `troubleshootCloudPCRemoteSignInTimeAggregatedReport`, `troubleshootCloudPCMetricsOfViewDataTableReport` | `UPNParam`, `TimeRange`, `CloudPCIdParam` | All three parameters must appear in the filter expression. `TimeRange` must have a non-empty value. At least one of `UPNParam` or `CloudPCIdParam` must have a non-empty value; the other can be an empty string. |
| `troubleshootCloudPCHealthTrendReport` | `TimeRange`, `CloudPCIdParam` | |

### Response columns

#### troubleshootMatchedUserReport

| Column | Description |
|:-------|:------------|
| CloudPCId | The unique identifier of the Cloud PC. |
| UPN | The User Principal Name of the user. |
| UserId | The unique identifier of the user. |

#### troubleshootMatchedCloudPCReport

| Column | Description |
|:-------|:------------|
| TenantId | The unique identifier of the tenant. |
| CloudPCId | The unique identifier of the Cloud PC. |
| ManagedDeviceName | The name of the managed device. |

#### troubleshootCloudPCListReport

| Column | Description |
|:-------|:------------|
| CloudPCId | The unique identifier of the Cloud PC. |
| ManagedDeviceName | The name of the managed device. |
| UserDisplayName | The display name of the user. |
| UPN | The User Principal Name of the user. |
| UserId | The unique identifier of the user. |
| ServicePlanType | The Cloud PC service plan type (FrontlineShared, FrontlineDedicated, Enterprise, or Reserve). |
| ProductType | The product type of the Cloud PC. |
| ProvisioningType | The provisioning type of the Cloud PC. |
| SKUName | The SKU name of the Cloud PC. |
| LastActiveTime | The last active time of the Cloud PC. |
| ConnectionState | The connection state of the Cloud PC. |
| DeviceHealthTime | The device health check time. |
| CloudDeviceHealthState | The health state of the Cloud PC device. |
| ProvisioningPolicyId | The unique identifier of the provisioning policy. |
| PolicyName | The name of the policy applied. |

#### troubleshootUserListReport

| Column | Description |
|:-------|:------------|
| CloudPCId | The unique identifier of the Cloud PC. |
| ManagedDeviceName | The name of the managed device. |
| UserDisplayName | The display name of the user. |
| UPN | The User Principal Name of the user. |
| UserId | The unique identifier of the user. |
| ServicePlanType | The Cloud PC service plan type (FrontlineShared, FrontlineDedicated, Enterprise, or Reserve). |
| ProductType | The product type of the Cloud PC. |
| ProvisioningType | The provisioning type of the Cloud PC. |
| SKUName | The SKU name of the Cloud PC. |
| LastActiveTime | The last active time of the Cloud PC. |
| LastGatewayRegion | The region of the last used gateway. |
| LastClientType | The type of the last used client device. |
| LastClientOS | The operating system of the last used client. |
| ConnectionState | The connection state of the Cloud PC. |
| DeviceHealthTime | The device health check time. |
| CloudDeviceHealthState | The health state of the Cloud PC device. |
| ProvisioningPolicyId | The unique identifier of the provisioning policy. |
| PolicyName | The name of the policy applied. |

#### troubleshootCloudPCNetworkTrendReport

| Column | Description |
|:-------|:------------|
| TenantId | The unique identifier of the tenant. |
| CloudPCId | The unique identifier of the Cloud PC. |
| ManagedDeviceName | The name of the managed device. |
| UPN | The User Principal Name of the user. |
| EventDateTime | The date and time when the event occurred. |
| RoundTripTimeInMsP50 | The 50th percentile round trip time in milliseconds. |
| BandwidthInMbpsP50 | The 50th percentile bandwidth in megabits per second. |

#### troubleshootCloudPCNetworkAggregatedReport

| Column | Description |
|:-------|:------------|
| TenantId | The unique identifier of the tenant. |
| CloudPCId | The unique identifier of the Cloud PC. |
| ManagedDeviceName | The name of the managed device. |
| UPN | The User Principal Name of the user. |
| RoundTripTimeInMsP50 | The 50th percentile round trip time in milliseconds. |
| BandwidthInMbpsP50 | The 50th percentile bandwidth in megabits per second. |

#### troubleshootCloudPCErrorTrendReport

| Column | Description |
|:-------|:------------|
| TenantId | The unique identifier of the tenant. |
| CodeSymbolic | The symbolic error code identifier. |
| EventDateTime | The date and time when the event occurred. |
| ErrorCount | The count of errors reported. |

#### troubleshootCloudPCErrorAggregatedReport

| Column | Description |
|:-------|:------------|
| TenantId | The unique identifier of the tenant. |
| CodeSymbolic | The symbolic error code identifier. |
| ErrorCount | The count of errors reported. |
| ErrorPercentage | The percentage of errors reported. |

#### troubleshootCloudPCDurationTrendReport

| Column | Description |
|:-------|:------------|
| TenantId | The unique identifier of the tenant. |
| CloudPCId | The unique identifier of the Cloud PC. |
| ManagedDeviceName | The name of the managed device. |
| UPN | The User Principal Name of the user. |
| EventDateTime | The date and time when the event occurred. |
| DurationInHour | The duration time in hours. |
| AvgDurationInHour | The average duration time in hours. |

#### troubleshootCloudPCDurationAggregatedReport

| Column | Description |
|:-------|:------------|
| TenantId | The unique identifier of the tenant. |
| CloudPCId | The unique identifier of the Cloud PC. |
| ManagedDeviceName | The name of the managed device. |
| UPN | The User Principal Name of the user. |
| DurationInHour | The duration time in hours. |
| AvgDurationInHour | The average duration time in hours. |

#### troubleshootCloudPCRemoteSignInTimeTrendReport

| Column | Description |
|:-------|:------------|
| TenantId | The unique identifier of the tenant. |
| CloudPCId | The unique identifier of the Cloud PC. |
| ManagedDeviceName | The name of the managed device. |
| UPN | The User Principal Name of the user. |
| EventDateTime | The date and time when the event occurred. |
| RemoteSignInTimeInSecondAvg | The average remote sign-in time in seconds. |

#### troubleshootCloudPCRemoteSignInTimeAggregatedReport

| Column | Description |
|:-------|:------------|
| TenantId | The unique identifier of the tenant. |
| CloudPCId | The unique identifier of the Cloud PC. |
| ManagedDeviceName | The name of the managed device. |
| UPN | The User Principal Name of the user. |
| RemoteSignInTimeInSecondAvg | The average remote sign-in time in seconds. |

#### troubleshootCloudPCHealthTrendReport

| Column | Description |
|:-------|:------------|
| TenantId | The unique identifier of the tenant. |
| CloudPCId | The unique identifier of the Cloud PC. |
| ManagedDeviceName | The name of the managed device. |
| UPN | The User Principal Name of the user. |
| UserId | The unique identifier of the user. |
| EventDateTime | The date and time when the event occurred. |
| HealthPercentage | The health percentage of Cloud PC systems. |

## View data table reports

### Mandatory filter parameters

The following table lists the mandatory filter parameters for view data table reports.

| reportName | Mandatory filter parameters |
|:---|:---|
| `troubleshootEnvironmentOverviewOfViewDataTableReport` | None. The **filter** parameter is optional. |
| `troubleshootTenantConnectedDevicesOfViewDataTableReport`, `troubleshootTenantEnvironmentMetricsOfViewDataTableReport` | `TimeRange`, `PolicyNameParam`, `RegionParam`, `UserSettingNameParam`, `ServicePlanTypeParam`, `ServicePlanNameParam`, `OSBuildVersionParam`, `AADJoinTypeParam`, `ImageNameParam`, `GatewayRegionParam`, `ClientOSParam`, `ClientTypeParam`, `TransportTypeParam`, `CloudPCEndpointCountryRegionParam`, `CloudPCEndpointStateParam`, `CloudPCEndpointCityParam` |
| `troubleshootEventsOfViewDataTableReport` | `TimeRange`, `PolicyNameParam`, `RegionParam`, `UserSettingNameParam`, `ServicePlanTypeParam`, `ServicePlanNameParam`, `OSBuildVersionParam`, `AADJoinTypeParam`, `ImageNameParam`, `GatewayRegionParam`, `ClientOSParam`, `ClientTypeParam`, `TransportTypeParam`, `UPNParam`, `CloudPCIdParam`, `CloudPCEndpointCountryRegionParam`, `CloudPCEndpointStateParam`, `CloudPCEndpointCityParam` |
| `troubleshootConnectionConfigurationOfViewDataTableV1Report` | `TimeRange`, `CloudPCStatusParam`, `RegionParam`, `PolicyNameParam`, `UserSettingNameParam`, `ImageNameParam`, `ServicePlanNameParam`, `ServicePlanTypeParam`, `OSVersionParam`, `OSBuildVersionParam`, `ClientOSParam`, `ClientTypeParam`, `ClientVersionParam`, `TeamsAppV2VersionParam`, `MMRVersionParam`, `CloudPCIdParam`, `UPNParam`, `AADJoinTypeParam`, `GatewayRegionParam`, `TransportTypeParam`, `CloudPCEndpointCountryRegionParam`, `CloudPCEndpointStateParam`, `CloudPCEndpointCityParam` |

> [!NOTE]
> `troubleshootCloudPCMetricsOfViewDataTableReport` is treated as a user and device report. Its mandatory filter parameters are listed in [User and device reports](#user-and-device-reports). Its response columns are listed in this section.

### Response columns

#### troubleshootEnvironmentOverviewOfViewDataTableReport

| Column | Description |
|:-------|:------------|
| TenantId | The unique identifier of the tenant. |
| DimensionName | The name of the dimension used for grouping (for example, Region, PolicyName, or ServicePlanType). |
| DimensionValue | The raw value of the dimension. |
| DimensionValueDisplayName | The display name of the dimension value. |
| HasAnomaly | Indicates whether an anomaly was detected for this dimension value. |
| HasTrendAnomaly | Indicates whether a trend anomaly was detected for this dimension value. |
| P50RTT | The 50th percentile round trip time in milliseconds. |
| P95RTT | The 95th percentile round trip time in milliseconds. |
| ConnectionFailureRate | The rate of connection failures as a percentage. |
| ActiveConnectionCount | The count of active connections. |
| HealthPercentage | The health percentage of Cloud PC systems. |

#### troubleshootTenantConnectedDevicesOfViewDataTableReport

| Column | Description |
|:-------|:------------|
| TenantId | The unique identifier of the tenant. |
| Timestamp | The timestamp when the data was recorded. |
| ManagedDeviceName | The name of the managed device. |
| CloudPCId | The unique identifier of the Cloud PC. |
| ConnectionState | The connection state of the Cloud PC. |
| LastActiveTime | The last active time of the Cloud PC. |
| UPN | The User Principal Name of the user. |
| ProvisioningPolicyName | The name of the provisioning policy. |
| UserSettingName | The name of the user setting configuration. |
| CloudPCHostGeography | The geographical location of the Cloud PC host. |
| Region | The region where the Cloud PC is located. |
| ServicePlanType | The Cloud PC service plan type (FrontlineShared, FrontlineDedicated, Enterprise, or Reserve). |
| ServicePlanName | The name of the service plan. |
| ImageName | The name of the OS image used. |

#### troubleshootTenantEnvironmentMetricsOfViewDataTableReport

| Column | Description |
|:-------|:------------|
| EventDateTime | The date and time when the event occurred. |
| TotalActiveConnectionCountAvg | The average count of total active connections. |
| AvgRoundTripTimeInMs | The average round trip time in milliseconds. |
| AvgBandwidthInMbps | The average bandwidth in megabits per second. |
| ConnectionFailurePercentage | The percentage of connection failures. |
| HealthPercentage | The health percentage of Cloud PC systems. |
| TotalDurationInHour | The total duration time in hours. |
| AvgDurationInHour | The average duration time in hours. |
| MeanTimeToFailInHour | The mean time to failure in hours. |
| MeanTimeToRepairInSecond | The mean time to repair in seconds. |
| RemoteSignInTimeInSecondAvg | The average remote sign-in time in seconds. |

#### troubleshootEventsOfViewDataTableReport

| Column | Description |
|:-------|:------------|
| TenantId | The unique identifier of the tenant. |
| ActivityId | The unique identifier of the activity session. |
| Timestamp | The timestamp when the event occurred. |
| UPN | The User Principal Name of the user. |
| UserId | The unique identifier of the user. |
| ManagedDeviceName | The name of the managed device. |
| CloudPCId | The unique identifier of the Cloud PC. |
| EventCategory | The category of the event. |
| EventName | The name of the event. |
| EventSource | The source system that generated the event. |
| CheckpointParameters | Additional parameters related to the checkpoint. |
| ErrorCode | The numeric error code if applicable. |
| ErrorCodeSymbolic | The symbolic representation of the error code. |
| ErrorMessage | The descriptive error message if applicable. |
| ResultType | The type of result for the event. |
| EventLevel | The severity level of the event. |
| CloudDeviceHealthState | The health state of the Cloud PC device. |

#### troubleshootCloudPCMetricsOfViewDataTableReport

| Column | Description |
|:-------|:------------|
| TenantId | The unique identifier of the tenant. |
| EventDateTime | The date and time when the event occurred. |
| TotalActiveConnectionCountAvg | The average count of total active connections. |
| AvgRoundTripTimeInMs | The average round trip time in milliseconds. |
| AvgBandwidthInMbps | The average bandwidth in megabits per second. |
| ConnectionSuccessCount | The number of successful connections. |
| ConnectionFailCount | The number of failed connections. |
| ConnectionFailurePercentage | The percentage of connection failures. |
| HealthyCount | The number of healthy Cloud PCs. |
| UnhealthyCount | The number of unhealthy Cloud PCs. |
| UnknownCount | The number of Cloud PCs with unknown health status. |
| HealthPercentage | The health percentage of Cloud PC systems. |
| TotalDurationInHour | The total duration time in hours. |
| AvgDurationInHour | The average duration time in hours. |
| RemoteSignInTimeInSecondAvg | The average remote sign-in time in seconds. |

#### troubleshootConnectionConfigurationOfViewDataTableV1Report

| Column | Description |
|:-------|:------------|
| TenantId | The unique identifier of the tenant. |
| ActivityId | The unique identifier of the activity session. |
| SessionBeginTime | The start time of the session. |
| SessionEndTime | The end time of the session. |
| UPN | The User Principal Name of the user. |
| UserId | The unique identifier of the user. |
| ManagedDeviceName | The name of the managed device. |
| CloudPCId | The unique identifier of the Cloud PC. |
| CloudPCHostGeography | The geographical location of the Cloud PC host. |
| Region | The region where the Cloud PC is located. |
| SessionHostAgentVersion | The version of the session host agent. |
| SessionHostSxSStackVersion | The version of the session host SxS stack. |
| GatewayRegion | The region where the gateway is located. |
| PolicyName | The name of the policy applied. |
| UserSettingName | The name of the user setting configuration. |
| ServicePlanType | The Cloud PC service plan type (FrontlineShared, FrontlineDedicated, Enterprise, or Reserve). |
| ServicePlanName | The name of the service plan. |
| AADJoinType | The Azure Active Directory join type. |
| ImageName | The name of the OS image used. |
| TransportType | The transport protocol type used. |
| PlatformName | The name of the platform. |
| ClientOS | The client operating system. |
| ClientType | The type of client device. |
| ClientVersion | The version of the client software. |
| TeamsAppV2Version | The version of the Teams App V2. |
| MMRVersion | The version of the MMR component. |
| SessionHostIPAddress | The IP address of the session host. |
| CloudPCEndpointCountry | The country of the Cloud PC endpoint. |
| CloudPCEndpointCountryRegion | The country region of the Cloud PC endpoint. |
| CloudPCEndpointState | The state of the Cloud PC endpoint. |
| CloudPCEndpointCity | The city of the Cloud PC endpoint. |

## Related content

- [retrieveCloudPcTroubleshootReports](/graph/api/cloudpcreports-retrievecloudpctroubleshootreports?view=graph-rest-beta&preserve-view=true)
- [cloudPcReports resource type](/graph/api/resources/cloudpcreports?view=graph-rest-beta&preserve-view=true)
