---
title: "plannerBucket resource type"
description: "Represents a bucket for tasks in a plan in Microsoft 365."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerBucket resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a bucket (or "custom column") for tasks in a plan in Microsoft 365. It is contained in a [plannerPlan](plannerplan.md) and can have a collection of [plannerTasks](plannertask.md).


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get plannerBucket](../api/plannerbucket-get.md) | [plannerBucket](plannerbucket.md) |Read properties and relationships of **plannerBucket** object.|
|[List plannerTasks](../api/plannerbucket-list-tasks.md) |[plannerTask](plannertask.md) collection| Get a **plannerTask** object collection.|
|[Create](../api/planner-post-buckets.md) | [plannerBucket](plannerbucket.md)	| Create a new **plannerBucket** object. |
|[Update](../api/plannerbucket-update.md) | [plannerBucket](plannerbucket.md)	|Update **plannerBucket** object. |
|[Delete](../api/plannerbucket-delete.md) | None |Delete **plannerBucket** object. |
|[Get delta](../api/plannerbucket-delta.md)|[plannerBucket](../resources/plannerbucket.md) collection| Get newly created, updated, or deleted **plannerBucket** objects in a Planner plan without having to perform a full read of the entire resource collection.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|creationSource|[plannerBucketCreation](plannerbucketcreation.md)|  Contains information about the origin of the bucket.|
|id|String| Read-only. Unique identifier for the bucket. It is 28 characters long and case-sensitive. The [format validation](tasks-identifiers-disclaimer.md) is done on the service.|
|name|String|Name of the bucket.|
|orderHint|String|Hint used to order items of this type in a list view. For details about the supported format, see [Using order hints in Planner](../resources/planner-order-hint-format.md).|
|planId|String|Plan ID to which the bucket belongs.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|tasks|[plannerTask](plannertask.md) collection| Read-only. Nullable. The collection of tasks in the bucket.|

## JSON representation
The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity",  
  "@odata.type": "microsoft.graph.plannerBucket"
}-->

```json
{
  "creationSource": {"@odata.type": "#microsoft.graph.plannerBucketCreation"},
  "id": "String (identifier)",
  "name": "String",
  "orderHint": "String",
  "planId": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "plannerBucket resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
