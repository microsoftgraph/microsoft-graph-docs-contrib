---
title: "plannerUser resource type"
description: "Provides access to Planner resources for a user. "
ms.localizationpriority: medium
author: "TarkanSevilmis"
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# plannerUser resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides access to Planner resources for a [user](../resources/user.md).


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List user's assigned tasks](../api/planneruser-list-tasks.md) |[plannerTask](../resources/plannertask.md) collection| Get the [plannerTasks](../resources/plannertask.md) assigned to the user.|
|[List user's My Day tasks](../api/planneruser-list-mydaytasks.md) |[plannerTask](../resources/plannertask.md) collection| Get the [plannerTasks](../resources/plannertask.md) to be shown in the user's MyDay view.|
|[List user's favorite plans](../api/planneruser-list-favoriteplans.md) |[plannerPlan](../resources/plannerplan.md) collection| Get the [plannerPlans](../resources/plannerplan.md) marked as favorite by the user.|
|[List user's recent plans](../api/planneruser-list-recentplans.md) |[plannerPlan](../resources/plannerplan.md) collection| Get the [plannerPlans](../resources/plannerplan.md) recently viewed by the user.|
|[List user's plans in rosters](../api/planneruser-list-rosterplans.md)|[plannerPlan](../resources/plannerplan.md) collection| Get the [plannerPlans](../resources/plannerplan.md) contained by the [plannerRosters](../resources/plannerroster.md) that the user is a member.|
|[Update user's settings](../api/planneruser-update.md) | [plannerUser](../resources/planneruser.md)| Update a **plannerUser** object. |
|[List plans (Planner Unified plans Graph API)](../api/planneruser-list-plans_v2.md) |[plan](../resources/plan.md) collection| Get a list of the [plan](../resources/plan.md) objects associated with the user.|
|[List tasks (Planner Unified plans Graph API)](../api/planneruser-list-tasks_v2.md) |[task](../resources/task.md) collection| Get a list of the [task](../resources/task.md) objects assigned to the user.|


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|favoritePlanReferences|[plannerFavoritePlanReferenceCollection](../resources/plannerfavoriteplanreferencecollection.md)| A collection that contains the references to the plans that the user marked as favorites.|
|id|String| Read-only. Unique identifier for the **plannerUser** object.|
|recentPlanReferences|[plannerRecentPlanReferenceCollection](../resources/plannerrecentplanreferencecollection.md)| A collection that contains references to the plans that the user recently viewed in apps that support recent plans.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|favoritePlans|[plannerPlan](../resources/plannerplan.md) collection| Read-only. Nullable. Returns the [plannerPlans](../resources/plannerplan.md) that the user marked as favorites.|
|myDayTasks|[plannerTask](../resources/plannertask.md) collection| Read-only. Nullable. Returns the [plannerTasks](../resources/plannertask.md) to be shown in the My Day view of the user.|
|plans_v2|[plan](../resources/plan.md) collection| Read-only. Nullable. The collection of plans in the Planner Unified plans Graph API associated with the user.|
|recentPlans|[plannerPlan](../resources/plannerplan.md) collection| Read-only. Nullable. Returns the [plannerPlans](../resources/plannerplan.md) that the user recently viewed in apps that support recent plans. |
|rosterPlans|[plannerPlan](../resources/plannerplan.md) collection|Read-only. Nullable. Returns the [plannerPlans](../resources/plannerplan.md) contained by the [plannerRosters](../resources/plannerroster.md) the user is a member.|
|tasks|[plannerTask](../resources/plannertask.md) collection| Read-only. Nullable. Returns the [plannerTasks](../resources/plannertask.md) assigned to the user.|
|tasks_v2|[task](../resources/task.md) collection| Read-only. Nullable. The collection of tasks in the Planner Unified plans Graph API assigned to the user.|

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity",  
  "@odata.type": "microsoft.graph.plannerUser"
}-->

```json
{
  "id": "String (identifier)",
  "favoritePlanReferences": {"@odata.type": "microsoft.graph.plannerFavoritePlanReferenceCollection"},
  "recentPlanReferences": {"@odata.type": "microsoft.graph.plannerRecentPlanReferenceCollection"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "plannerUser resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
