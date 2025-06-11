---
title: "migrationJobCancelledEvent resource type"
description: "Migration cancelled status event"
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# migrationJobCancelledEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **migrationJobCancelledEvent** resource represents the cancelled status of a migration job.

Inherits from [migrationEvent](../resources/migrationevent.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/migrationjob-list-progressevents.md)|[migrationEvent](../resources/migrationevent.md) collection|Get a list of the migrationEvent objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|correlationId|String|The correlation id of a migration job. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [migrationEvent](../resources/migrationevent.md).|
|eventDateTime|DateTimeOffset|The UTC time when job status changes to **JobCancelled**. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [migrationEvent](../resources/migrationevent.md).|
|id|String|The id of a **JobCancelled** event. Read-only. Only on OneDrive for Business and SharePoint. Inherits from [entity](../resources/entity.md).|
|isCancelledByUser|Boolean|True if job is cancelled by user. False if it's cancelled due to system error. Read-only. Only on OneDrive for Business and SharePoint.|
|jobId|String|The unique identifier of a migration job. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [migrationEvent](../resources/migrationevent.md).|
|totalRetryCount|Int32|Current job retry count. Read-only. Only on OneDrive for Business and SharePoint.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.migrationJobCancelledEvent",
  "baseType": "microsoft.graph.migrationEvent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.migrationJobCancelledEvent",
  "id": "String (identifier)",
  "jobId": "String",
  "eventDateTime": "String (timestamp)",
  "correlationId": "String",
  "totalRetryCount": "Integer",
  "isCancelledByUser": "Boolean"
}
```
