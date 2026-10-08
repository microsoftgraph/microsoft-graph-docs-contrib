---
title: "sharePointMigrationJobQueuedEvent resource type"
description: "Represents the queued status of a migration job."
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
toc.title: SharePoint migration job queued event
---

# sharePointMigrationJobQueuedEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the queued status of a migration job.

Inherits from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).

## Methods
For the list of supported methods, see [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|correlationId|String|The correlation ID of a migration job. Read-only. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|eventDateTime|DateTimeOffset|The date and time when the job status changes to *Queued*. Read-only. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|id|String|The unique identifier of this event. Read-only. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|jobId|String|The unique identifier of a migration job. Read-only. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharePointMigrationJobQueuedEvent",
  "baseType": "microsoft.graph.sharePointMigrationEvent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointMigrationJobQueuedEvent",
  "correlationId": "String",
  "eventDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "jobId": "String"
}
```

