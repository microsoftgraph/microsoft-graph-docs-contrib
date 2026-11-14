---
title: "categoryDefinition resource type"
description: "A named category that can be applied to tasks in a plan. It has no defaults beyond the universal property set."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# categoryDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A named category that can be applied to [tasks](../resources/task.md) in a [plan](../resources/plan.md). It has no defaults beyond the universal property set.


Inherits from [plannerDelta](../resources/plannerdelta.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Read plan categories](../api/planview-list-categories.md)|[plan](../resources/plan.md)|Read a plan with its category definitions expanded.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|capabilities|[categoryDefinitionCapability](../resources/categorydefinitioncapability.md)|Server-computed, read-only capability flags indicating which optional features are enabled for the entity.|
|displayName|String|Name of the category.|
|extensions|[extensionFieldCollection](../resources/extensionfieldcollection.md)|Custom extension field values set on the entity. Supports $select.|
|id|String|The unique identifier of the entity. Read-only. Inherited from [entity](../resources/entity.md)|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.categoryDefinition",
  "baseType": "microsoft.graph.plannerDelta",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.categoryDefinition",
  "id": "String (identifier)",
  "displayName": "String",
  "capabilities": {
    "@odata.type": "microsoft.graph.categoryDefinitionCapability"
  },
  "extensions": {
    "@odata.type": "microsoft.graph.extensionFieldCollection"
  }
}
```
