---
title: "deviceManagementExportJob resource type"
description: "Entity representing a job to export a report."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementExportJob resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Entity representing a job to export a report.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementExportJobs](../api/intune-reporting-devicemanagementexportjob-list.md)|[deviceManagementExportJob](../resources/intune-reporting-devicemanagementexportjob.md) collection|List properties and relationships of the [deviceManagementExportJob](../resources/intune-reporting-devicemanagementexportjob.md) objects.|
|[Get deviceManagementExportJob](../api/intune-reporting-devicemanagementexportjob-get.md)|[deviceManagementExportJob](../resources/intune-reporting-devicemanagementexportjob.md)|Read properties and relationships of the [deviceManagementExportJob](../resources/intune-reporting-devicemanagementexportjob.md) object.|
|[Create deviceManagementExportJob](../api/intune-reporting-devicemanagementexportjob-create.md)|[deviceManagementExportJob](../resources/intune-reporting-devicemanagementexportjob.md)|Create a new [deviceManagementExportJob](../resources/intune-reporting-devicemanagementexportjob.md) object.|
|[Delete deviceManagementExportJob](../api/intune-reporting-devicemanagementexportjob-delete.md)|None|Deletes a [deviceManagementExportJob](../resources/intune-reporting-devicemanagementexportjob.md).|
|[Update deviceManagementExportJob](../api/intune-reporting-devicemanagementexportjob-update.md)|[deviceManagementExportJob](../resources/intune-reporting-devicemanagementexportjob.md)|Update the properties of a [deviceManagementExportJob](../resources/intune-reporting-devicemanagementexportjob.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for this entity.|
|reportName|String|Name of the report. The maximum length allowed for this property is 2000 characters.|
|filter|String|Filters applied on the report. The maximum length allowed for this property is 2000 characters.|
|select|String collection|Columns selected from the report. The maximum number of allowed columns names is 256. The maximum length allowed for each column name in this property is 1000 characters.|
|format|[deviceManagementReportFileFormat](../resources/intune-reporting-devicemanagementreportfileformat.md)|Format of the exported report. Possible values are `csv` and `json`. Possible values are: `csv`, `pdf`, `json`, `unknownFutureValue`.|
|snapshotId|String|A snapshot is an identifiable subset of the dataset represented by the ReportName. A sessionId or CachedReportConfiguration id can be used here. If a sessionId is specified, Filter, Select, and OrderBy are applied to the data represented by the sessionId. Filter, Select, and OrderBy cannot be specified together with a CachedReportConfiguration id. The maximum length allowed for this property is 128 characters.|
|localizationType|[deviceManagementExportJobLocalizationType](../resources/intune-reporting-devicemanagementexportjoblocalizationtype.md)|Configures how the requested export job is localized. Possible values are `replaceLocalizableValues` and `localizedValuesAsAdditionalColumn`. Possible values are: `localizedValuesAsAdditionalColumn`, `replaceLocalizableValues`.|
|search|String|Configures a search term to filter the data. The maximum length allowed for this property is 100 characters.|
|status|[deviceManagementReportStatus](../resources/intune-reporting-devicemanagementreportstatus.md)|Status of the export job. Possible values are `unknown`, `notStarted`, `inProgress`, `completed` and `failed`. Possible values are: `unknown`, `notStarted`, `inProgress`, `completed`, `failed`.|
|url|String|Temporary location of the exported report.|
|requestDateTime|DateTimeOffset|Time that the exported report was requested.|
|expirationDateTime|DateTimeOffset|Time that the exported report expires.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementExportJob"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementExportJob",
  "id": "String (identifier)",
  "reportName": "String",
  "filter": "String",
  "select": [
    "String"
  ],
  "format": "String",
  "snapshotId": "String",
  "localizationType": "String",
  "search": "String",
  "status": "String",
  "url": "String",
  "requestDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)"
}
```
