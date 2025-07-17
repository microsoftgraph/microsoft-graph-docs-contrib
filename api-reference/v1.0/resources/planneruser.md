---
title: "plannerUser resource type"
description: "Provides access to Planner resources for a user."
ms.localizationpriority: medium
author: "TarkanSevilmis"
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# plannerUser resource type

Namespace: microsoft.graph

Provides access to Planner resources for a [user](user.md). It doesn't contain any usable properties.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List plans](../api/planneruser-list-plans.md) |[plannerPlan](plannerplan.md) collection| Get a **plannerPlan** object collection.|
|[Get tasks for user](../api/planneruser-list-tasks.md) |[plannerTask](plannertask.md) collection| Get a **plannerTask** object collection.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only. The unique identifier for the **plannerUser** object.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|plans|[plannerPlan](plannerplan.md) collection| Read-only. Nullable. Returns the [plannerTasks](plannertask.md) assigned to the user.|
|tasks|[plannerTask](plannertask.md) collection| Read-only. Nullable. Returns the [plannerPlans](plannerplan.md) shared with the user.|

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerUser"
}-->

```json
{
  "id": "String (identifier)"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plannerUser resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

