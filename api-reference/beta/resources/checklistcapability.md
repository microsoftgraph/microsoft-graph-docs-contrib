---
title: "checklistCapability resource type"
description: "Server-computed, read-only capability flags indicating which optional features are enabled for a checklistItemV4."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# checklistCapability resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **capabilities** property of the [checklistItemV4](checklistitemv4.md) resource uses this type.

Server-computed, read-only capability flags indicating which optional features are enabled for a [checklistItemV4](checklistitemv4.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|extensions|Boolean|Indicates whether custom extension fields are enabled for the checklist item.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.checklistCapability"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.checklistCapability",
  "extensions": "Boolean"
}
```

