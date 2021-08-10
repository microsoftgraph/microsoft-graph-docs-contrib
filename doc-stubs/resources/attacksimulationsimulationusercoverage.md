---
title: "attackSimulationSimulationUserCoverage resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# attackSimulationSimulationUserCoverage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attackSimulationUser|[attackSimulationUser](../resources/attacksimulationuser.md)|**TODO: Add Description**|
|clickCount|Int32|**TODO: Add Description**|
|compromisedCount|Int32|**TODO: Add Description**|
|latestSimulationDateTime|DateTimeOffset|**TODO: Add Description**|
|simulationCount|Int32|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.attackSimulationSimulationUserCoverage"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.attackSimulationSimulationUserCoverage",
  "simulationCount": "Integer",
  "latestSimulationDateTime": "String (timestamp)",
  "clickCount": "Integer",
  "compromisedCount": "Integer",
  "attackSimulationUser": {
    "@odata.type": "microsoft.graph.attackSimulationUser"
  }
}
```

