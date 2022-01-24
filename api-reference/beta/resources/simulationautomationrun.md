---
title: "simulationAutomationRun resource type"
description: "Represent run of a simulation automation of a tenant."
author: "Gopal-MSFT"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# simulationAutomationRun resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List simulationAutomationRuns](../api/simulationautomation-list-runs.md)|[simulationAutomationRun](../resources/simulationautomationrun.md) collection|Get a list of the [simulationAutomationRun](../resources/simulationautomationrun.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|endDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|simulationId|String|**TODO: Add Description**|
|startDateTime|DateTimeOffset|**TODO: Add Description**|
|status|[simulationAutomationRunStatus](#simulationautomationrunstatus-values)|Status of the simulation automation run. The possible values are: `unknown`, `running`, `succeeded`, `failed`, `skipped`, `unknownFutureValue`.|

### simulationAutomationRunStatus values

|Member|
|:---|
|unknown|
|running|
|succeeded|
|failed|
|skipped|
|unknownFutureValue|

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
  "id": "String (identifier)",
  "status": "String",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "simulationId": "String"
}
```

