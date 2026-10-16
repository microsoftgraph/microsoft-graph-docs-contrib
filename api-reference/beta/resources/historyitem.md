---
title: "historyItem resource type"
description: "An audit or activity record for a change made to a plan or its child entities. `entityId`, `entityType`, `eventType`, and `occurredDateTime` (the primary sort key) are returned by default; the acting identity and before/after state are opt-in via $select."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# historyItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An audit or activity record for a change made to a [plan](plan.md) or its child entities. `entityId`, `entityType`, `eventType`, and `occurredDateTime` (the primary sort key) are returned by default; the acting identity and before/after state are opt-in via $select.


Inherits from [plannerDelta](../resources/plannerdelta.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/plan-list-historyitems.md)|[historyItem](../resources/historyitem.md) collection|Get a list of the historyItem objects and their properties.|
|[Create](../api/plan-post-historyitems.md)|[historyItem](../resources/historyitem.md)|Create a new historyItem object.|
|[Get](../api/historyitem-get.md)|[historyItem](../resources/historyitem.md)|Read the properties and relationships of [historyItem](../resources/historyitem.md) object.|
|[Update](../api/historyitem-update.md)|[historyItem](../resources/historyitem.md)|Update the properties of a historyItem object.|
|[Delete](../api/plan-delete-historyitems.md)|None|Delete a historyItem object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actor|[identitySet](../resources/identityset.md)|Identity of the user (or application) that performed the change.|
|entityId|String|ID of the entity the history item describes.|
|entityType|historyEntityType|Type of the entity the history item describes. The possible values are: `task`, `unknownFutureValue`.|
|eventType|historyEventType|Type of the change event that occurred. The possible values are: `created`, `updated`, `deleted`, `undeleted`, `moved`, `unknownFutureValue`.|
|id|String|The unique identifier of the entity. Read-only. Inherited from [entity](../resources/entity.md)|
|newData|String|Serialized representation of the entity state after the change.|
|occurredDateTime|DateTimeOffset|Date and time the change occurred. Read-only.|
|oldData|String|Serialized representation of the entity state before the change.|
|planId|String|ID of the plan the change occurred in.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.historyItem",
  "baseType": "microsoft.graph.plannerDelta",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.historyItem",
  "id": "String (identifier)",
  "planId": "String",
  "entityId": "String",
  "entityType": "String",
  "eventType": "String",
  "occurredDateTime": "String (timestamp)",
  "actor": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "oldData": "String",
  "newData": "String"
}
```

