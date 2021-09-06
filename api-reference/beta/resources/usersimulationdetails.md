---
title: "userSimulationDetails resource type"
description: "Represents a user of a tenant and its online actions in an attack simulation and training campaign."
author: "Gopal-MSFT"
ms.localizationpriority: Menium
ms.prod: "security"
doc_type: resourcePageType
---

# userSimulationDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user of a tenant and its online actions in an attack simulation and training campaign.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedTrainingsCount|Int32|Count of assigned trainings to a user in the simulation.|
|completedTrainingsCount|Int32|Count of completed trainings by a user in the simulation.|
|compromisedDateTime|DateTimeOffset|Date and time of compromised event from a user in the simulation.|
|inProgressTrainingsCount|Int32|Count of in-progress trainings by a user in the simulation.|
|isCompromised|Boolean|Flag representing if user was compromised in the simulation.|
|reportedPhishDateTime|DateTimeOffset|Date and time of the event when user reported payload as phish in the simulation.|
|simulationEvents|[userSimulationEventInfo](../resources/usersimulationeventinfo.md) collection|List of simulation events of a user in the simulation.|
|simulationUser|[attackSimulationUser](../resources/attacksimulationuser.md)|User of a tenant in attack simulation and training campaign|
|trainingEvents|[userTrainingEventInfo](../resources/usertrainingeventinfo.md) collection|List of training events of a user in the simulation.|

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
  "isCompromised": "Boolean",
  "compromisedDateTime": "String (timestamp)",
  "simulationEvents": [
    {
      "@odata.type": "microsoft.graph.userSimulationEventInfo"
    }
  ],
  "trainingEvents": [
    {
      "@odata.type": "microsoft.graph.userTrainingEventInfo"
    }
  ],
  "assignedTrainingsCount": "Integer",
  "completedTrainingsCount": "Integer",
  "inProgressTrainingsCount": "Integer",
  "reportedPhishDateTime": "String (timestamp)",
  "simulationUser": {
    "@odata.type": "microsoft.graph.attackSimulationUser"
  }
}
```

