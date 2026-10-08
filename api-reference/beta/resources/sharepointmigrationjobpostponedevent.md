---
title: "sharePointMigrationJobPostponedEvent resource type"
description: "Represents the postponed status of a SharePoint migration job."
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
toc.title: SharePoint migration job postponed event
---

# sharePointMigrationJobPostponedEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the postponed status of a SharePoint migration job.

Inherits from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).

## Methods
For the list of supported methods, see [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|correlationId|String|The correlation ID of a migration job. Read-only. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|eventDateTime|DateTimeOffset|The date and time when the job status changes to *Postponed*. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|id|String|The unique identifier of a **sharePointMigrationJobPostponedEvent**. Read-only. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|jobId|String|The unique identifier of a migration job. Read-only. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|jobsInQueue|Int64|The number of migration jobs in the queue of the current database. Read-only.|
|nextPickupDateTime|DateTimeOffset|The date and time that indicate when this job is picked up next. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|reason|String|The reason for the postponement. Read-only.|
|totalRetryCount|Int32|The current retry count of the job. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharePointMigrationJobPostponedEvent",
  "baseType": "microsoft.graph.sharePointMigrationEvent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointMigrationJobPostponedEvent",
  "correlationId": "String",
  "eventDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "jobId": "String",
  "jobsInQueue": "Int64",
  "nextPickupDateTime": "String (timestamp)",
  "reason": "String",
  "totalRetryCount": "Int32"
}
```
