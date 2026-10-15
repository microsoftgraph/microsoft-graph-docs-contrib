---
title: "taskPlanView resource type"
description: "Task view metadata scoped to a plan, such as the category IDs applied to a task within that plan."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# taskPlanView resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **planView** property of the [task](task.md) resource uses this type.

Task view metadata scoped to a [plan](plan.md), such as the category IDs applied to a [task](task.md) within that plan.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|appliedCategoryIds|String collection|IDs of the categories applied to the task within this plan.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.taskPlanView"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.taskPlanView",
  "appliedCategoryIds": [
    "String"
  ]
}
```

