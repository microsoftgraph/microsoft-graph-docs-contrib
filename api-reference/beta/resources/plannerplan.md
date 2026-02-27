---
title: "plannerPlan resource type"
description: "Represents a plan in Microsoft 365."
ms.localizationpriority: medium
author: "TarkanSevilmis"
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 10/23/2025
---

# plannerPlan resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a plan in Microsoft 365. Either a [group](group.md) or a [user](user.md) owns a plan. Plans contain a collection of [plannerTasks](plannertask.md). Plans can also have a collection of [plannerBuckets](plannerbucket.md). Each plan object has a [details](plannerplandetails.md) object that can contain more information about the plan. For more information about the relationships between groups, plans, and tasks, see [Planner](planner-overview.md).

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create](../api/planner-post-plans.md) | [plannerPlan](plannerplan.md) |Create a **plannerPlan** object.|
|[Get](../api/plannerplan-get.md) | [plannerPlan](plannerplan.md) |Read properties and relationships of **plannerPlan** object.|
|[Update](../api/plannerplan-update.md) | [plannerPlan](plannerplan.md)	|Update **plannerPlan** object. |
|[Delete](../api/plannerplan-delete.md) | None | Delete **plannerPlan** object. |
|[Archive plan](../api/plannerplan-archive.md) | [plannerPlan](plannerplan.md) | Archive a **plannerPlan** object.|
|[Unarchive plan](../api/plannerplan-unarchive.md) | [plannerPlan](plannerplan.md) | Unarchive an archived **plannerPlan** object.|
|[Move to container](../api/plannerplan-movetocontainer.md) | [plannerPlan](../resources/plannerplan.md) | Move a **plannerPlan** object from one **plannerPlanContainer** to another. |
|[List plan buckets](../api/plannerplan-list-buckets.md) |[plannerBucket](plannerbucket.md) collection| Get a **plannerBucket** object collection.|
|[List plan tasks](../api/plannerplan-list-tasks.md) |[plannerTask](plannertask.md) collection| Get a **plannerTask** object collection.|
|[Get delta](../api/plannerplan-delta.md) | [plannerPlan](../resources/plannerplan.md) collection | Get newly created, updated, or deleted **plannerPlan** objects in either a **group** or a [plannerRoster](plannerroster.md) type container without having to perform a full read of the entire resource collection. |
|[Get usage rights](../api/plannerplan-getusagerights.md)|[planUsageRight](../resources/planusageright.md)|Get the usage rights for a specific [plan](../resources/plannerplan.md) based on its sensitivity label assignment and the requesting user's permissions.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|archivalInfo|[plannerArchivalInfo](../resources/plannerarchivalinfo.md)|Read-only. Nullable. Contains information about who archived or unarchived the plan and why.|
|container|[plannerPlanContainer](../resources/plannerplancontainer.md)|Identifies the container of the plan. Either specify all properties, or specify only the **url**, the **containerId**, and **type**. After it's set, this property can’t be updated. It changes when a plan is moved from one container to another, using [plan move to container](../api/plannerplan-movetocontainer.md). Required.|
|contentSensitivityLabelAssignment|[contentSensitivityLabelAssignment](contentsensitivitylabelassignment.md)|The sensitivity label assignment for the plan. Used to classify and protect the plan content based on organizational policies. This property is `null` if no sensitivity label is assigned. Optional.|
|contexts|[plannerPlanContextCollection](plannerplancontextcollection.md)| Read-only. Other user experiences in which this plan is used, represented as [plannerPlanContext](plannerplancontext.md) entries.|
|createdBy|[identitySet](identityset.md)|Read-only. The user who created the plan.|
|createdDateTime|DateTimeOffset|Read-only. Date and time at which the plan is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|creationSource|[plannerPlanCreation](plannerplancreation.md)|  Contains information about the origin of the plan.|
|id|String| Read-only. ID of the plan. It's 28 characters long and case-sensitive. [Format validation](tasks-identifiers-disclaimer.md) is done on the service.|
|isArchived|Boolean|Read-only. If set to `true`, the plan is archived. An archived plan is read-only.|
|title|String|Required. Title of the plan.|
|sharedWithContainers|[plannerSharedWithContainer](plannersharedwithcontainer.md) collection|List of containers the plan is shared with.|
|owner (deprecated) |String| Use the **container** property instead. ID of the [group](group.md) that owns the plan. After it's set, this property can’t be updated. This property doesn't return a valid group ID if the container of the plan isn't a group.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|buckets|[plannerBucket](plannerbucket.md) collection| Collection of buckets in the plan. Read-only. Nullable.|
|details|[plannerPlanDetails](plannerplandetails.md)| Extra details about the plan. Read-only. Nullable. |
|tasks|[plannerTask](plannertask.md) collection| Collection of tasks in the plan. Read-only. Nullable. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity",
  "@odata.type": "microsoft.graph.plannerPlan"
}-->

```json
{
  "archivalInfo": {"@odata.type": "microsoft.graph.plannerArchivalInfo"},
  "container": {"@odata.type": "microsoft.graph.plannerPlanContainer"},
  "contentSensitivityLabelAssignment": {"@odata.type": "microsoft.graph.contentSensitivityLabelAssignment"},
  "contexts": {"@odata.type": "microsoft.graph.plannerPlanContextCollection"},
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "creationSource": {"@odata.type": "#microsoft.graph.plannerPlanCreation"},
  "id": "String (identifier)",
  "isArchived": "Boolean",
  "owner": "String",
  "sharedWithContainers": [{"@odata.type": "microsoft.graph.plannerSharedWithContainer"}],
  "title": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "plannerPlan resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
