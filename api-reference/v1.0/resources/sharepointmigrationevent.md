---
title: "sharepointMigrationEvent resource type"
description: "Represents the common information of a SharePoint migration event."
author: "wenzhou"
ms.date: 11/17/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
toc.title: SharePoint migration event
---

# sharePointMigrationEvent resource type

Namespace: microsoft.graph

Represents the common information of a SharePoint migration event.

Base event of the following progress events:
- [sharePointMigrationFinishManifestFileUploadEvent](../resources/sharepointmigrationfinishmanifestfileuploadevent.md)
- [sharePointMigrationJobCancelledEvent](../resources/sharepointmigrationjobcancelledevent.md)
- [sharePointMigrationJobDeletedEvent](../resources/sharepointmigrationjobdeletedevent.md)
- [sharePointMigrationJobErrorEvent](../resources/sharepointmigrationjoberrorevent.md)
- [sharePointMigrationJobPostponedEvent](../resources/sharepointmigrationjobpostponedevent.md)
- [sharePointMigrationJobProgressEvent](../resources/sharepointmigrationjobprogressevent.md)
- [sharePointMigrationJobQueuedEvent](../resources/sharepointmigrationjobqueuedevent.md)
- [sharePointMigrationJobStartEvent](../resources/sharepointmigrationjobstartevent.md)

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List progress events](../api/sharepointmigrationjob-list-progressevents.md)|[sharePointMigrationEvent](../resources/sharepointmigrationevent.md) collection|Get a list of [migration events](../resources/sharepointmigrationevent.md) for a particular job in a [fileStorageContainer](../resources/filestoragecontainer.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|correlationId|String|The correlation ID of a migration job. Read-only.|
|eventDateTime|DateTimeOffset|The date and time when the job status changes. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|id|String| The unique identifier of a migration progress event. Read-only. Inherited from [entity](../resources/entity.md).|
|jobId|String|The unique identifier of a migration job. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharePointMigrationEvent",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointMigrationEvent",
  "correlationId": "String",
  "eventDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "jobId": "String"
}
```
