---
title: "taskPersonalView resource type"
description: "Per-user personal view metadata for a task, such as whether the task is on the user's My Day view."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# taskPersonalView resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **personalView** property of the [task](task.md) resource uses this type.

Per-user personal view metadata for a [task](task.md), such as whether the task is on the user's My Day view.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|isOnMyDay|Boolean|Indicates whether the task is included in the user's My Day view.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.taskPersonalView"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.taskPersonalView",
  "isOnMyDay": "Boolean"
}
```

