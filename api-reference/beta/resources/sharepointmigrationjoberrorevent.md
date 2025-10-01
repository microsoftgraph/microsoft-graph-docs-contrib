---
title: "sharePointMigrationJobErrorEvent resource type"
description: "Represents the error status of a SharePoint migration job."
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
toc.title: SharePoint migration job error event
---

# sharePointMigrationJobErrorEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the error status of a SharePoint migration job.

Inherits from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).

## Methods
For the list of supported methods, see [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|correlationId|String|The correlation ID of a migration job. Read-only. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|error|[publicError](../resources/publicerror.md)|The error code and message. Read-only.|
|errorLevel|sharePointMigrationJobErrorLevel|The error level. Read-only. The possible values are: `important`, `warning`, `error`, `fatalError`, `unknownFutureValue`.|
|eventDateTime|DateTimeOffset|The date and time when the job status changes to a specific type of *JobError*. Read-only. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|id|String|The unique identifier of this event. Read-only. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|jobId|String|The unique identifier of a migration job. Read-only. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|objectId|String|The object ID. Read-only.|
|objectType|sharePointMigrationObjectType|The object type. Read-only. The possible values are: `site`, `web`, `folder`, `list`, `listItem`, `file`, `alert`, `sharedWithObject`, `invalid`, `unknownFutureValue`.|
|objectUrl|String|The object URL. Read-only.|
|totalRetryCount|Int32|The current retry count of the job. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharePointMigrationJobErrorEvent",
  "baseType": "microsoft.graph.sharePointMigrationEvent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointMigrationJobErrorEvent",
  "correlationId": "String",
  "error": {"@odata.type": "microsoft.graph.publicError"},
  "errorLevel": "String",
  "eventDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "jobId": "String",
  "objectId": "String",
  "objectType": "String",
  "objectUrl": "String",
  "totalRetryCount": "Int32"
}
```
