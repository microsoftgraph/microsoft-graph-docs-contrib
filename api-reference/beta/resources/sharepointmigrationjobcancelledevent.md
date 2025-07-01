---
title: "sharePointMigrationJobCancelledEvent resource type"
description: "Migration cancelled status event"
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# sharePointMigrationJobCancelledEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **sharePointMigrationJobCancelledEvent** resource represents the cancelled status of a SharePoint migration job.

Inherits from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List progressEvents](../api/filestoragecontainer-migrationjob-list-progressevents.md)|[sharePointMigrationEvent](../resources/sharepointmigrationevent.md) collection|Get a list of the sharePointMigrationEvent objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|correlationId|String|The correlation id of a migration job. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|eventDateTime|DateTimeOffset|The UTC time when job status changes to **JobCancelled**. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|id|String|The id of a **JobCancelled** event. Read-only. Only on OneDrive for Business and SharePoint. Inherits from [entity](../resources/entity.md).|
|isCancelledByUser|Boolean|True if job is cancelled by user. False if it's cancelled due to system error. Read-only. Only on OneDrive for Business and SharePoint.|
|jobId|String|The unique identifier of a migration job. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|totalRetryCount|Int32|Current job retry count. Read-only. Only on OneDrive for Business and SharePoint.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharePointMigrationJobCancelledEvent",
  "baseType": "microsoft.graph.sharePointMigrationEvent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointMigrationJobCancelledEvent",
  "id": "String (identifier)",
  "jobId": "String",
  "eventDateTime": "String (timestamp)",
  "correlationId": "String",
  "totalRetryCount": "Integer",
  "isCancelledByUser": "Boolean"
}
```
