---
title: "sharePointMigrationJobProgressEvent resource type"
description: "Represents the progress status of a migration job."
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# sharePointMigrationJobProgressEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **sharePointMigrationJobProgressEvent** resource represents the progress status, either In-progress or End, of a migration job.

Inherits from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List progressEvents](../api/sharepointmigrationjob-list-progressevents.md)|[sharePointMigrationEvent](../resources/sharepointmigrationevent.md) collection|Get a list of the migrationEvent objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|bytesProcessed|Int64|The number of bytes processed. Read-only.|
|bytesProcessedOnlyCurrentVersion|Int64|The number of bytes processed exclusive of version history. Read-only.|
|correlationId|String|The correlation ID of a migration job. Read-only. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|cpuDurationMs|Int64|CPU duration in milliseconds. Read-only.|
|eventDateTime|DateTimeOffset|The UTC time when job status changes to In-progress or End. Read-only. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|filesProcessed|Int64|The number of files processed. Read-only.|
|filesProcessedOnlyCurrentVersion|Int64|The number of files processed exclusive of version history. Read-only.|
|id|String|The ID of this event. Read-only. Inherited from [entity](../resources/entity.md).|
|isCompleted|Boolean|True if job status is End. False if job status is In-progress. Read-only.|
|jobId|String|The unique identifier of a migration job. Read-only. Inherited from [sharepointMigrationEvent](../resources/sharepointmigrationevent.md).|
|lastProcessedObjectId|String|The unique identifier of the last object processed. Read-only.|
|objectsProcessed|Int64|The number of objects processed. Read-only.|
|sqlDurationMs|Int64|SQL duration in milliseconds. Read-only.|
|sqlQueryCount|Int64|SQL query count. Read-only.|
|totalDurationMs|Int64|Total execution time in milliseconds. Read-only.|
|totalErrors|Int64|Total errors. Read-only.|
|totalExpectedBytes|Int64|Total bytes to be processed. Read-only.|
|totalExpectedObjects|Int64|The number of objects to process. Read-only.|
|totalRetryCount|Int32|Current job retry count. Read-only.|
|totalWarnings|Int64|Total warnings. Read-only.|
|waitTimeOnSqlThrottlingMs|Int64|Waiting time on sql throttling in milliseconds. Read-only.|

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
