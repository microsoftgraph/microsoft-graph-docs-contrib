---
title: "simulationAutomationRun resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
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
|[List simulationAutomationRuns](../api/simulationautomationrun-list.md)|[simulationAutomationRun](../resources/simulationautomationrun.md) collection|Get a list of the [simulationAutomationRun](../resources/simulationautomationrun.md) objects and their properties.|
|[Create simulationAutomationRun](../api/simulationautomation-post-runs.md)|[simulationAutomationRun](../resources/simulationautomationrun.md)|Create a new [simulationAutomationRun](../resources/simulationautomationrun.md) object.|
|[Get simulationAutomationRun](../api/simulationautomationrun-get.md)|[simulationAutomationRun](../resources/simulationautomationrun.md)|Read the properties and relationships of a [simulationAutomationRun](../resources/simulationautomationrun.md) object.|
|[Update simulationAutomationRun](../api/simulationautomationrun-update.md)|[simulationAutomationRun](../resources/simulationautomationrun.md)|Update the properties of a [simulationAutomationRun](../resources/simulationautomationrun.md) object.|
|[Delete simulationAutomationRun](../api/simulationautomationrun-delete.md)|None|Deletes a [simulationAutomationRun](../resources/simulationautomationrun.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|endDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|simulationId|String|**TODO: Add Description**|
|startDateTime|DateTimeOffset|**TODO: Add Description**|
|status|[simulationAutomationRunStatus](#simulationAutomationRunStatus-values)|Status of the simulation automation run. The possible values are: `unknown`, `running`, `succeeded`, `failed`, `skipped`, `unknownFutureValue`.|

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

