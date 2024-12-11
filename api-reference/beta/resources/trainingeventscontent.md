---
title: "trainingEventsContent resource type"
description: "Represents training events in an attack simulation and training campaign."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
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
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.trainingEventsContent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.trainingEventsContent",
  "assignedTrainingsInfos": [
    {
      "@odata.type": "microsoft.graph.assignedTrainingInfo"
    }
  ],
  "trainingsAssignedUserCount": "Int32"
}
```
