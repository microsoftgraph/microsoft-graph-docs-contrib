---
title: "businessScenarioPlanReference resource type"
description: "**TODO: Add Description**"
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# businessScenarioPlanReference resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a reference to a [plannerPlan](../resources/plannerplan.md).


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[getPlan](../api/businessscenarioplanner-getplan.md)|[businessScenarioPlanReference](../resources/businessscenarioplanreference.md)|Gets the reference to the Plan corresponding to the given target. This plan contains any tasks created for the scenario for this the given target.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the plannerPlan. Inherited from [entity](../resources/entity.md).|
|title|String|The title property of the plannerPlan|

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

