---
title: "goal resource type"
description: "Represents a goal in the Planner Unified plans Graph API within a plan, including its name, status, dates, priority, and notes."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# goal resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a goal in the Planner Unified plans Graph API within a [plan](../resources/plan.md), including its name, status, dates, priority, and notes. See the **status** property for the supported status values.


Inherits from [plannerDelta](../resources/plannerdelta.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/plan-list-goals.md)|[goal](../resources/goal.md) collection|Get a list of the goal objects and their properties.|
|[Get](../api/goal-get.md)|[goal](../resources/goal.md)|Read the properties and relationships of [goal](../resources/goal.md) object.|
|[List tasks](../api/goal-list-tasks.md)|[task](../resources/task.md) collection|Get a list of the task objects and their properties.|

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
|planId|String|ID of the plan that contains the goal. Immutable after creation.|
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
