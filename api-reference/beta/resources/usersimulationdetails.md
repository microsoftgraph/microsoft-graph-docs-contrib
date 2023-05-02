---
title: "userSimulationDetails resource type"
description: "Represents a user of a tenant and their online actions in an attack simulation and training campaign."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# userSimulationDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user of a tenant and their online actions in an attack simulation and training campaign.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedTrainingsCount|Int32|Number of trainings assigned to a user in an attack simulation and training campaign.|
|completedTrainingsCount|Int32|Number of trainings completed by a user in an attack simulation and training campaign.|
|compromisedDateTime|DateTimeOffset|Date and time of the compromising online action by a user in an attack simulation and training campaign.|
|inProgressTrainingsCount|Int32|Number of trainings in progress by a user in an attack simulation and training campaign.|
|isCompromised|Boolean|Indicates whether a user was compromised in an attack simulation and training campaign.|
|latestSimulationActivity|String|Indicates latest user activity.|
|reportedPhishDateTime|DateTimeOffset|Date and time when a user reported the delivered payload as phishing in the attack simulation and training campaign.|
|simulationEvents|[userSimulationEventInfo](../resources/usersimulationeventinfo.md) collection|List of simulation events of a user in the attack simulation and training campaign.|
|simulationUser|[attackSimulationUser](../resources/attacksimulationuser.md)|The user in an attack simulation and training campaign.|
|trainingEvents|[userTrainingEventInfo](../resources/usertrainingeventinfo.md) collection|List of training events of a user in the attack simulation and training campaign.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userSimulationDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userSimulationDetails",
  "assignedTrainingsCount": "Int32",
  "completedTrainingsCount": "Int32",
  "compromisedDateTime": "String (timestamp)",
  "inProgressTrainingsCount": "Int32",
  "isCompromised": "Boolean",
  "latestSimulationActivity": "TrainingCompletion",
  "reportedPhishDateTime": "String (timestamp)",
  "simulationEvents": [
    {
      "@odata.type": "microsoft.graph.userSimulationEventInfo"
    }
  ],
  "simulationUser": {
    "@odata.type": "microsoft.graph.attackSimulationUser"
  },
  "trainingEvents": [
    {
      "@odata.type": "microsoft.graph.userTrainingEventInfo"
    }
  ]
}
```

