---
title: "simulationEventsContent resource type"
description: "Represents list of simulation events in an attack simulation and training campaign."
author: "gopkr"
localization_priority: Normal
ms.prod: "security"
doc_type: resourcePageType
---

# simulationEventsContent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents list of simulation events in an attack simulation and training campaign.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|compromisedRate|Double|Compromised rate of the simulation.|
|events|[simulationEvent](../resources/simulationevent.md) collection|List of simulation events.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.simulationEventsContent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.simulationEventsContent",
  "compromisedRate": "Double",
  "events": [
    {
      "@odata.type": "microsoft.graph.simulationEvent"
    }
  ]
}
```

