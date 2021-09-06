---
title: "simulationEvent resource type"
description: "Represents simulation event in an attack simulation and training campaign."
author: "Gopal-MSFT"
ms.localizationpriority: Menium
ms.prod: "security"
doc_type: resourcePageType
---

# simulationEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents simulation event in an attack simulation and training campaign.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|count|Int32|Count of the simulation event.|
|eventName|String|Name of the simulation event.|

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
  "eventName": "String",
  "count": "Integer"
}
```

