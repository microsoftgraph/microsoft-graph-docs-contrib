---
title: "attackSimulationRoot resource type"
description: "Represents an abstract type that provides the ability to launch a realistic phishing attack that organizations can learn from."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# attackSimulationRoot resource type

Namespace: microsoft.graph

Represents an abstract type that provides the ability to launch a realistic phishing attack that organizations can learn from.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List simulations](../api/attacksimulationroot-list-simulations.md)|[simulation](../resources/simulation.md) collection|Get a list of attack simulation campaigns for a tenant.|
|[List simulationAutomations](../api/attacksimulationroot-list-simulationautomations.md)|[simulationAutomation](../resources/simulationautomation.md) collection|Get a list of attack simulation automations for a tenant.|

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|simulationAutomations|[simulationAutomation](../resources/simulationautomation.md) collection|Represents simulation automation created to run on a tenant.|
|simulations|[simulation](../resources/simulation.md) collection|Represents an attack simulation training campaign in a tenant.|

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
