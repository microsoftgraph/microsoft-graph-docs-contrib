---
title: "simulationAutomationRun resource type"
description: "Represents a run of an attack simulation automation on a tenant."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# simulationAutomationRun resource type

Namespace: microsoft.graph

Represents a run of an attack simulation automation on a tenant.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List runs](../api/simulationautomation-list-runs.md)|[simulationAutomationRun](../resources/simulationautomationrun.md) collection|Get a list of the attack simulation automation runs for a tenant.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|endDateTime|DateTimeOffset|Date and time when the run ends in an attack simulation automation.|
|id|String|Unique identifier for the run of an attack simulation automation. Inherited from [entity](../resources/entity.md).|
|simulationId|String|Unique identifier for the attack simulation campaign initiated in the attack simulation automation run.|
|startDateTime|DateTimeOffset|Date and time when the run starts in an attack simulation automation.|
|status|[simulationAutomationRunStatus](#simulationautomationrunstatus-values)|Status of the attack simulation automation run. The possible values are: `unknown`, `running`, `succeeded`, `failed`, `skipped`, `unknownFutureValue`.|

### simulationAutomationRunStatus values

|Member|Description |
|:---|:---|
|unknown| The status of a simulation automation run is not defined. |
|running| The simulation automation run is running. |
|succeeded| The simulation automation run has succeeded. |
|failed| The simulation automation run has failed. |
|skipped| The simulation automation run has skipped. |
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

