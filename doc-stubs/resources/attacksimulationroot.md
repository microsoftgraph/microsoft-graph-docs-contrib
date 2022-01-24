---
title: "attackSimulationRoot resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# attackSimulationRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
This is an abstract type.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List attackSimulationRoots](../api/attacksimulationroot-list.md)|[attackSimulationRoot](../resources/attacksimulationroot.md) collection|Get a list of the [attackSimulationRoot](../resources/attacksimulationroot.md) objects and their properties.|
|[Create attackSimulationRoot](../api/security-post-attacksimulation.md)|[attackSimulationRoot](../resources/attacksimulationroot.md)|Create a new [attackSimulationRoot](../resources/attacksimulationroot.md) object.|
|[Get attackSimulationRoot](../api/attacksimulationroot-get.md)|[attackSimulationRoot](../resources/attacksimulationroot.md)|Read the properties and relationships of an [attackSimulationRoot](../resources/attacksimulationroot.md) object.|
|[Update attackSimulationRoot](../api/attacksimulationroot-update.md)|[attackSimulationRoot](../resources/attacksimulationroot.md)|Update the properties of an [attackSimulationRoot](../resources/attacksimulationroot.md) object.|
|[Delete attackSimulationRoot](../api/attacksimulationroot-delete.md)|None|Deletes an [attackSimulationRoot](../resources/attacksimulationroot.md) object.|
|[List simulationAutomations](../api/attacksimulationroot-list-simulationautomations.md)|[simulationAutomation](../resources/simulationautomation.md) collection|Get the simulationAutomation resources from the simulationAutomations navigation property.|
|[Create simulationAutomation](../api/attacksimulationroot-post-simulationautomations.md)|[simulationAutomation](../resources/simulationautomation.md)|Create a new simulationAutomation object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|simulationAutomations|[simulationAutomation](../resources/simulationautomation.md) collection|**TODO: Add Description**|
|simulations|[simulation](../resources/simulation.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.attackSimulationRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.attackSimulationRoot",
  "id": "String (identifier)"
}
```

