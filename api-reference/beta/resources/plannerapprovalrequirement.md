---
title: "plannerApprovalRequirement resource type"
description: "The **plannerApprovalRequirement** resource represents approval completion requirement on a [plannerTask](plannertask.md)."
author: "ShravanthiReddy"
ms.localizationpriority: medium
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerApprovalRequirement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **plannerApprovalRequirement** resource represents approval completion requirement on a [plannerTask](plannertask.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isApprovalRequired|Boolean|Specifies if [approval](plannerbaseapprovalattachment.md) is required, to complete the [plannerTask](plannertask.md). When this property is set to true, the task can only be marked complete if an approval is  created for the task and approved.|

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

