---
title: "simulationAutomation resource type"
description: "Represent simulation automation of a tenant."
author: "Gopal-MSFT"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# simulationAutomation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List simulationAutomations](../api/attacksimulationroot-list-simulationautomations.md)|[simulationAutomation](../resources/simulationautomation.md) collection|Get a list of the [simulationAutomation](../resources/simulationautomation.md) objects and their properties.|
|[List runs](../api/simulationautomation-list-runs.md)|[simulationAutomationRun](../resources/simulationautomationrun.md) collection|Get the simulationAutomationRun resources from the runs navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[emailIdentity](../resources/emailidentity.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|lastRunDateTime|DateTimeOffset|**TODO: Add Description**|
|nextRunDateTime|DateTimeOffset|**TODO: Add Description**|
|status|[simulationAutomationStatus](#simulationautomationstatus-values)|Status of the simulation automation. The possible values are: `unknown`, `draft`, `notRunning`, `running`, `completed`, `unknownFutureValue`.|

### simulationAutomationStatus values

|Member|
|:---|
|unknown|
|draft|
|notRunning|
|running|
|completed|
|unknownFutureValue|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|runs|[simulationAutomationRun](../resources/simulationautomationrun.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.simulationAutomation",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.simulationAutomation",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "lastRunDateTime": "String (timestamp)",
  "nextRunDateTime": "String (timestamp)"
}
```

