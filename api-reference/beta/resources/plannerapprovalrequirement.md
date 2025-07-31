---
title: "plannerApprovalRequirement resource type"
description: "Represents whether a plannerTask must have an approval completion requirement created for it."
author: "ShravanthiReddy"
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 04/16/2024
---

# plannerApprovalRequirement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents whether a [plannerTask](plannertask.md) must have an approval completion requirement created for it; however, we don't recommend that you set this property directly because you can't programmatically add an approval requirement to a task. An approval requirement can only be added via the task publishing feature. You can use this resource to query published tasks to determine if the task has an approval requirement.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isApprovalRequired|Boolean|Specifies whether [approval](plannerbaseapprovalattachment.md) is required to complete the [plannerTask](plannertask.md). If set to `true`, the task can only be marked as complete if an approval is created for the task and approved.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerApprovalRequirement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerApprovalRequirement",
  "isApprovalRequired": "Boolean"
}
```

