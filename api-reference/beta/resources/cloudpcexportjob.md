---
title: "cloudPcExportJob resource type"
description: "Represents the export job created for downloading reports."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcExportJob resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the export job for downloading a specified Cloud PC report.

## Methods
| Method                                                              | Return type                                          | Description                                                                                             |
| :------------------------------------------------------------------ | :--------------------------------------------------- | :------------------------------------------------------------------------------------------------------ |
| [Create cloudPcExportJob](../api/cloudpcreports-post-exportjobs.md) | [cloudPcExportJob](../resources/cloudpcexportjob.md) | Create a new [cloudPcExportJob](../resources/cloudpcexportjob.md) object to initiate downloading the entire or specified portion of a report. |
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
| reportName         | [cloudPcReportName](#cloudpcreportname-values)           | The report name. The possible values are: `remoteConnectionHistoricalReports`, `dailyAggregatedRemoteConnectionReports`, `totalAggregatedRemoteConnectionReports`, `sharedUseLicenseUsageReport`, `sharedUseLicenseUsageRealTimeReport`, `unknownFutureValue`,  `noLicenseAvailableConnectivityFailureReport`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): ` noLicenseAvailableConnectivityFailureReport`.|
| requestDateTime    | DateTimeOffset                                           | The date and time when the export job was requested.  |
| select             | String collection                                        | The selected columns of the report.   |

### cloudPcExportJobStatus values

| Member             | Description                                           |
| :----------------- | :---------------------------------------------------- |
| notStarted         | The export job doesn't start yet.                     |
| inProgress         | The export job is in progress.                        |
| completed          | The export job is completed with export URL returned. |
| failed             | The export job has failed.                            |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use.     |

### cloudPcReportName values

| Member                                 | Description                                                         |
| :------------------------------------- | :------------------------------------------------------------------ |
| remoteConnectionHistoricalReports      | The historical remote connections report.                           |
| dailyAggregatedRemoteConnectionReports | The daily aggregated remote connections report.                     |
| totalAggregatedRemoteConnectionReports | The total aggregated remote connections report.                     |
| sharedUseLicenseUsageReport            | Indicates daily/hourly aggregated shared use license usage report.  |
| sharedUseLicenseUsageRealTimeReport    | Indicates real-time data for shared use license usage.              |
| unknownFutureValue                     | Evolvable enumeration sentinel value. Do not use.                   |
| noLicenseAvailableConnectivityFailureReport | Indicates the Cloud PCs that failed to connect because no licenses were available. |


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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
