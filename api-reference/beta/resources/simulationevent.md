---
title: "simulationEvent resource type"
description: "Represents a simulation event in an attack simulation and training campaign."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# simulationEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a simulation event in an attack simulation and training campaign.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|count|Int32|Count of the simulation event occurrence in an attack simulation and training campaign.|
|eventName|String|Name of the simulation event in an attack simulation and training campaign.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

