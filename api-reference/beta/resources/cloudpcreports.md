---
title: "cloudPcReports resource type"
description: "Represents the Windows 365 Cloud PC-related reports, including the Windows 365 Cloud PC remote connections report."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 10/21/2024
toc.title: "Cloud PC reports"
---

# cloudPcReports resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Windows 365 Cloud PC-related reports, including the Windows 365 Cloud PC remote connections report.

Use a method in the [Methods](#methods) section to get the corresponding report data in the response. Alternatively, you can use the [cloudPCExportJob](cloudpcexportjob.md) resource and specify a storage account URL to download the specific report.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get action status reports](../api/cloudpcreports-getactionstatusreports.md)|Stream|Get the remote action status reports, including data such as the Cloud PC ID, Cloud PC device display name, initiating user's principal name, device owner's user principal name, action taken, and action state.|
|[Get bulk action status reports](../api/cloudpcreports-retrievebulkactionstatusreport.md)|Stream|Get the bulk remote action status reports, including data such as the bulk action ID, bulk action display name, initiating user's principal name, action type, and action state.|
|[Get Cloud PC troubleshooting reports](../api/cloudpcreports-retrievecloudpctroubleshootreports.md)|Stream|Get troubleshooting reports for Cloud PCs.|
|[Get frontline report](../api/cloudpcreports-getfrontlinereport.md)|Stream| Get Frontline Cloud PC license usage reports, such as **servicePlanId**, **licenseCount**, and **claimedLicenseCount**, for real-time, 7 days, or 28 days trend.|
|[Get inaccessible Cloud PC reports](../api/cloudpcreports-getinaccessiblecloudpcreports.md)|Stream|Get inaccessible Cloud PCs with details, including the latest health state, failed connection count, failed health check count, and system status.|
|[Get raw remote connection reports](../api/cloudpcreports-getrawremoteconnectionreports.md)|Stream|Get the raw real-time remote connection report for a Cloud PC without any calculation or aggregation.|
|[Get real-time remote connection latency reports](../api/cloudpcreports-getrealtimeremoteconnectionlatency.md)|Stream|Get the real-time remote connection latency reports like current round trip time and available bandwidth of a Cloud PC.|
|[Get real-time remote connection status reports](../api/cloudpcreports-getrealtimeremoteconnectionstatus.md)|Stream|Get the real-time remote connection status reports like sign-in status or days since the last use of a Cloud PC.|
|[Get remote connection historical reports](../api/cloudpcreports-getremoteconnectionhistoricalreports.md)|Stream|Get a Cloud PC's remote connection historical reports, such as **signInDateTime**, **signOutDateTime**, or **usageInHour**, in a given period.|
|[Get total aggregated remote connection reports](../api/cloudpcreports-gettotalaggregatedremoteconnectionreports.md)|Stream|Get the total aggregated remote connection reports, like usage and **daysSinceLastUse**, in a given period.|
|[Retrieve Cloud PC tenant metrics report](../api/cloudpcreports-retrievecloudpctenantmetricsreport.md)|Stream|Get a report related to the performance of Cloud PCs.|
|[Retrieve cross-region disaster recovery report](../api/cloudpcreports-retrievecrossregiondisasterrecoveryreport.md)|Stream| Retrieve the Windows 365 cross-region disaster recovery report, including cloudPcId, userId, deviceId, cloudPCDeviceDisplayName, userPrincipalName, enabledDRType, disasterRecoveryStatus, licenseType, drHealthStatus, currentRestorePointDateTime, backupCloudPcStatus, and activationExpirationDateTime.|
|[Retrieve connection quality reports](../api/cloudpcreports-retrieveconnectionqualityreports.md)|Stream|Get the overall connection quality reports for all devices in the current tenant, the regional connection quality trend report, and the regional connection quality insight report, including round trip time, available bandwidth, UPD usage, and dropped connections.|
|[Get daily aggregated remote connection reports](../api/cloudpcreports-getdailyaggregatedremoteconnectionreports.md)|Stream|Get the daily aggregated remote connection reports like round trip time and available bandwidth in a given period.|
|[Get Cloud PC performance report (deprecated)](../api/cloudpcreports-getcloudpcperformancereport.md)|Stream|Get a report related to the performance of Cloud PCs. This API is deprecated and stopped returning data on December 31, 2024. Going forward, use the [retrieveCloudPcTenantMetricsReport](../api/cloudpcreports-retrievecloudpctenantmetricsreport.md) API.|
|[Get Cloud PC recommendation reports (deprecated)](../api/cloudpcreports-getcloudpcrecommendationreports.md)|Stream|Get the device recommendation reports for Cloud PCs, such as the usage category report. This API is deprecated and will stop returning data on July 01, 2025. Going forward, use the [retrieveCloudPcRecommendationReports](../api/cloudpcreports-retrievecloudpcrecommendationreports.md) API.|
|[Get connection quality reports (deprecated)](../api/cloudpcreports-gettotalaggregatedremoteconnectionreports.md)|Stream|Get the overall connection quality reports for all devices within a current tenant during a given period, including metrics like the average round trip time (P50), average available bandwidth, and UDP connection percentage. Also get other real-time metrics such as last connection round trip time, last connection client IP, last connection gateway, and last connection protocol. This API is deprecated and stopped returning data on December 31, 2024. Going forward, use the [retrieveConnectionQualityReports](../api/cloudpcreports-retrieveconnectionqualityreports.md) API.|
|[Get shared use license usage report (deprecated)](../api/cloudpcreports-getshareduselicenseusagereport.md) |Stream| Get the shared use license usage reports, such as **servicePlanId**, **licenseCount**, and **claimedLicenseCount**, for real-time, 7 days, or 28 days trend.|
|[Retrieve Cloud PC recommendation reports (deprecated)](../api/cloudpcreports-retrievecloudpcrecommendationreports.md)|Stream|Get the device recommendation reports for Cloud PCs, such as the usage category report. This API is deprecated and will stop returning data on December 31, 2025. Going forward, use the [cloudPcReport: retrieveCloudPcRecommendationReports](../api/cloudpcreport-retrievecloudpcrecommendationreports.md) API.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the reports. Read-only. |

### cloudPCPerformanceReportName values

| Member                     | Description       |
| :------------------------- | :---------------- |
| performanceTrendReport     | Indicates a daily aggregated report that provides a list of connection quality metrics for Cloud PCs over the past seven days within a tenant. The metrics include `SlowRoundTripTimeCloudPcCount`, `LowUdpConnectionPercentageCount`, `NoTimeConnectedCloudPcCount`, and `LowTimeConnectedCloudPcCount`. Each daily report is an aggregation of the previous 28 days, counted back from the trigger time.  | 
| unknownFutureValue         | Evolvable enumeration sentinel value. Don't use.             |
| cloudPcInsightReport       | Indicates Cloud PC-level configuration data with insights. The `cloudPcInsightReport` member isn't currently implemented. Don't use.   |

### cloudPCTroubleshootReportType values

| Member                        | Description       |
| :---------------------------- | :---------------- |
| troubleshootTenantGlobalFilterReport | The tenant-level global filter report for troubleshooting. |
| troubleshootTenantNetworkTrendReport | The tenant-level network round-trip time trend report. |
| troubleshootTenantNetworkAggregatedReport | The tenant-level aggregated network round-trip time report. |
| troubleshootTenantConnectionFailureRateTrendReport | The tenant-level connection failure rate trend report. |
| troubleshootTenantConnectionFailureRateAggregatedReport | The tenant-level aggregated connection failure rate report. |
| troubleshootTenantCloudPCHealthTrendReport | The tenant-level Cloud PC health trend report. |
| troubleshootTenantCloudPCHealthAggregatedReport | The tenant-level aggregated Cloud PC health report. |
| troubleshootTenantActiveConnectionCountTrendReport | The tenant-level active connection count trend report. |
| troubleshootTenantActiveConnectionCountAggregatedReport | The tenant-level aggregated active connection count report. |
| troubleshootTenantMTTFTrendReport | The tenant-level mean time to failure (MTTF) trend report. |
| troubleshootTenantMTTFAggregatedReport | The tenant-level aggregated mean time to failure (MTTF) report. |
| troubleshootTenantMTTRTrendReport | The tenant-level mean time to repair (MTTR) trend report. |
| troubleshootTenantMTTRAggregatedReport | The tenant-level aggregated mean time to repair (MTTR) report. |
| troubleshootTenantRemoteSignInTimeTrendReport | The tenant-level remote sign-in time trend report. |
| troubleshootTenantRemoteSignInTimeAggregatedReport | The tenant-level aggregated remote sign-in time report. |
| troubleshootEventsOfViewDataTableReport | The events view data table report for troubleshooting. |
| troubleshootTenantEnvironmentMetricsOfViewDataTableReport | The tenant-level environment metrics view data table report. |
| troubleshootCloudPCMetricsOfViewDataTableReport | The Cloud PC-level metrics view data table report. |
| troubleshootConfigurationConnectionCountTrendV1Report | The configuration-level connection count trend report (v1). |
| troubleshootConfigurationTotalConnectionCountBarV1Report | The configuration-level total connection count bar report (v1). |
| troubleshootConfigurationGlobalFilterV1Report | The configuration-level global filter report (v1). |
| troubleshootConnectionConfigurationOfViewDataTableV1Report | The connection configuration view data table report (v1). |
| troubleshootTenantConnectedDevicesOfViewDataTableReport | The tenant-level connected devices view data table report. |
| troubleshootEnvironmentOverviewOfViewDataTableReport | The environment overview view data table report. |
| troubleshootCloudPCNetworkTrendReport | The Cloud PC-level network trend report. |
| troubleshootCloudPCNetworkAggregatedReport | The Cloud PC-level aggregated network report. |
| troubleshootCloudPCErrorTrendReport | The Cloud PC-level error trend report. |
| troubleshootCloudPCErrorAggregatedReport | The Cloud PC-level aggregated error report. |
| troubleshootCloudPCDurationTrendReport | The Cloud PC-level session duration trend report. |
| troubleshootCloudPCDurationAggregatedReport | The Cloud PC-level aggregated session duration report. |
| troubleshootCloudPCRemoteSignInTimeTrendReport | The Cloud PC-level remote sign-in time trend report. |
| troubleshootCloudPCRemoteSignInTimeAggregatedReport | The Cloud PC-level aggregated remote sign-in time report. |
| troubleshootCloudPCListReport | The Cloud PC list report for troubleshooting. |
| troubleshootCloudPCHealthTrendReport | The Cloud PC-level health trend report. |
| troubleshootMatchedUserReport | The report of users matched to a Cloud PC for troubleshooting. |
| troubleshootMatchedCloudPCReport | The report of Cloud PCs matched to a user for troubleshooting. |
| troubleshootUserListReport | The user list report for troubleshooting. |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|exportJobs|[cloudPcExportJob](../resources/cloudpcexportjob.md) collection|The export jobs created for downloading reports.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcReports",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcReports",
  "id": "String (identifier)"
}
```
