---
title: "simulationEventsContent resource type"
description: "Represents simulation events in an attack simulation and training campaign."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# simulationEventsContent resource type

Namespace: microsoft.graph

Represents simulation events in an attack simulation and training campaign.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|compromisedRate|Double|Actual percentage of users who fell for the simulated attack in an attack simulation and training campaign.|
|events|[simulationEvent](../resources/simulationevent.md) collection|List of simulation events in an attack simulation and training campaign.|

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
