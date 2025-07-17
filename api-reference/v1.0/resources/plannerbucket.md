---
title: "plannerBucket resource type"
description: "Represents a bucket for tasks in a plan in Microsoft 365."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# plannerBucket resource type

Namespace: microsoft.graph

Represents a bucket (or "custom column") for tasks in a plan in Microsoft 365. It is contained in a [plannerPlan](plannerplan.md) and can have a collection of [plannerTasks](plannertask.md).


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get bucket](../api/plannerbucket-get.md) | [plannerBucket](plannerbucket.md) |Read properties and relationships of **plannerBucket** object.|
|[List bucket tasks](../api/plannerbucket-list-tasks.md) |[plannerTask](plannertask.md) collection| Get a **plannerTask** object collection.|
|[Create bucket](../api/planner-post-buckets.md) | [plannerBucket](plannerbucket.md)	| Create a new **plannerBucket** object. |
|[Update bucket](../api/plannerbucket-update.md) | [plannerBucket](plannerbucket.md)	|Update **plannerBucket** object. |
|[Delete bucket](../api/plannerbucket-delete.md) | None |Delete **plannerBucket** object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only. ID of the bucket. It is 28 characters long and case-sensitive. [Format validation](planner-identifiers-disclaimer.md) is done on the service.|
|name|String|Name of the bucket.|
|orderHint|String|Hint used to order items of this type in a list view. For details about the supported format, see [Using order hints in Planner](../resources/planner-order-hint-format.md).|
|planId|String|Plan ID to which the bucket belongs.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|tasks|[plannerTask](plannertask.md) collection| Read-only. Nullable. The collection of tasks in the bucket.|

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerBucket"
}-->

```json
{
  "id": "String (identifier)",
  "name": "String",
  "orderHint": "String",
  "planId": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plannerBucket resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

