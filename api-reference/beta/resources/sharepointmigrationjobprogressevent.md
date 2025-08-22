---
title: "sharePointMigrationJobProgressEvent resource type"
description: "Migration progress status event"
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# sharePointMigrationJobProgressEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **sharePointMigrationJobProgressEvent** resource represents the progress status of a migration job.

Inherits from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List progressEvents](../api/filestoragecontainer-migrationjob-list-progressevents.md)|[sharePointMigrationEvent](../resources/sharepointmigrationevent.md) collection|Get a list of the migrationEvent objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|bytesProcessed|Int64|The number of bytes processed. Read-only. Only on OneDrive and SharePoint.|
|bytesProcessedOnlyCurrentVersion|Int64|The number of bytes processed exclusive of version history. Read-only. Only on OneDrive and SharePoint.|
|correlationId|String|The correlation id of a migration job. Read-only. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|cpuDurationMs|Int64|CPU duration in milliseconds. Read-only. Only on OneDrive and SharePoint.|
|eventDateTime|DateTimeOffset|The UTC time when job status changes to **JobProgress** or **JobEnd**. Read-only. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|filesProcessed|Int64|The number of files processed. Read-only. Only on OneDrive and SharePoint.|
|filesProcessedOnlyCurrentVersion|Int64|The number of files processed exclusive of version history. Read-only. Only on OneDrive and SharePoint.|
|id|String|The id of a **JobProgress** or **JobEnd** event. Read-only. Only on OneDrive and SharePoint. Inherits from [entity](../resources/entity.md).|
|isCompleted|Boolean|True if job is completed. False if job is in progress. Read-only. Only on OneDrive and SharePoint.|
|jobId|String|The unique identifier of a migration job. Read-only. Only on OneDrive and SharePoint. Inherited from [sharepointMigrationEvent](../resources/sharepointmigrationevent.md).|
|lastProcessedObjectId|String|The unique identifier of the last object processed. Read-only. Only on OneDrive and SharePoint.|
|objectsProcessed|Int64|The number of objects processed. Read-only. Only on OneDrive and SharePoint.|
|sqlDurationMs|Int64|SQL duration in milliseconds. Read-only. Only on OneDrive and SharePoint.|
|sqlQueryCount|Int64|SQL query count. Read-only. Only on OneDrive and SharePoint.|
|totalDurationMs|Int64|Total execution time in milliseconds. Read-only. Only on OneDrive and SharePoint.|
|totalErrors|Int64|Total errors. Read-only. Only on OneDrive and SharePoint.|
|totalExpectedBytes|Int64|Total bytes to be processed. Read-only. Only on OneDrive and SharePoint.|
|totalExpectedObjects|Int64|The number of objects to process. Read-only. Only on OneDrive and SharePoint.|
|totalRetryCount|Int32|Current job retry count. Read-only. Only on OneDrive and SharePoint.|
|totalWarnings|Int64|Total warnings. Read-only. Only on OneDrive and SharePoint.|
|waitTimeOnSqlThrottlingMs|Int64|Waiting time on sql throttling in milliseconds. Read-only. Only on OneDrive and SharePoint.|

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
  "id": "String (identifier)",
  "jobId": "String",
  "eventDateTime": "String (timestamp)",
  "correlationId": "String",
  "isCompleted": "Boolean",
  "filesProcessed": "Integer",
  "bytesProcessed": "Integer",
  "objectsProcessed": "Integer",
  "totalExpectedObjects": "Integer",
  "totalErrors": "Integer",
  "totalWarnings": "Integer",
  "totalRetryCount": "Integer",
  "waitTimeOnSqlThrottlingMs": "Integer",
  "totalDurationMs": "Integer",
  "cpuDurationMs": "Integer",
  "sqlDurationMs": "Integer",
  "sqlQueryCount": "Integer",
  "totalExpectedBytes": "Integer",
  "lastProcessedObjectId": "String",
  "filesProcessedOnlyCurrentVersion": "Integer",
  "bytesProcessedOnlyCurrentVersion": "Integer"
}
```
