---
title: "attackSimulationTrainingUserCoverage resource type"
description: "Represents training coverage for users of a tenant in attack simulation and training."
author: "Gopal-MSFT"
ms.localizationpriority: Menium
ms.prod: "reports"
doc_type: resourcePageType
---

# attackSimulationTrainingUserCoverage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents training coverage for users of a tenant in attack simulation and training.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attackSimulationUser|[attackSimulationUser](../resources/attacksimulationuser.md)|User of a tenant in attack simulation and training campaign.|
|userTrainings|[userTrainingStatusInfo](../resources/usertrainingstatusinfo.md) collection|List of assigned trainings' status for the user.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.attackSimulationTrainingUserCoverage"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.attackSimulationTrainingUserCoverage",
  "userTrainings": [
    {
      "@odata.type": "microsoft.graph.userTrainingStatusInfo"
    }
  ],
  "attackSimulationUser": {
    "@odata.type": "microsoft.graph.attackSimulationUser"
  }
}
```

