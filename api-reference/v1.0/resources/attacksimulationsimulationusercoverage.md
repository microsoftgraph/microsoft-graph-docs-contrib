---
title: "attackSimulationSimulationUserCoverage resource type"
description: "Represents cumulative simulation data and results for a user in attack simulation and training."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: resourcePageType
---

# attackSimulationSimulationUserCoverage resource type

Namespace: microsoft.graph

Represents cumulative simulation data and results for a user in attack simulation and training.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get simulation coverage for users](../api/securityreportsroot-getattacksimulationsimulationusercoverage.md)|[attackSimulationSimulationUserCoverage](../resources/attacksimulationsimulationusercoverage.md) collection|List [training coverage](../resources/attacksimulationtrainingusercoverage.md) for each tenant user in attack simulation and training campaigns.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attackSimulationUser|[attackSimulationUser](../resources/attacksimulationuser.md)|User in an attack simulation and training campaign.|
|clickCount|Int32|Number of link clicks in the received payloads by the user in attack simulation and training campaigns.|
|compromisedCount|Int32|Number of compromising actions by the user in attack simulation and training campaigns.|
|latestSimulationDateTime|DateTimeOffset|Date and time of the latest attack simulation and training campaign that the user was included in.|
|simulationCount|Int32|Number of attack simulation and training campaigns that the user was included in.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.attackSimulationSimulationUserCoverage"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.attackSimulationSimulationUserCoverage",
  "attackSimulationUser": {
    "@odata.type": "microsoft.graph.attackSimulationUser"
  },
  "clickCount": "Int32",
  "compromisedCount": "Int32",
  "latestSimulationDateTime": "String (timestamp)",
  "simulationCount": "Int32"
}
```

