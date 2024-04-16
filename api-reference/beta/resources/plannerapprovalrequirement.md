---
title: "plannerApprovalRequirement resource type"
description: "Represents whether a plannerTask must have an approval completion requirement created for it."
author: "ShravanthiReddy"
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# plannerApprovalRequirement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents whether a [plannerTask](plannertask.md) must have an approval completion requirement created for it.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isApprovalRequired|Boolean|Specifies whether [approval](plannerbaseapprovalattachment.md) is required to complete the [plannerTask](plannertask.md). When this property is set to true, the task can only be marked complete if an approval is created for the task and approved.|

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

