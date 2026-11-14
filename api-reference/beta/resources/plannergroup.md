---
title: "plannerGroup resource type"
description: "The **plannerGroup** resource provides access to Planner resources for a group. It doesn't contain any usable properties."
ms.localizationpriority: medium
author: "TarkanSevilmis"
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# plannerGroup resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **plannerGroup** resource provides access to Planner resources for a [group](../resources/group.md). It doesn't contain any usable properties.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List group's plans](../api/plannergroup-list-plans.md) |[plannerPlan](../resources/plannerplan.md) collection| Get a **plannerPlan** object collection.|
|[List plans (Planner Unified plans Graph API)](../api/plannergroup-list-plans_v2.md) |[plan](../resources/plan.md) collection| Get a list of the [plan](../resources/plan.md) objects owned by the group.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only. Identifier of the **plannerGroup**|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|plans|[plannerPlan](../resources/plannerplan.md) collection| Read-only. Nullable. Returns the [plannerPlans](../resources/plannerplan.md) owned by the group.|
|plans_v2|[plan](../resources/plan.md) collection| Read-only. Nullable. The collection of plans in the Planner Unified plans Graph API owned by the group.|

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity",  
  "@odata.type": "microsoft.graph.plannerGroup"
}-->

```json
{
  "id": "String (identifier)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "plannerGroup resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
