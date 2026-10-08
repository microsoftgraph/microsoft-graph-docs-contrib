---
title: "plannerHistoryItem resource type"
description: "An abstract type that represents a record of a change made to an entity within a planner plan."
author: "praspati"
ms.date: 05/15/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# plannerHistoryItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents a record of a change made to an entity within a [planner plan](../resources/plannerplan.md). This resource serves as the base for specific history item types.

Inherits from [plannerDelta](../resources/plannerdelta.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/plannerplan-list-historyitems.md)|[plannerHistoryItem](../resources/plannerhistoryitem.md) collection|Get the [history](../resources/plannerhistoryitem.md) of changes made to tasks within a [plan](../resources/plannerplan.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actor|[identitySet](../resources/identityset.md)|The identity of the user or application that performed the change.|
|entityId|String|The ID of the entity that was changed.|
|entityType|historyEntityType|The type of entity that was changed. The possible values are: `task`, `unknownFutureValue`.|
|eventType|historyEventType|The type of change event that occurred. The possible values are: `created`, `updated`, `deleted`, `undeleted`, `moved`, `unknownFutureValue`.|
|id|String|The unique identifier for the history item. Inherited from [plannerDelta](../resources/plannerdelta.md).|
|occurredDateTime|DateTimeOffset|The date and time when the change occurred. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`.|
|planId|String|The ID of the plan that contains the changed entity.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.plannerHistoryItem",
  "baseType": "microsoft.graph.plannerDelta",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerHistoryItem",
  "id": "String (identifier)",
  "planId": "String",
  "entityId": "String",
  "entityType": "String",
  "eventType": "String",
  "occurredDateTime": "String (timestamp)",
  "actor": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```
