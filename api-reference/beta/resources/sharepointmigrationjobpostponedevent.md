---
title: "sharepointMigrationJobPostponedEvent resource type"
description: "Migration postponed status event"
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# sharepointMigrationJobPostponedEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **sharepointMigrationJobPostponedEvent** resource represents the postponed status of a SharePoint migration job.

Inherits from [sharepointMigrationEvent](../resources/sharepointmigrationevent.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List progressEvents](../api/filestoragecontainer-migrationjob-list-progressevents.md)|[sharepointMigrationEvent](../resources/sharepointmigrationevent.md) collection|Get a list of the migrationEvent objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|correlationId|String|The correlation id of a migration job. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [sharepointMigrationEvent](../resources/sharepointmigrationevent.md).|
|eventDateTime|DateTimeOffset|The UTC time when job status changes to **JobPostponed**. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [sharepointMigrationEvent](../resources/sharepointmigrationevent.md).|
|id|String|The id of a **JobPostponed** event. Read-only. Only on OneDrive for Business and SharePoint. Inherits from [entity](../resources/entity.md).|
|jobId|String|The unique identifier of a migration job. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [sharepointMigrationEvent](../resources/sharepointmigrationevent.md).|
|jobsInQueue|Int64|The number of migration jobs in the queue of current db. Read-only. Only on OneDrive for Business and SharePoint.|
|nextPickupDateTime|DateTimeOffset|The UTC time indicating when this job will be picked up next time. Read-only. Only on OneDrive for Business and SharePoint.|
|reason|String|The postponement reason. Read-only. Only on OneDrive for Business and SharePoint.|
|totalRetryCount|Int32|Current job retry count. Read-only. Only on OneDrive for Business and SharePoint.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharepointMigrationJobPostponedEvent",
  "baseType": "microsoft.graph.sharepointMigrationEvent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharepointMigrationJobPostponedEvent",
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
