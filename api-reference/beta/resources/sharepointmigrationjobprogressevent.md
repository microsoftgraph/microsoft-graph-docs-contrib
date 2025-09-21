---
title: "sharePointMigrationJobProgressEvent resource type"
description: "Represents the progress status of a migration job."
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
toc.title: SharePoint migration job progress event
---

# sharePointMigrationJobProgressEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the progress status of a migration job.

Inherits from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).

## Methods
For the list of supported methods, see [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|bytesProcessed|Int64|The number of bytes processed. Read-only. Only on OneDrive and SharePoint.|
|bytesProcessedOnlyCurrentVersion|Int64|The number of bytes processed with version history excluded. Read-only. Only on OneDrive and SharePoint.|
|correlationId|String|The correlation ID of a migration job. Read-only. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|cpuDurationMs|Int64|CPU duration in milliseconds. Read-only. Only on OneDrive and SharePoint.|
|eventDateTime|DateTimeOffset|The date and time when the job status changes to **JobProgress** or **JobEnd**. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|filesProcessed|Int64|The number of files processed. Read-only. Only on OneDrive and SharePoint.|
|filesProcessedOnlyCurrentVersion|Int64|The number of files processed with version history excluded. Read-only. Only on OneDrive and SharePoint.|
|id|String|The unique identifier of a **JobProgress** or **JobEnd** event. Read-only. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|isCompleted|Boolean|`True` if the job is completed. `False` if the job is in progress. Read-only. Only on OneDrive and SharePoint.|
|jobId|String|The unique identifier of a migration job. Read-only. Only on OneDrive and SharePoint. Inherited from [sharepointMigrationEvent](../resources/sharepointmigrationevent.md).|
|lastProcessedObjectId|String|The unique identifier of the last object processed. Read-only. Only on OneDrive and SharePoint.|
|objectsProcessed|Int64|The number of objects processed. Read-only. Only on OneDrive and SharePoint.|
|sqlDurationMs|Int64|SQL duration in milliseconds. Read-only. Only on OneDrive and SharePoint.|
|sqlQueryCount|Int64|SQL query count. Read-only. Only on OneDrive and SharePoint.|
|totalDurationMs|Int64|Total duration time in milliseconds. Read-only. Only on OneDrive and SharePoint.|
|totalErrors|Int64|Total errors. Read-only. Only on OneDrive and SharePoint.|
|totalExpectedBytes|Int64|Total bytes to be processed. Read-only. Only on OneDrive and SharePoint.|
|totalExpectedObjects|Int64|The number of objects to process. Read-only. Only on OneDrive and SharePoint.|
|totalRetryCount|Int32|The current retry count of the job. Read-only. Only on OneDrive and SharePoint.|
|totalWarnings|Int64|Total warnings. Read-only. Only on OneDrive and SharePoint.|
|waitTimeOnSqlThrottlingMs|Int64|Waiting time due to SQL throttling, in milliseconds. Read-only. Only on OneDrive and SharePoint.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharePointMigrationJobProgressEvent",
  "baseType": "microsoft.graph.sharePointMigrationEvent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointMigrationJobProgressEvent",
  "bytesProcessed": "Int64",
  "bytesProcessedOnlyCurrentVersion": "Int64",
  "correlationId": "String",
  "cpuDurationMs": "Int64",
  "eventDateTime": "String (timestamp)",
  "filesProcessed": "Int64",
  "filesProcessedOnlyCurrentVersion": "Int64",
  "id": "String (identifier)",
  "isCompleted": "Boolean",
  "jobId": "String",
  "lastProcessedObjectId": "String",
  "objectsProcessed": "Int64",
  "sqlDurationMs": "Int64",
  "sqlQueryCount": "Int64",
  "totalDurationMs": "Int64",
  "totalErrors": "Int64",
  "totalExpectedBytes": "Int64",
  "totalExpectedObjects": "Int64",
  "totalRetryCount": "Int32",
  "totalWarnings": "Int64",
  "waitTimeOnSqlThrottlingMs": "Int64"
}
```
