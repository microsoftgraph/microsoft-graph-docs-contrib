---
title: "migrationJobQueuedEvent resource type"
description: "Migration queued status event"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# migrationJobQueuedEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **migrationJobQueuedEvent** resource represents the queued status of a migration job.

Inherits from [migrationEvent](../resources/migrationevent.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/migrationjob-list-progressevents.md)|[migrationEvent](../resources/migrationevent.md) collection|Get a list of the migrationEvent objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|correlationId|String|The correlation id of a migration job. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [migrationEvent](../resources/migrationevent.md).|
|eventDateTime|DateTimeOffset|The UTC time when job status changes to **JobQueued**. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [migrationEvent](../resources/migrationevent.md).|
|id|String|The id of a **JobQueued** event. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [entity](../resources/entity.md).|
|jobId|String|The unique identifier of a migration job. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [migrationEvent](../resources/migrationevent.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.migrationJobQueuedEvent",
  "baseType": "microsoft.graph.migrationEvent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.migrationJobQueuedEvent",
  "id": "String (identifier)",
  "jobId": "String",
  "eventDateTime": "String (timestamp)",
  "correlationId": "String"
}
```

