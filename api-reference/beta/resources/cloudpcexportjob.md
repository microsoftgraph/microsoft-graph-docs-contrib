---
title: "cloudPcExportJob resource type"
description: "Represents the export job created for downloading reports."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 10/21/2024
---

# cloudPcExportJob resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the export job for downloading a specified Cloud PC report.

## Methods

| Method                                                              | Return type                                          | Description                                                                                             |
| :------------------------------------------------------------------ | :--------------------------------------------------- | :------------------------------------------------------------------------------------------------------ |
| [Create export job](../api/cloudpcreports-post-exportjobs.md) | [cloudPcExportJob](../resources/cloudpcexportjob.md) | Create a new [cloudPcExportJob](../resources/cloudpcexportjob.md) object to initiate downloading the entire or a specified portion of a report. |
| [Get export job](../api/cloudpcexportjob-get.md)              | [cloudPcExportJob](../resources/cloudpcexportjob.md) | Read the properties and relationships of a [cloudPcExportJob](../resources/cloudpcexportjob.md) object. |

## Properties

| Property           | Type                                                     | Description                                                                                                                                                                             |
| :----------------- | :------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| expirationDateTime | DateTimeOffset                                           | The date and time when the export job expires.                                                                                                                                              |
| exportJobStatus    | [cloudPcExportJobStatus](#cloudpcexportjobstatus-values) | The status of the export job. The possible values are: `notStarted`, `inProgress`, `completed`, `unknownFutureValue`. Read-only.                                                         |
| exportUrl          | String                                                   | The storage account URL of the exported report. It can be used to download the file.                                                                                                    |
| filter             | String                                                   | The filter applied on the report.                                                                                                                                                       |
| format             | String                                                   | The format of the exported report.                                                                                                                                                      |
| id                 | String                                                   | The unique identifier for the report. Read-only.                                                                                                                                        |
| reportName         | [cloudPcReportName](#cloudpcreportname-values)           | The report name. The possible values are: `remoteConnectionHistoricalReports`, `dailyAggregatedRemoteConnectionReports`, `totalAggregatedRemoteConnectionReports`, `sharedUseLicenseUsageReport`, `sharedUseLicenseUsageRealTimeReport`, `unknownFutureValue`, `noLicenseAvailableConnectivityFailureReport`, `frontlineLicenseUsageReport`, `frontlineLicenseUsageRealTimeReport`, `remoteConnectionQualityReports`, `inaccessibleCloudPcReports`, `actionStatusReport`, `rawRemoteConnectionReports`, `cloudPcUsageCategoryReports`, `crossRegionDisasterRecoveryReport`, `regionalConnectionQualityTrendReport`, `regionalConnectionQualityInsightsReport`, `remoteConnectionQualityReport`, `bulkActionStatusReport`, `cloudPcInsightReport`, `regionalInaccessibleCloudPcTrendReport`, `troubleshootDetailsReport`, `troubleshootTrendCountReport`, `troubleshootRegionalReport`, `troubleshootIssueCountReport`, `cloudPcInventoryReport`. Use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `noLicenseAvailableConnectivityFailureReport`, `frontlineLicenseUsageReport`, `frontlineLicenseUsageRealTimeReport`, `remoteConnectionQualityReports`, `inaccessibleCloudPcReports`, `rawRemoteConnectionReports`, `cloudPcUsageCategoryReports`, `crossRegionDisasterRecoveryReport`, `cloudPcInsightReport`, `regionalInaccessibleCloudPcTrendReport`,, `troubleshootDetailsReport`, `troubleshootTrendCountReport`, `troubleshootRegionalReport`, `troubleshootIssueCountReport`, `cloudPcInventoryReport`.|
| requestDateTime    | DateTimeOffset                                           | The date and time when the export job was requested.  |
| select             | String collection                                        | The selected columns of the report.   |

### cloudPcExportJobStatus values

| Member             | Description                                           |
| :----------------- | :---------------------------------------------------- |
| notStarted         | The export job doesn't start yet.                     |
| inProgress         | The export job is in progress.                        |
| completed          | The export job is completed with the export URL returned. |
| failed             | The export job has failed.                            |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.      |

### cloudPcReportName values

| Member                                      | Description                                                              |
|:--------------------------------------------|:-------------------------------------------------------------------------|
| remoteConnectionHistoricalReports           | The historical aggregated remote connections report.                     |
| dailyAggregatedRemoteConnectionReports      | The daily aggregated remote connections report.                          |
| totalAggregatedRemoteConnectionReports      | The total aggregated remote connections report.                          |
| sharedUseLicenseUsageReport                 | The daily/hourly aggregated shared use license usage report.             |
| sharedUseLicenseUsageRealTimeReport         | The real-time data for shared use license usage.                         |
| unknownFutureValue                          | Evolvable enumeration sentinel value. Don't use.                         |
| noLicenseAvailableConnectivityFailureReport | The Cloud PCs that failed to connect because no licenses were available. |
| frontlineLicenseUsageReport                 | The daily/hourly aggregated Windows 365 Frontline license usage report.                   |
| frontlineLicenseUsageRealTimeReport         | The real-time data for Windows 365 Frontline license usage.                             |
| remoteConnectionQualityReports (deprecated) | The overall connection quality report for all devices within a tenant. Starting from December 31, 2024, the `remoteConnectionQualityReports` member will be deprecated and no longer supported. Going forward, use the `remoteConnectionQualityReport` member. |
| inaccessibleCloudPcReports             | The Cloud PCs that are inaccessible. |
| actionStatusReport                          | The actions status report for the Cloud PCs.                                  |
| rawRemoteConnectionReports             | The raw real-time remote connection report.                         |
| cloudPcUsageCategoryReports (deprecated)  | The usage category reports of Cloud PCs. The `cloudPcUsageCategoryReports` member is deprecated and will stop returning on December 31, 2025. Going forward, use the `cloudPcUsageCategoryReport` member with the [cloudPcReport](cloudpcreport.md) resource instead. |
| crossRegionDisasterRecoveryReport                 | The cross-region disaster recovery status for Cloud PCs.                                 |
| performanceTrendReport                 | The daily aggregated report that provides a list of connection quality metrics for Cloud PCs over the past seven days within a tenant. The metrics include `SlowRoundTripTimeCloudPcCount`, `LowUdpConnectionPercentageCount`, `NoTimeConnectedCloudPcCount`, and `LowTimeConnectedCloudPcCount`. Each daily report is an aggregation of the previous 28 days, counted back from the trigger time. |
| inaccessibleCloudPcTrendReport         | The daily aggregated report for a specified period that contains details of Cloud PCs that are inaccessible, including those with consecutive connection failures or in an unavailable state. |
| regionalConnectionQualityTrendReport        | The regional connection quality trend reports of Cloud PCs.              |
| regionalConnectionQualityInsightsReport     | The regional connection quality insights reports of Cloud PCs.           |
| remoteConnectionQualityReport               | The overall connection quality reports for all devices under a tenant.   |
| bulkActionStatusReport               | The details of Cloud PC bulk actions, including bulk action status, name, type, state, completion state, and request date time.   |
| troubleshootDetailsReport |The daily Cloud PC troubleshooting details, including performance issues, network issues, and reliability issues.|
| troubleshootTrendCountReport |The aggregated report that shows the number and trend of issues per tenant.|
| troubleshootRegionalReport |The daily regional aggregated report that shows network quality issues by region, including round-trip time issues, connection quality issues, and reliability issues.|
| troubleshootIssueCountReport |The aggregated report that shows the number of performance issues, network issues, and reliability issues for 28 days.|
| cloudPcInsightReport                     | Indicates Cloud PC-level configuration data and troubleshooting data with insights, including client version, client operating system, host region, Teams media, error source, error code symbolic, and error message. |
| regionalInaccessibleCloudPcTrendReport      | The weekly regional aggregated report of inaccessible Cloud PC trends.    |
| cloudPcUsageCategoryReport | The usage category reports of Cloud PCs. |
| cloudPcInventoryReport | The inventory of Cloud PC list. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcExportJob",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcExportJob",
  "expirationDateTime": "String (timestamp)",
  "exportJobStatus": "String",
  "exportUrl": "String",
  "filter": "String",
  "format": "String",
  "id": "String (identifier)",
  "reportName": "String",
  "requestDateTime": "String (timestamp)",
  "select": [
    "String"
  ]
}
```
