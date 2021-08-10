---
title: "userSimulationDetails resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# userSimulationDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedTrainingsCount|Int32|**TODO: Add Description**|
|completedTrainingsCount|Int32|**TODO: Add Description**|
|compromisedDateTime|DateTimeOffset|**TODO: Add Description**|
|inProgressTrainingsCount|Int32|**TODO: Add Description**|
|isCompromised|Boolean|**TODO: Add Description**|
|reportedPhishDateTime|DateTimeOffset|**TODO: Add Description**|
|simulationEvents|[userSimulationEventInfo](../resources/usersimulationeventinfo.md) collection|**TODO: Add Description**|
|simulationUser|[attackSimulationUser](../resources/attacksimulationuser.md)|**TODO: Add Description**|
|trainingEvents|[userTrainingEventInfo](../resources/usertrainingeventinfo.md) collection|**TODO: Add Description**|

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

