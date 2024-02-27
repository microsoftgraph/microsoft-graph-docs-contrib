---
title: "cloudPcExportJob resource type"
description: "Represents the export job created for downloading reports."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcExportJob resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the export job for downloading a specified Cloud PC report.

## Methods

| Method                                                              | Return type                                          | Description                                                                                             |
| :------------------------------------------------------------------ | :--------------------------------------------------- | :------------------------------------------------------------------------------------------------------ |
| [Create cloudPcExportJob](../api/cloudpcreports-post-exportjobs.md) | [cloudPcExportJob](../resources/cloudpcexportjob.md) | Create a new [cloudPcExportJob](../resources/cloudpcexportjob.md) object to initiate downloading the entire or a specified portion of a report. |
| [Get cloudPcExportJob](../api/cloudpcexportjob-get.md)              | [cloudPcExportJob](../resources/cloudpcexportjob.md) | Read the properties and relationships of a [cloudPcExportJob](../resources/cloudpcexportjob.md) object. |

## Properties

| Property           | Type                                                     | Description                                                                                                                                                                             |
| :----------------- | :------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| expirationDateTime | DateTimeOffset                                           | The date and time when the export job expires.                                                                                                                                              |
| exportJobStatus    | [cloudPcExportJobStatus](#cloudpcexportjobstatus-values) | The status of the export job. The possible values are: `notStarted`, `inProgress`, `completed`, `unknownFutureValue`. Read-only.                                                         |
| exportUrl          | String                                                   | The storage account URL of the exported report. It can be used to download the file.                                                                                                    |
| filter             | String                                                   | The filter applied on the report.                                                                                                                                                       |
| format             | String                                                   | The format of the exported report.                                                                                                                                                      |
| id                 | String                                                   | The unique identifier for the report. Read-only.                                                                                                                                        |
| reportName         | [cloudPcReportName](#cloudpcreportname-values)           | The report name. The possible values are: `remoteConnectionHistoricalReports`, `dailyAggregatedRemoteConnectionReports`, `totalAggregatedRemoteConnectionReports`, `sharedUseLicenseUsageReport`, `sharedUseLicenseUsageRealTimeReport`, `unknownFutureValue`,  `noLicenseAvailableConnectivityFailureReport`, `frontlineLicenseUsageReport`, `frontlineLicenseUsageRealTimeReport`,  `remoteConnectionQualityReports`, `inaccessibleCloudPcReports`, `rawRemoteConnectionReports`, `cloudPcUsageCategoryReports`. You must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `noLicenseAvailableConnectivityFailureReport`, `frontlineLicenseUsageReport`, `frontlineLicenseUsageRealTimeReport`, `remoteConnectionQualityReports`, `inaccessibleCloudPcReports`, `rawRemoteConnectionReports`, `cloudPcUsageCategoryReports`.|
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
| unknownFutureValue                          | Evolvable enumeration sentinel value. Do not use.                        |
| noLicenseAvailableConnectivityFailureReport | The Cloud PCs that failed to connect because no licenses were available. |
| frontlineLicenseUsageReport                 | The daily/hourly aggregated Windows 365 Frontline license usage report.  |
| frontlineLicenseUsageRealTimeReport         | The real-time data for Windows 365 Frontline license usage.              |
| remoteConnectionQualityReports              | The overall connection quality report for all devices within a tenant.   |
| inaccessibleCloudPcReports                  | The Cloud PCs that are inaccessible.                                     |
| rawRemoteConnectionReports                  | The raw real-time remote connection report.                              |
| cloudPcUsageCategoryReports                 | The usage category reports of Cloud PCs.                                 |

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
