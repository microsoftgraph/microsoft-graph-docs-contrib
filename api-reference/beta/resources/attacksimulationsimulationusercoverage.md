---
title: "attackSimulationSimulationUserCoverage resource type"
description: "Represents simulation coverage for a user of a tenant in attack simulation and training."
author: "Gopal-MSFT"
ms.localizationpriority: Menium
ms.prod: "reports"
doc_type: resourcePageType
---

# attackSimulationSimulationUserCoverage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents simulation coverage for a user of a tenant in attack simulation and training.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attackSimulationUser|[attackSimulationUser](../resources/attacksimulationuser.md)|User of a tenant in attack simulation and training campaign|
|clickCount|Int32|Click count of the user in attack simulation and training campaigns|
|compromisedCount|Int32|Compromised count of the user in attack simulation and training campaigns|
|latestSimulationDateTime|DateTimeOffset|Latest simulation date and time for the user|
|simulationCount|Int32|Count of attack simulation and training campaigns for the user|

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
  "simulationCount": "Integer",
  "latestSimulationDateTime": "String (timestamp)",
  "clickCount": "Integer",
  "compromisedCount": "Integer",
  "attackSimulationUser": {
    "@odata.type": "microsoft.graph.attackSimulationUser"
  }
}
```

