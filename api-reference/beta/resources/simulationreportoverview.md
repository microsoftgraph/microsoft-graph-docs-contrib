---
title: "simulationReportOverview resource type"
description: "Represents an overview report of an attack simulation and training campaign."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# simulationReportOverview resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an overview report of an attack simulation and training campaign.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|recommendedActions|[recommendedAction](../resources/recommendedaction.md) collection|List of recommended actions for a tenant to improve its security posture based on the attack simulation and training campaign attack type.|
|resolvedTargetsCount|Int32|Number of valid users in the attack simulation and training campaign.|
|simulationEventsContent|[simulationEventsContent](../resources/simulationeventscontent.md)|Summary of simulation events in the attack simulation and training campaign.|
|trainingEventsContent|[trainingEventsContent](../resources/trainingeventscontent.md)|Summary of assigned trainings in the attack simulation and training campaign.|

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
  "recommendedActions": [
    {
      "@odata.type": "microsoft.graph.recommendedAction"
    }
  ],
  "resolvedTargetsCount": "Int32",
  "simulationEventsContent": {
    "@odata.type": "microsoft.graph.simulationEventsContent"
  },
  "trainingEventsContent": {
    "@odata.type": "microsoft.graph.trainingEventsContent"
  }
}
```

