---
title: "attackSimulationRepeatOffender resource type"
description: "Represents repeat offender user in attack simulation and training."
author: "Gopal-MSFT"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: resourcePageType
---

# attackSimulationRepeatOffender resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user in a tenant who has given way to attacks more than once across various attack simulation and training campaigns.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attackSimulationUser|[attackSimulationUser](../resources/attacksimulationuser.md)|User in an attack simulation and training campaign.|
|repeatOffenceCount|Int32|Number of repeat offences of the user in attack simulation and training campaigns.|

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

