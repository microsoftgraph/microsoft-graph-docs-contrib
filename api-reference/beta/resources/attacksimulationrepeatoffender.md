---
title: "attackSimulationRepeatOffender resource type"
description: "Represents repeat offender user of a tenant in attack simulation and training."
author: "gopkr"
localization_priority: Normal
ms.prod: "reports"
doc_type: resourcePageType
---

# attackSimulationRepeatOffender resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents repeat offender user of a tenant in attack simulation and training.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attackSimulationUser|[attackSimulationUser](../resources/attacksimulationuser.md)|User of a tenant in an attack simulation and training campaign|
|repeatOffenceCount|Int32|Count of repeat offences of a user|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.attackSimulationRepeatOffender"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.attackSimulationRepeatOffender",
  "repeatOffenceCount": "Integer",
  "attackSimulationUser": {
    "@odata.type": "microsoft.graph.attackSimulationUser"
  }
}
```

