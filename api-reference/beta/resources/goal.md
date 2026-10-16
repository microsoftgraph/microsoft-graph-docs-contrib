---
title: "goal resource type"
description: "A Planner V4 goal associated with a set of tasks in a plan. `status` (for example, on-track, at-risk, off-track) is returned by default; description, metrics, and narrative updates require $select."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# goal resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A Planner V4 goal associated with a set of [tasks](task.md) in a [plan](plan.md). `status` (for example, on-track, at-risk, off-track) is returned by default; description, metrics, and narrative updates require $select.


Inherits from [plannerDelta](../resources/plannerdelta.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/plan-list-goals.md)|[goal](../resources/goal.md) collection|Get a list of the goal objects and their properties.|
|[Create](../api/plan-post-goals.md)|[goal](../resources/goal.md)|Create a new goal object.|
|[Get](../api/goal-get.md)|[goal](../resources/goal.md)|Read the properties and relationships of [goal](../resources/goal.md) object.|
|[Update](../api/goal-update.md)|[goal](../resources/goal.md)|Update the properties of a goal object.|
|[Delete](../api/plan-delete-goals.md)|None|Delete a goal object.|
|[List tasks](../api/goal-list-tasks.md)|[task](../resources/task.md) collection|Get a list of the task objects and their properties.|
|[Add task](../api/goal-post-tasks.md)|[task](../resources/task.md)|Add tasks by posting to the tasks collection.|
|[Remove tasks](../api/goal-delete-tasks.md)|None|Remove a [task](../resources/task.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|archivalInfo|[plannerArchivalInfo](../resources/plannerarchivalinfo.md)|Information about whether the entity is archived, and when it was archived.|
|capabilities|[goalCapability](../resources/goalcapability.md)|Server-computed, read-only capability flags indicating which optional features are enabled for the entity.|
|createdBy|[identitySet](../resources/identityset.md)|Identity of the user (or application) who created the entity. Read-only.|
|createdDateTime|DateTimeOffset|Date and time the entity was created. The value is represented in ISO 8601 format and is always in UTC time. Read-only.|
|displayName|String|Title of the goal.|
|extensions|[extensionFieldCollection](../resources/extensionfieldcollection.md)|Custom extension field values set on the entity. Supports $select.|
|finishDate|Date|Date the goal is targeted to finish.|
|id|String|The unique identifier of the entity. Read-only. Inherited from [entity](../resources/entity.md)|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the user (or application) who last modified the entity. Read-only.|
|lastModifiedDateTime|DateTimeOffset|Date and time the entity was last modified. The value is represented in ISO 8601 format and is always in UTC time. Read-only.|
|notes|[itemBody](../resources/itembody.md)|Additional details or notes about the goal.|
|planId|String|ID of the plan that contains the goal. Required, and immutable after creation.|
|priority|Int32|Priority of the goal.|
|startDate|Date|Date the goal starts.|
|status|plannerGoalStatus|Progress status of the goal. The possible values are: `notStarted`, `onTrack`, `behind`, `atRisk`, `closed`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|tasks|[task](../resources/task.md) collection|The collection of tasks associated with the goal. Read-only. Nullable.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.goal",
  "baseType": "microsoft.graph.plannerDelta",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.goal",
  "id": "String (identifier)",
  "displayName": "String",
  "planId": "String",
  "status": "String",
  "priority": "Int32",
  "startDate": "Date",
  "finishDate": "Date",
  "notes": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "archivalInfo": {
    "@odata.type": "microsoft.graph.plannerArchivalInfo"
  },
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "capabilities": {
    "@odata.type": "microsoft.graph.goalCapability"
  },
  "extensions": {
    "@odata.type": "microsoft.graph.extensionFieldCollection"
  }
}
```

