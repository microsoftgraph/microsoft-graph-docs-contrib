---
title: "attackSimulationTrainingUserCoverage resource type"
description: "Represents cumulative training data for a user in attack simulation and training."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# attackSimulationTrainingUserCoverage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents cumulative training data for a user in attack simulation and training.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get training coverage for users](../api/securityreportsroot-getattacksimulationtrainingusercoverage.md)|[attackSimulationTrainingUserCoverage](../resources/attacksimulationtrainingusercoverage.md) collection|List training coverage for tenant users in attack simulation and training campaigns.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attackSimulationUser|[attackSimulationUser](../resources/attacksimulationuser.md)|User in an attack simulation and training campaign.|
|userTrainings|[userTrainingStatusInfo](../resources/usertrainingstatusinfo.md) collection|List of assigned trainings and their statuses for the user.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.attackSimulationTrainingUserCoverage"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.attackSimulationTrainingUserCoverage",
  "attackSimulationUser": {
    "@odata.type": "microsoft.graph.attackSimulationUser"
  },
  "userTrainings": [
    {
      "@odata.type": "microsoft.graph.userTrainingStatusInfo"
    }
  ]
}
```

