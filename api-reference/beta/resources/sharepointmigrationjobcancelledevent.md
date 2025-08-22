---
title: "sharePointMigrationJobCancelledEvent resource type"
description: "Migration canceled status event"
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# sharePointMigrationJobCancelledEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **sharePointMigrationJobCancelledEvent** resource represents the canceled status of a SharePoint migration job.

Inherits from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List progressEvents](../api/filestoragecontainer-migrationjob-list-progressevents.md)|[sharePointMigrationEvent](../resources/sharepointmigrationevent.md) collection|Get a list of the sharePointMigrationEvent objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|correlationId|String|The correlation ID of a migration job. Read-only. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|eventDateTime|DateTimeOffset|The UTC time when job status changes to **JobCancelled**. Read-only. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|id|String|The ID of a **JobCancelled** event. Read-only. Only on OneDrive and SharePoint. Inherits from [entity](../resources/entity.md).|
|isCancelledByUser|Boolean|True when a user cancels the job, and False otherwise. Read-only. Only on OneDrive and SharePoint.|
|jobId|String|The unique identifier of a migration job. Read-only. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|totalRetryCount|Int32|Current job retry count. Read-only. Only on OneDrive and SharePoint.|

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
