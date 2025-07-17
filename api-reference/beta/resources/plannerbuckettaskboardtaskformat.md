---
title: "plannerBucketTaskBoardTaskFormat resource type"
description: "Represents the information used to render a task correctly in the buckets view of a task board."
ms.localizationpriority: medium
author: "TarkanSevilmis"
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# plannerBucketTaskBoardTaskFormat resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the information used to render a task correctly in the buckets view of a task board (a view organized by tasks within the buckets they're assigned to). Each [task](plannertask.md) has one **plannerBucketTaskBoardTaskFormat** object associated with it.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get bucket task board format](../api/plannerbuckettaskboardtaskformat-get.md) | [plannerBucketTaskBoardTaskFormat](plannerbuckettaskboardtaskformat.md) |Read properties and relationships of **plannerBucketTaskBoardTaskFormat** object.|
|[Update bucket task board format](../api/plannerbuckettaskboardtaskformat-update.md) | [plannerBucketTaskBoardTaskFormat](plannerbuckettaskboardtaskformat.md)	|Update **plannerBucketTaskBoardTaskFormat** object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only. ID of the resource. It's 28 characters long and case-sensitive. The [format validation](tasks-identifiers-disclaimer.md) is done on the service.|
|orderHint|String|Hint used to order tasks in the bucket view of the task board. For details about the supported format, see [Using order hints in Planner](planner-order-hint-format.md).|

## Relationships
None.


## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerBucketTaskBoardTaskFormat"
}-->

```json
{
  "id": "String (identifier)",
  "orderHint": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "plannerBucketTaskBoardTaskFormat resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
