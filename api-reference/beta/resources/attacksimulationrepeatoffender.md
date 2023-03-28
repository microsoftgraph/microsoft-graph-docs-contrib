---
title: "attackSimulationRepeatOffender resource type"
description: "Represents a user in a tenant who has given way to attacks more than once across various attack simulation and training campaigns."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: resourcePageType
---

# attackSimulationRepeatOffender resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user in a tenant who has given way to attacks more than once across various attack simulation and training campaigns.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get repeat offenders](../api/securityreportsroot-getattacksimulationrepeatoffenders.md)|[attackSimulationRepeatOffender](../resources/attacksimulationrepeatoffender.md) collection|List the tenant users who have yielded to attacks more than once in attack simulation and training campaigns.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attackSimulationUser|[attackSimulationUser](../resources/attacksimulationuser.md)|The user in an attack simulation and training campaign.|
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
  "attackSimulationUser": {
    "@odata.type": "microsoft.graph.attackSimulationUser"
  },
  "repeatOffenceCount": "Int32"
}
```

