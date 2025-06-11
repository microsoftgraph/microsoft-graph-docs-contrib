---
title: "migrationJobDeletedEvent resource type"
description: "Migration deleted status event"
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# migrationJobDeletedEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **migrationJobDeletedEvent** resource represents the deleted status of a migration job.

Inherits from [migrationEvent](../resources/migrationevent.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/migrationjob-list-progressevents.md)|[migrationEvent](../resources/migrationevent.md) collection|Get a list of the migrationEvent objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|correlationId|String|The correlation id of a migration job. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [migrationEvent](../resources/migrationevent.md).|
|eventDateTime|DateTimeOffset|The UTC time when job status changes to **JobDeleted**. Read-only. Only on OneDrive for Business and SharePoint.Inherited from [migrationEvent](../resources/migrationevent.md).|
|id|String|The id of a **JobDeleted** event. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [entity](../resources/entity.md).|
|jobId|String|The unique identifier of a migration job. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [migrationEvent](../resources/migrationevent.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.migrationJobDeletedEvent",
  "baseType": "microsoft.graph.migrationEvent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.migrationJobDeletedEvent",
  "id": "String (identifier)",
  "jobId": "String",
  "eventDateTime": "String (timestamp)",
  "correlationId": "String"
}
```
