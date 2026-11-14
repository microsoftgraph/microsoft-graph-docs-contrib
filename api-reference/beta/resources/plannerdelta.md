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

Derived types in the Planner Unified plans Graph API include [bucket](../resources/bucket.md), [categoryDefinition](../resources/categorydefinition.md), [checklistItemV4](../resources/checklistitemv4.md), [contentLink](../resources/contentlink.md), [customChoiceOption](../resources/customchoiceoption.md), [customFieldDefinition](../resources/customfielddefinition.md), [customFieldValue](../resources/customfieldvalue.md), [dependency](../resources/dependency.md), [goal](../resources/goal.md), [historyItem](../resources/historyitem.md), [plan](../resources/plan.md), [planContextLink](../resources/plancontextlink.md), [plannerChatMessage](../resources/plannerchatmessage.md), [task](../resources/task.md), and [userAssignment](../resources/userassignment.md). Each resource's Methods section identifies its documented operations; inheritance doesn't imply CRUD support.

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
