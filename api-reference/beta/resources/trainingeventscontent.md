---
title: "trainingEventsContent resource type"
description: "Represents training events in an attack simulation and training campaign."
author: "Gopal-MSFT"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# trainingEventsContent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents training events in an attack simulation and training campaign.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedTrainingsInfos|[assignedTrainingInfo](../resources/assignedtraininginfo.md) collection|List of assigned trainings and their information in an attack simulation and training campaign.|
|trainingsAssignedUserCount|Int32|Number of users who were assigned trainings in an attack simulation and training campaign.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.trainingEventsContent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.trainingEventsContent",
  "trainingsAssignedUserCount": "Integer",
  "assignedTrainingsInfos": [
    {
      "@odata.type": "microsoft.graph.assignedTrainingInfo"
    }
  ]
}
```

