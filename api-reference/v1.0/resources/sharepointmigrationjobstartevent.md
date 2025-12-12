---
title: "sharePointMigrationJobStartEvent resource type"
description: "Represents the start status of a migration job, either started or restarted."
author: "wenzhou"
ms.date: 11/17/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
toc.title: SharePoint migration job start event
---

# sharePointMigrationJobStartEvent resource type

Namespace: microsoft.graph

Represents the start status of a migration job, either *Started* or *Restarted*.

Inherits from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).

## Methods
For the list of supported methods, see [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|correlationId|String|The correlation ID of a migration job. Read-only. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|eventDateTime|DateTimeOffset|The date and time when the job status changes to *Started* or *Restarted*. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md). |
|id|String|The unique identifier of this event. Read-only. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|isRestarted|Boolean|`True` if the job is restarted. `False` if it's the initial start. Read-only.|
|jobId|String|The unique identifier of a migration job. Read-only. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|totalRetryCount|Int32|The current retry count of the job. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharePointMigrationJobStartEvent",
  "baseType": "microsoft.graph.sharePointMigrationEvent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointMigrationJobStartEvent",
  "correlationId": "String",
  "eventDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "isRestarted": "Boolean",
  "jobId": "String",
  "totalRetryCount": "Int32"
}
```
