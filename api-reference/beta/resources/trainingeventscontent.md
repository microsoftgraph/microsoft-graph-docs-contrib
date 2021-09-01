---
title: "trainingEventsContent resource type"
description: "**TODO: Add Description**"
author: "gopkr"
localization_priority: Normal
ms.prod: "security"
doc_type: resourcePageType
---

# trainingEventsContent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedTrainingsInfos|[assignedTrainingInfo](../resources/assignedtraininginfo.md) collection|**TODO: Add Description**|
|trainingsAssignedUserCount|Int32|**TODO: Add Description**|

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

