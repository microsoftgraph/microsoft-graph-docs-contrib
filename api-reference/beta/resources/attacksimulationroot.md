---
title: "attackSimulationRoot resource type"
description: "Provides tenants capability to launch a realistic phishing attacks and learn from it."
author: "Gopal-MSFT"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# attackSimulationRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides tenants capability to launch a realistic phishing attacks and learn from it.
This is an abstract type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List simulations](../api/attacksimulationroot-list-simulations.md)|[simulation](../resources/simulation.md) collection|Get the simulation resources from the simulations navigation property.|
|[List simulationAutomations](../api/attacksimulationroot-list-simulationautomations.md)|[simulationAutomation](../resources/simulationautomation.md) collection|Get the simulationAutomation resources from the simulationAutomations navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|simulationAutomations|[simulationAutomation](../resources/simulationautomation.md) collection|Represent simulation automation of a tenant.|
|simulations|[simulation](../resources/simulation.md) collection|Represent attack simulation and training campaign of a tenant.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.attackSimulationRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.attackSimulationRoot"
}
```

