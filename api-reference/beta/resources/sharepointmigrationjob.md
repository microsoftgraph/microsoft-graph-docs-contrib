---
title: "sharepointMigrationJob resource type"
description: "Migration timer job"
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# sharepointMigrationJob resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **sharepointMigrationJob** resource represents a SharePoint migration timer job that is queued for later processing. A migration import job will move content to SharePoint, while an Asynchronous Metadata Read (AMR) job will export content from SharePoint conversely.

The job may take a few minutes to hours to complete and will be automatically removed from the queue upon completion. However, progress events will remain accessible for up to 4 days.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Provision migrationContainers](../api/filestoragecontainer-provisionmigrationcontainers.md)|[sharepointMigrationContainerInfo](../resources/sharepointmigrationcontainerinfo.md)|Provision SharePoint-managed Azure Blob Containers as temporary storage for migration content and metadata.|
|[Create migrationJob](../api/filestoragecontainer-post-migrationjobs.md)|[sharepointMigrationJob](../resources/sharepointmigrationjob.md)|Create a new sharepointMigrationJob object in a fileStorageContainer.|
|[Delete migrationJob](../api/filestoragecontainer-delete-migrationjobs.md)|None|Delete a sharepointMigrationJob object from a fileStorageContainer.|
|[List progressEvents](../api/filestoragecontainer-migrationjob-list-progressevents.md)|[sharepointMigrationEvent](../resources/sharepointmigrationevent.md) collection|List migration events for a particular job in a fileStorageContainer.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|containerInfo|[sharepointMigrationContainerInfo](../resources/sharepointmigrationcontainerinfo.md)|The Azure Blob Containers associated with the migration job. It contains 2 container URLs and the key for content encryption. Read-only. Only on OneDrive for Business and SharePoint.|
|id|String|The unique identifier of the migration job. Read-only. Only on OneDrive for Business and SharePoint. Inherits from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|progressEvents|[sharepointMigrationEvent](../resources/sharepointmigrationevent.md) collection|A collection of migration events reflecting the job status changes. Only on OneDrive for Business and SharePoint.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharepointMigrationJob",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharepointMigrationJob",
  "id": "String (identifier)",
  "containerInfo": {
    "@odata.type": "microsoft.graph.sharepointMigrationContainerInfo"
  }
}
```
