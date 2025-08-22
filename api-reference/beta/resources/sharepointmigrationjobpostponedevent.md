---
title: "sharePointMigrationJobPostponedEvent resource type"
description: "Migration postponed status event"
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# sharePointMigrationJobPostponedEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **sharePointMigrationJobPostponedEvent** resource represents the postponed status of a SharePoint migration job.

Inherits from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List progressEvents](../api/filestoragecontainer-migrationjob-list-progressevents.md)|[sharePointMigrationEvent](../resources/sharepointmigrationevent.md) collection|Get a list of the migrationEvent objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|correlationId|String|The correlation ID of a migration job. Read-only. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|eventDateTime|DateTimeOffset|The UTC time when job status changes to **JobPostponed**. Read-only. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|id|String|The ID of a **JobPostponed** event. Read-only. Only on OneDrive and SharePoint. Inherits from [entity](../resources/entity.md).|
|jobId|String|The unique identifier of a migration job. Read-only. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|jobsInQueue|Int64|The number of migration jobs in the queue of current db. Read-only. Only on OneDrive and SharePoint.|
|nextPickupDateTime|DateTimeOffset|The UTC time indicating when this job will be picked up next time. Read-only. Only on OneDrive and SharePoint.|
|reason|String|The postponement reason. Read-only. Only on OneDrive and SharePoint.|
|totalRetryCount|Int32|Current job retry count. Read-only. Only on OneDrive and SharePoint.|

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
  "id": "String (identifier)",
  "jobId": "String",
  "eventDateTime": "String (timestamp)",
  "correlationId": "String",
  "nextPickupDateTime": "String (timestamp)",
  "jobsInQueue": "Integer",
  "totalRetryCount": "Integer",
  "reason": "String"
}
```
