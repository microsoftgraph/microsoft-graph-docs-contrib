---
title: "migrationJob resource type"
description: "Migration timer job"
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# migrationJob resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **migrationJob** resource represents a migration timer job that is queued for later processing. A migration import job will move content to SharePoint, while an Asynchronous Metadata Read (AMR) job will export content from SharePoint conversely.

The job may take a few minutes to hours to complete and will be automatically removed from the queue upon completion. However, progress events will remain accessible for up to 4 days.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Provision migrationContainers](../api/filestoragecontainer-provisionmigrationcontainers.md)|[migrationContainerInfo](../resources/migrationcontainerinfo.md)|Provision SharePoint-managed azure blob containers as temporary storage for migration content and metadata.|
|[Create](../api/filestoragecontainer-post-migrationjobs.md)|[migrationJob](../resources/migrationjob.md)|Create a new migrationJob object.|
|[Delete](../api/filestoragecontainer-delete-migrationjobs.md)|None|Delete a migrationJob object.|
|[List progressEvents](../api/migrationjob-list-progressevents.md)|[migrationEvent](../resources/migrationevent.md) collection|List migration events for particular job.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|containerInfo|[migrationContainerInfo](../resources/migrationcontainerinfo.md)|The Azure Blob Containers associated with the migration job. It contains 2 container URLs and the key for content encryption. Read-only. Only on OneDrive for Business and SharePoint.|
|id|String|The unique identifier of the migration job. Read-only. Only on OneDrive for Business and SharePoint. Inherits from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|progressEvents|[migrationEvent](../resources/migrationevent.md) collection|A collection of migration events reflecting the job status changes. Only on OneDrive for Business and SharePoint.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.migrationJob",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.migrationJob",
  "id": "String (identifier)",
  "containerInfo": {
    "@odata.type": "microsoft.graph.migrationContainerInfo"
  }
}
```
