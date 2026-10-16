---
title: "planCapability resource type"
description: "Server-computed, read-only capability flags indicating which optional features are enabled for a plan."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# planCapability resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **capabilities** property of the [plan](plan.md) resource uses this type.

Server-computed, read-only capability flags indicating which optional features are enabled for a [plan](plan.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|calendar|Boolean|Indicates whether calendar features are enabled for the plan.|
|customFields|Boolean|Indicates whether custom fields are enabled for the plan.|
|extensions|Boolean|Indicates whether custom extension fields are enabled for the plan.|
|goals|Boolean|Indicates whether goals are enabled for the plan.|
|undo|Boolean|Indicates whether undo is enabled for the plan.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.planCapability"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.planCapability",
  "calendar": "Boolean",
  "customFields": "Boolean",
  "extensions": "Boolean",
  "goals": "Boolean",
  "undo": "Boolean"
}
```

