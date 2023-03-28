---
title: "businessScenarioPlanReference resource type"
description: "Represents a reference to a plannerPlan object."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "business-scenarios"
doc_type: resourcePageType
---

# businessScenarioPlanReference resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a reference to a [plannerPlan](../resources/plannerplan.md) object.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[getPlan](../api/businessscenarioplanner-getplan.md)|[businessScenarioPlanReference](../resources/businessscenarioplanreference.md)|Get information about the [plannerPlan](../resources/plannerplan.md) mapped to a given target.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the **plannerPlan**. Inherited from [entity](../resources/entity.md). Read-only.|
|title|String|The title property of the **plannerPlan**.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.businessScenarioPlanReference",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.businessScenarioPlanReference",
  "id": "String (identifier)",
  "title": "String"
}
```
