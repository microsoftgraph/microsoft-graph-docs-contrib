---
title: "cloudPcExportJob resource type"
description: "Represents the export job created for downloading reports."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 01/20/2026
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
| reportName         | [cloudPcReportName](../resources/cloudpcreportname.md)           | The report name. |
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
