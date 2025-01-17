---
title: "simulationEvent resource type"
description: "Represents a simulation event in an attack simulation and training campaign."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# simulationEvent resource type

Namespace: microsoft.graph

Represents a simulation event in an attack simulation and training campaign.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|count|Int32|Count of the simulation event occurrence in an attack simulation and training campaign.|
|eventName|String|Name of the simulation event in an attack simulation and training campaign.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.simulationEvent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.simulationEvent",
  "count": "Int32",
  "eventName": "String"
}
```

