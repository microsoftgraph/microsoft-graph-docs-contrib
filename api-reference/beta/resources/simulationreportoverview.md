---
title: "simulationReportOverview resource type"
description: "Represents overview report of a attack simulation and training campaign."
author: "gopkr"
localization_priority: Normal
ms.prod: "security"
doc_type: resourcePageType
---

# simulationReportOverview resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents overview report of a attack simulation and training campaign.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|recommendedActions|[recommendedAction](../resources/recommendedaction.md) collection|List of recommended actions for a tenant to improve its security posture based on the simulation.|
|resolvedTargetsCount|Int32|Count of valid users in the simulation.|
|simulationEventsContent|[simulationEventsContent](../resources/simulationeventscontent.md)|List of simulation events in the simulation.|
|trainingEventsContent|[trainingEventsContent](../resources/trainingeventscontent.md)|List of training events in the simulation.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.simulationReportOverview"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.simulationReportOverview",
  "resolvedTargetsCount": "Integer",
  "simulationEventsContent": {
    "@odata.type": "microsoft.graph.simulationEventsContent"
  },
  "trainingEventsContent": {
    "@odata.type": "microsoft.graph.trainingEventsContent"
  },
  "recommendedActions": [
    {
      "@odata.type": "microsoft.graph.recommendedAction"
    }
  ]
}
```

