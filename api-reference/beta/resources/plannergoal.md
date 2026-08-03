---
title: "plannerGoal resource type"
description: "Represents a goal associated with a set of tasks in a Planner plan."
author: "jadenstetler"
ms.date: 07/21/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# plannerGoal resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a goal associated with a set of tasks in a [Planner plan](../resources/plannerplan.md).

Third-party applications can read goals but can't create, update, or delete them.

Inherits from [plannerDelta](../resources/plannerdelta.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get goal](../api/plannergoal-get.md)|[plannerGoal](../resources/plannergoal.md)|Read the properties and relationships of a **plannerGoal** object.|
|[List goals](../api/plannerplan-list-goals.md)|[plannerGoal](../resources/plannergoal.md) collection|Get the goals associated with a **plannerPlan** object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Required. The display name of the goal.|
|finishDate|Date|Nullable. The date on which the goal is scheduled to finish.|
|id|String|Read-only. The unique identifier of the goal. Inherited from [plannerDelta](../resources/plannerdelta.md).|
|notes|[itemBody](../resources/itembody.md)|Nullable. The notes associated with the goal.|
|planId|String|Required. The ID of the plan that contains the goal.|
|priority|Int32|Optional. The relative priority of the goal. Valid values range from `0` to `10`, inclusive. The default value is `5`.|
|startDate|Date|Nullable. The date on which the goal is scheduled to start.|
|status|[plannerGoalStatus](../resources/enums.md#plannergoalstatus-values)|Required. The current status of the goal. The default value is `notStarted`. The possible values are: `notStarted`, `onTrack`, `behind`, `atRisk`, `closed`, `unknownFutureValue`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|tasks|[plannerTask](../resources/plannertask.md) collection|Read-only. Nullable. The tasks associated with the goal. This relationship doesn't support direct retrieval or `$expand`. To identify the goals associated with a task, read the **goalIds** property of the [plannerTask](../resources/plannertask.md) resource.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.plannerGoal",
  "baseType": "microsoft.graph.plannerDelta"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.plannerGoal",
  "displayName": "String",
  "finishDate": "Date",
  "id": "String (identifier)",
  "notes": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "planId": "String",
  "priority": "Int32",
  "startDate": "Date",
  "status": "String"
}
```
