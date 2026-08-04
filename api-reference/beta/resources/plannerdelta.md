---
title: "plannerDelta resource type"
description: "An abstract type that represents the base type for planner entities such as a plan or a task."
author: "praspati"
ms.date: 05/15/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# plannerDelta resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents the base type for planner entities such as a plan or a task.

Base type of [plannerBucket](../resources/plannerbucket.md), [plannerGoal](../resources/plannergoal.md), [plannerHistoryItem](../resources/plannerhistoryitem.md), [plannerPlan](../resources/plannerplan.md), and [plannerTask](../resources/plannertask.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the entity. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.plannerDelta",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerDelta",
  "id": "String (identifier)"
}
```
