---
title: "securityReportsRoot resource type"
description: "Container for AST reports resources."
author: "Gopal-MSFT"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: apiPageType
---

# securityReportsRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides the ability to launch a realistic simulated phishing attack that organizations can learn from.
This is an abstract type.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[getAttackSimulationSimulationUserCoverage](../api/securityreportsroot-getattacksimulationsimulationusercoverage.md)|[attackSimulationSimulationUserCoverage](../resources/attacksimulationsimulationusercoverage.md) collection|List simulation coverage for users of a tenant in attack simulation and training campaigns.|
|[getAttackSimulationTrainingUserCoverage](../api/securityreportsroot-getattacksimulationtrainingusercoverage.md)|[attackSimulationTrainingUserCoverage](../resources/attacksimulationtrainingusercoverage.md) collection|List training coverage for users of a tenant in attack simulation and training campaigns.|
|[getAttackSimulationRepeatOffenders](../api/securityreportsroot-getattacksimulationrepeatoffenders.md)|[attackSimulationRepeatOffender](../resources/attacksimulationrepeatoffender.md) collection|List repeat offender users of a tenant in attack simulation and training campaigns|

## Properties
None

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.securityReportsRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.securityReportsRoot",
}
```

