---
title: "sharePointMigrationJob resource type"
description: "Represents a SharePoint migration timer job that is queued for later processing."
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
toc.title: SharePoint migration job
---

# sharePointMigrationJob resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a SharePoint migration timer job that is queued for later processing. A migration import job moves content to SharePoint. An asynchronous metadata read (AMR) job, on the contrary, exports content from SharePoint.

The job might take anywhere from a few minutes to several hours to complete and is automatically removed from the queue upon completion; however, progress events remain accessible for up to four days.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/filestoragecontainer-post-migrationjobs.md)|[sharePointMigrationJob](../resources/sharepointmigrationjob.md)|Create a new [sharePointMigrationJob](../resources/sharepointmigrationjob.md) object that is scheduled to run at a later time to migrate content from an intermediary storage to the target [fileStorageContainer](../resources/filestoragecontainer.md).|
|[Delete](../api/sharepointmigrationjob-delete.md)|None|Delete a [sharePointMigrationJob](../resources/sharepointmigrationjob.md) object from a [fileStorageContainer](../resources/filestoragecontainer.md).|
|[List progress events](../api/sharepointmigrationjob-list-progressevents.md)|[sharePointMigrationEvent](../resources/sharepointmigrationevent.md) collection|Get a list of [migration events](../resources/sharepointmigrationevent.md) for a particular job in a [fileStorageContainer](../resources/filestoragecontainer.md).|
|[Provision migration containers](../api/filestoragecontainer-provisionmigrationcontainers.md)|[sharePointMigrationContainerInfo](../resources/sharepointmigrationcontainerinfo.md)|Provision SharePoint-managed Azure blob containers as temporary storage for migration content and metadata.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|containerInfo|[sharePointMigrationContainerInfo](../resources/sharepointmigrationcontainerinfo.md)|The Azure blob containers associated with the migration job. It contains two container URLs and the key for content encryption. Read-only.|
|id|String|The unique identifier of the migration job. Read-only. Inherits from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|progressEvents|[sharePointMigrationEvent](../resources/sharepointmigrationevent.md) collection|A collection of migration events that reflects the job status changes.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharePointMigrationJob",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointMigrationJob",
  "id": "String (identifier)",
  "containerInfo": {
    "@odata.type": "microsoft.graph.sharePointMigrationContainerInfo"
  }
}
```

## Related content

For information about the status or progress of a SharePoint migration job, see [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).
