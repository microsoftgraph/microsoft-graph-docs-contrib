---
title: "attackSimulationRoot resource type"
description: "Provides the ability to launch a realistic phishing attack that organizations can learn from."
author: "Gopal-MSFT"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# attackSimulationRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides the ability to launch a realistic phishing attack that organizations can learn from.
This is an abstract type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List simulations](../api/attacksimulationroot-list-simulations.md)|[simulation](../resources/simulation.md) collection|Get a list of attack simulation training campaigns for a tenant.|
|[List simulationAutomations](../api/attacksimulationroot-list-simulationautomations.md)|[simulationAutomation](../resources/simulationautomation.md) collection|Get a list of attack simulation automations for a tenant.|

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|simulations|[simulation](../resources/simulation.md) collection|Represents an attack simulation training campaign in a tenant.|
|simulationAutomations|[simulationAutomation](../resources/simulationautomation.md) collection|Represents simulation automations created to run on a tenant.|

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

