---
title: "plannerPlan resource type"
description: "Represents a plan in Microsoft 365."
ms.localizationpriority: high
author: "TarkanSevilmis"
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 08/09/2024
---

# plannerPlan resource type

Namespace: microsoft.graph

Represents a plan in Microsoft 365. A plan can be owned by a [group](group.md) and contains a collection of [plannerTasks](plannertask.md). It can also have a collection of [plannerBuckets](plannerbucket.md). Each plan object has a [details](plannerplandetails.md) object that can contain more information about the plan. For more information about the relationships between groups, plans, and tasks, see [Planner](planner-overview.md).

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create](../api/planner-post-plans.md) | [plannerPlan](plannerplan.md) |Create a **plannerPlan** object.|
|[Get](../api/plannerplan-get.md) | [plannerPlan](plannerplan.md) |Read properties and relationships of **plannerPlan** object.|
|[Update](../api/plannerplan-update.md) | [plannerPlan](plannerplan.md)	|Update **plannerPlan** object. |
|[Delete](../api/plannerplan-delete.md) | None | Delete **plannerPlan** object. |
|[List plan buckets](../api/plannerplan-list-buckets.md) |[plannerBucket](plannerbucket.md) collection| Get a **plannerBucket** object collection.|
|[List plan tasks](../api/plannerplan-list-tasks.md) |[plannerTask](plannertask.md) collection| Get a **plannerTask** object collection.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|container|[plannerPlanContainer](../resources/plannerplancontainer.md)|Identifies the container of the plan. Specify only the **url**, the **containerId** and **type**, or all properties. After it's set, this property can’t be updated. Required.|
|createdBy|[identitySet](identityset.md)|Read-only. The user who created the plan.|
|createdDateTime|DateTimeOffset|Read-only. Date and time at which the plan is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|id|String| Read-only. ID of the plan. It's 28 characters long and case-sensitive. [Format validation](planner-identifiers-disclaimer.md) is done on the service.|
|owner (deprecated) |String| Use the **container** property instead. ID of the [group](group.md) that owns the plan. After it's set, this property can’t be updated. This property won't return a valid group ID if the container of the plan isn't a group.|
|title|String|Required. Title of the plan.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|buckets|[plannerBucket](plannerbucket.md) collection| Read-only. Nullable. Collection of buckets in the plan.|
|details|[plannerPlanDetails](plannerplandetails.md)| Read-only. Nullable. Extra details about the plan.|
|tasks|[plannerTask](plannertask.md) collection| Read-only. Nullable. Collection of tasks in the plan.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerPlan"
}-->

```json
{
  "container": {
    "@odata.type": "microsoft.graph.plannerPlanContainer",
    "containerId": "String",
    "type": "String",
    "url": "String"
  },
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "title": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plannerPlan resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

