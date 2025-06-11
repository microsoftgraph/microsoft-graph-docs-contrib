---
title: "migrationJobPostponedEvent resource type"
description: "Migration postponed status event"
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# migrationJobPostponedEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **migrationJobPostponedEvent** resource represents the postponed status of a migration job.

Inherits from [migrationEvent](../resources/migrationevent.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/migrationjob-list-progressevents.md)|[migrationEvent](../resources/migrationevent.md) collection|Get a list of the migrationEvent objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|correlationId|String|The correlation id of a migration job. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [migrationEvent](../resources/migrationevent.md).|
|eventDateTime|DateTimeOffset|The UTC time when job status changes to **JobPostponed**. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [migrationEvent](../resources/migrationevent.md).|
|id|String|The id of a **JobPostponed** event. Read-only. Only on OneDrive for Business and SharePoint. Inherits from [entity](../resources/entity.md).|
|jobId|String|The unique identifier of a migration job. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [migrationEvent](../resources/migrationevent.md).|
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
  "@odata.type": "microsoft.graph.migrationJobPostponedEvent",
  "baseType": "microsoft.graph.migrationEvent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.migrationJobPostponedEvent",
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
