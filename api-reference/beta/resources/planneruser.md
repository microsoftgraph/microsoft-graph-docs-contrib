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

Provides access to Planner resources for a [user](user.md). 


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List user's assigned tasks](../api/planneruser-list-tasks.md) |[plannerTask](plannertask.md) collection| Get the [plannerTasks](plannertask.md) assigned to the user.|
|[List user's My Day tasks](../api/planneruser-list-mydaytasks.md) |[plannerTask](plannertask.md) collection| Get the [plannerTasks](plannertask.md) to be shown in the user's MyDay view.|
|[List user's favorite plans](../api/planneruser-list-favoriteplans.md) |[plannerPlan](plannerplan.md) collection| Get the [plannerPlans](plannerplan.md) marked as favorite by the user.|
|[List user's recent plans](../api/planneruser-list-recentplans.md) |[plannerPlan](plannerplan.md) collection| Get the [plannerPlans](plannerplan.md) recently viewed by the user.|
|[List user's plans in rosters](../api/planneruser-list-rosterplans.md)|[plannerPlan](plannerplan.md) collection| Get the [plannerPlans](plannerplan.md) contained by the [plannerRosters](plannerroster.md) that the user is a member.|
|[Update user's settings](../api/planneruser-update.md) | [plannerUser](planneruser.md)| Update a **plannerUser** object. |


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only. Unique identifier for the **plannerUser** object.|
|favoritePlanReferences|[plannerFavoritePlanReferenceCollection](plannerfavoriteplanreferencecollection.md)| A collection that contains the references to the plans that the user marked as favorites.|
|recentPlanReferences|[plannerRecentPlanReferenceCollection](plannerrecentplanreferencecollection.md)| A collection that contains references to the plans that the user recently viewed in apps that support recent plans.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|favoritePlans|[plannerPlan](plannerplan.md) collection| Read-only. Nullable. Returns the [plannerPlans](plannerplan.md) that the user marked as favorites.|
|recentPlans|[plannerPlan](plannerplan.md) collection| Read-only. Nullable. Returns the [plannerPlans](plannerplan.md) that the user recently viewed in apps that support recent plans. |
|rosterPlans|[plannerPlan](../resources/plannerplan.md) collection|Read-only. Nullable. Returns the [plannerPlans](plannerplan.md) contained by the [plannerRosters](plannerroster.md) the user is a member.|
|tasks|[plannerTask](plannertask.md) collection| Read-only. Nullable. Returns the [plannerTasks](plannertask.md) assigned to the user.|
|myDayTasks|[plannerTask](plannertask.md) collection| Read-only. Nullable. Returns the [plannerTasks](plannertask.md) to be shown in the My Day view of the user.|

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


