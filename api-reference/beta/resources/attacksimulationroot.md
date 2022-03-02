---
title: "attackSimulationRoot resource type"
description: "Provides the ability to launch a realistic phishing attack and allows organization to learn from it."
author: "Gopal-MSFT"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# attackSimulationRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides the ability to launch a realistic phishing attack and allows organization to learn from it.
This is an abstract type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List simulations](../api/attacksimulationroot-list-simulations.md)|[simulation](../resources/simulation.md) collection|Get a list of attack simulation campaigns for a tenant.|
|[List simulationAutomations](../api/attacksimulationroot-list-simulationautomations.md)|[simulationAutomation](../resources/simulationautomation.md) collection|Get a list of attack simulation automations for a tenant.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|simulationAutomations|[simulationAutomation](../resources/simulationautomation.md) collection|Represent an attack simulation automation of a tenant.|
|simulations|[simulation](../resources/simulation.md) collection|Represent an attack simulation and training campaign of a tenant.|

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

