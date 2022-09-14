---
title: "attackSimulationTrainingUserCoverage resource type"
description: "Represents training coverage for a user in attack simulation and training."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: resourcePageType
---

# attackSimulationTrainingUserCoverage resource type

Namespace: microsoft.graph

Represents cumulative training data for a user in attack simulation and training.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attackSimulationUser|[attackSimulationUser](../resources/attacksimulationuser.md)|User in an attack simulation and training campaign.|
|userTrainings|[userTrainingStatusInfo](../resources/usertrainingstatusinfo.md) collection|List of assigned trainings' and their statuses for the user.|

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

