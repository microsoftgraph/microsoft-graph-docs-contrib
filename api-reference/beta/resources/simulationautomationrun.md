---
title: "simulationAutomationRun resource type"
description: "Represents a run of an attack simulation automation of a tenant."
author: "Gopal-MSFT"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# simulationAutomationRun resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a run of an attack simulation automation of a tenant.


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List runs](../api/simulationautomation-list-runs.md)|[simulationAutomationRun](../resources/simulationautomationrun.md) collection|Get a list of the [simulationAutomationRun](../resources/simulationautomationrun.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|endDateTime|DateTimeOffset|Date and time when the run ends in an attack simulation automation.|
|id|String|Unique identifier for the run of an attack simulation automation.|
|simulationId|String|Unique identifier for the attack simulation campaign initiated in the attack simulation automation run.|
|startDateTime|DateTimeOffset|Date and time when the run starts in an attack simulation automation.|
|status|[simulationAutomationRunStatus](#simulationautomationrunstatus-values)|Status of the run of an attack simulation automation. The possible values are: `unknown`, `running`, `succeeded`, `failed`, `skipped`, `unknownFutureValue`.|

### simulationAutomationRunStatus values

|Member|Description |
|:---|:---|
|unknown| Simulation automation run status is not defined. |
|running| The run of a simulation automation is running. |
|succeeded| The run of a simulation automation has succeeded. |
|failed| The run of a simulation automation has failed. |
|skipped| The run of a simulation automation has skipped. |
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.simulationAutomationRun",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.simulationAutomationRun",
  "endDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "simulationId": "String",
  "startDateTime": "String (timestamp)",
  "status": "String"
}
```

