---
title: "sharePointMigrationJob resource type"
Represents a SharePoint migration timer job that is queued for later processing.
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
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
|[Provision migrationContainers](../api/filestoragecontainer-provisionmigrationcontainers.md)|[sharePointMigrationContainerInfo](../resources/sharepointmigrationcontainerinfo.md)|Provision SharePoint-managed Azure Blob Containers as temporary storage for migration content and metadata.|
|[Create migrationJob](../api/filestoragecontainer-post-migrationjobs.md)|[sharePointMigrationJob](../resources/sharepointmigrationjob.md)|Create a new sharePointMigrationJob object in a fileStorageContainer.|
|[Delete migrationJob](../api/filestoragecontainer-delete-migrationjobs.md)|None|Delete a sharePointMigrationJob object from a fileStorageContainer.|
|[List progressEvents](../api/filestoragecontainer-migrationjob-list-progressevents.md)|[sharePointMigrationEvent](../resources/sharepointmigrationevent.md) collection|List migration events for a particular job in a fileStorageContainer.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|containerInfo|[sharePointMigrationContainerInfo](../resources/sharepointmigrationcontainerinfo.md)|The Azure blob containers associated with the migration job. It contains two container URLs and the key for content encryption. Read-only. Only on OneDrive and SharePoint.|
|id|String|The unique identifier of the migration job. Read-only. Only on OneDrive and SharePoint. Inherits from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|progressEvents|[sharePointMigrationEvent](../resources/sharepointmigrationevent.md) collection|A collection of migration events that reflects the job status changes. Only on OneDrive and SharePoint.|

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
