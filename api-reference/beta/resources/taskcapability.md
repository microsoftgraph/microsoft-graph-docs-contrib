---
title: "taskCapability resource type"
description: "Server-computed, read-only capability flags indicating which optional features are enabled for a task."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# taskCapability resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **capabilities** property of the [task](task.md) resource uses this type.

Server-computed, read-only capability flags indicating which optional features are enabled for a [task](task.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedPriorityForTaskPersonalView|Boolean|Indicates whether assigned priority is shown in the task's personal view.|
|dependencies|Boolean|Indicates whether dependencies are enabled for the task.|
|history|Boolean|Indicates whether history tracking is enabled for the task.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.taskCapability"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.taskCapability",
  "assignedPriorityForTaskPersonalView": "Boolean",
  "dependencies": "Boolean",
  "history": "Boolean"
}
```

