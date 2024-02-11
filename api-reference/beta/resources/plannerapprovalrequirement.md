---
title: "plannerApprovalRequirement resource type"
description: "**TODO: Add Description**"
author: "ShravanthiReddy"
ms.localizationpriority: medium
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerApprovalRequirement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a approval completion requirement on a [plannerTask](plannertask.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isApprovalRequired|Boolean|Specifies if approval is required, to complete the [plannerTask](plannertask.md).|

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

