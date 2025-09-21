---
title: "sharepointMigrationEvent resource type"
description: "Represents the common information of a SharePoint migration event."
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# sharePointMigrationEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the common information of a SharePoint migration event.

Base event of the following progress events:
[sharePointMigrationFinishManifestFileUploadEvent](../resources/sharePointMigrationFinishManifestFileUploadEvent.md)
[sharePointMigrationJobCancelledEvent](../resources/sharePointMigrationJobCancelledEvent.md)
[sharePointMigrationJobDeletedEvent](../resources/sharePointMigrationJobDeletedEvent.md)
[sharePointMigrationJobErrorEvent](../resources/sharePointMigrationJobErrorEvent.md)
[sharePointMigrationJobPostponedEvent](../resources/sharePointMigrationJobPostponedEvent.md)
[sharePointMigrationJobProgressEvent](../resources/sharePointMigrationJobProgressEvent.md)
[sharePointMigrationJobQueuedEvent](../resources/sharePointMigrationJobQueuedEvent.md)
[sharePointMigrationJobStartEvent](../resources/sharePointMigrationJobStartEvent.md)

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List progressEvents](../api/filestoragecontainer-migrationjob-list-progressevents.md)|[sharePointMigrationEvent](../resources/sharepointmigrationevent.md) collection|Get a list of [migration events](../resources/sharepointmigrationevent.md) for a particular job in a [fileStorageContainer](../resources/filestoragecontainer.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|correlationId|String|The correlation ID of a migration job. Read-only. Only on OneDrive and SharePoint.|
|eventDateTime|DateTimeOffset|The UTC time when job status changes. Read-only. Only on OneDrive and SharePoint.|
|id|String| The ID of a migration progress event. Read-only. Only on OneDrive and SharePoint. Inherits from [entity](../resources/entity.md).|
|jobId|String|The unique identifier of a migration job. Read-only. Only on OneDrive and SharePoint.|

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
  "id": "String (identifier)",
  "jobId": "String",
  "eventDateTime": "String (timestamp)",
  "correlationId": "String"
}
```
