---
title: "planView resource type"
description: "Plan-scoped view metadata for a plan, including the plan's category definitions."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# planView resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **planView** property of the [plan](plan.md) resource uses this type.

Plan-scoped view metadata for a [plan](plan.md), including the plan's category definitions.


## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|categories|[categoryDefinition](../resources/categorydefinition.md) collection|The collection of category definitions available in the plan. Read-only. Nullable.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.planView"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.planView"
}
```

