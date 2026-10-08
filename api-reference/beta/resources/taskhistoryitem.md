---
title: "taskHistoryItem resource type"
description: "Represents a record of a change made to a task within a planner plan."
author: "praspati"
ms.date: 05/15/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# taskHistoryItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a record of a change made to a task within a [planner plan](../resources/plannerplan.md). Use this resource to track the history of task modifications, including creation, updates, deletions, and moves.

Inherits from [plannerHistoryItem](../resources/plannerhistoryitem.md).

## Methods

For the list of supported methods, see [plannerHistoryItem](../resources/plannerhistoryitem.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actor|[identitySet](../resources/identityset.md)|The identity of the user or application that performed the change. Inherited from [plannerHistoryItem](../resources/plannerhistoryitem.md).|
|entityId|String|The ID of the task that was changed. Inherited from [plannerHistoryItem](../resources/plannerhistoryitem.md).|
|entityType|historyEntityType|The type of entity that was changed. The possible values are: `task`, `unknownFutureValue`. Inherited from [plannerHistoryItem](../resources/plannerhistoryitem.md). |
|eventType|historyEventType|The type of change event that occurred. The possible values are: `created`, `updated`, `deleted`, `undeleted`, `moved`, `unknownFutureValue`. Inherited from [plannerHistoryItem](../resources/plannerhistoryitem.md).|
|id|String|The unique identifier for the history item. Inherited from [plannerHistoryItem](../resources/plannerhistoryitem.md).|
|newData|[plannerTaskData](../resources/plannertaskdata.md)|A snapshot of the task state after the change. This property is `null` for deletion events.|
|occurredDateTime|DateTimeOffset|The date and time when the change occurred. The date and time information uses ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2021 is `2021-01-01T00:00:00Z`. Inherited from [plannerHistoryItem](../resources/plannerhistoryitem.md).|
|oldData|[plannerTaskData](../resources/plannertaskdata.md)|A snapshot of the task state before the change. This property is `null` for creation and undeletion events.|
|planId|String|The ID of the plan that contains the task. Inherited from [plannerHistoryItem](../resources/plannerhistoryitem.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.taskHistoryItem",
  "baseType": "microsoft.graph.plannerHistoryItem",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.taskHistoryItem",
  "id": "String (identifier)",
  "planId": "String",
  "entityId": "String",
  "entityType": "String",
  "eventType": "String",
  "occurredDateTime": "String (timestamp)",
  "actor": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "oldData": {
    "@odata.type": "microsoft.graph.plannerTaskData"
  },
  "newData": {
    "@odata.type": "microsoft.graph.plannerTaskData"
  }
}
```
