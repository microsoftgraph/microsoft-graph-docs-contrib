---
title: "categoryDefinitionCapability resource type"
description: "Server-computed, read-only capability flags indicating which optional features are enabled for a categoryDefinition."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# categoryDefinitionCapability resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **capabilities** property of the [categoryDefinition](categorydefinition.md) resource uses this type.

Server-computed, read-only capability flags indicating which optional features are enabled for a [categoryDefinition](categorydefinition.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|extensions|Boolean|Indicates whether custom extension fields are enabled for the category definition.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.categoryDefinitionCapability"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.categoryDefinitionCapability",
  "extensions": "Boolean"
}
```

