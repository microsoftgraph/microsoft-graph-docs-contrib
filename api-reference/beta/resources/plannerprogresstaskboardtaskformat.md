---
title: "plannerProgressTaskBoardTaskFormat resource type"
description: "Represents the information used to render a task correctly in the progress view of the task board (a view organized by the state of the PercentComplete field on the task object, with columns for Not Started, In Progress, and Complete)."
ms.localizationpriority: medium
author: "TarkanSevilmis"
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# plannerProgressTaskBoardTaskFormat resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the information used to render a task correctly in the progress view of the task board (a view organized by the state of the PercentComplete field on the task object, with columns for Not Started, In Progress, and Complete). Each [task](plannertask.md) has one **plannerProgressTaskBoardTaskFormat** object associated with it.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get progress task board format](../api/plannerprogresstaskboardtaskformat-get.md) | [plannerProgressTaskBoardTaskFormat](plannerprogresstaskboardtaskformat.md) |Read properties and relationships of **plannerProgressTaskBoardTaskFormat** object.|
|[Update progress task board format](../api/plannerprogresstaskboardtaskformat-update.md) | [plannerProgressTaskBoardTaskFormat](plannerprogresstaskboardtaskformat.md)	|Update **plannerProgressTaskBoardTaskFormat** object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only. ID of the resource. It's 28 characters long and case-sensitive. The [format validation](tasks-identifiers-disclaimer.md) is done on the service.|
|orderHint|String|Hint value used to order the task on the progress view of the task board. For details about the supported format, see [Using order hints in Planner](planner-order-hint-format.md).|

## Relationships
None.


## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerProgressTaskBoardTaskFormat"
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
  "description": "plannerProgressTaskBoardTaskFormat resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


