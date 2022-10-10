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

Represents the export job created for downloading reports.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create cloudPcExportJob](../api/cloudpcreports-post-exportjobs.md)|[cloudPcExportJob](../resources/cloudpcexportjob.md)|Create a new [cloudPcExportJob](../resources/cloudpcexportjob.md) object.|
|[Get cloudPcExportJob](../api/cloudpcexportjob-get.md)|[cloudPcExportJob](../resources/cloudpcexportjob.md)|Read the properties and relationships of a [cloudPcExportJob](../resources/cloudpcexportjob.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|expirationDateTime|DateTimeOffset|The date time when the export job expires.|
|exportJobStatus|[cloudPcExportJobStatus](#cloudpcexportjobstatus-values)|The status of the export job.The possible values are: `notStarted`, `inProgress`, `completed`, `unknownFutureValue`. Read-only.|
|exportUrl|String|The storage account url of the exported report, it can be used to download the file.|
|filter|String|The filter applied on the report.|
|format|String|The format of the exported report.|
|id|String|The unique identifier for the report. Read-only.|
|reportName|[cloudPcReportName](#cloudpcreportname-values)|The report name.The possible values are: `remoteConnectionHistoricalReports`, `dailyAggregatedRemoteConnectionReports`, `totalAggregatedRemoteConnectionReports`, `unknownFutureValue`.|
|requestDateTime|DateTimeOffset|The date time when the export job was requested.|
|select|String collection|The selected columns of the report.|

## Relationships
None.

### cloudPcExportJobStatus values

|Member|Description|
|:---|:---|
|notStarted|The export job doesn't start yet.|
|inProgress|The export job is in progress.|
|completed|The export job is completed with export url returned. |
|failed|The export job is failed. |
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use. |

### cloudPcReportName values

|Member|Description|
|:---|:---|
|remoteConnectionHistoricalReports|The historical remote connections report.|
|dailyAggregatedRemoteConnectionReports|The daily aggregated remote connections report. |
|totalAggregatedRemoteConnectionReports|The total aggregated remote connections report.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use. |

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
  "id": "String (identifier)",
  "reportName": "String",
  "filter": "String",
  "select": [
    "String"
  ],
  "format": "String",
  "expirationDateTime": "String (timestamp)",
  "requestDateTime": "String (timestamp)",
  "exportJobStatus": "String",
  "exportUrl": "String"
}
```

