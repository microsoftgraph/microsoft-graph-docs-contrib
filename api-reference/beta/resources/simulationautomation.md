---
title: "simulationAutomation resource type"
description: "Represent attack simulation automation of a tenant."
author: "Gopal-MSFT"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# simulationAutomation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represent attack simulation automation of a tenant.


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List simulationAutomations](../api/attacksimulationroot-list-simulationautomations.md)|[simulationAutomation](../resources/simulationautomation.md) collection|Get a list of the [simulationAutomation](../resources/simulationautomation.md) objects and their properties.|
|[List runs](../api/simulationautomation-list-runs.md)|[simulationAutomationRun](../resources/simulationautomationrun.md) collection|Get the simulationAutomationRun resources from the runs navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[emailIdentity](../resources/emailidentity.md)|Identity of the user who created the attack simulation automation.|
|createdDateTime|DateTimeOffset|Date and time of creation of the attack simulation automation.|
|description|String|Description of the attack simulation automation.|
|displayName|String|Display name of the attack simulation automation. Supports `$filter` and `$orderby`.|
|id|String|Id of the attack simulation automation.|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|Identity of the user who most recently modified the attack simulation automation.|
|lastModifiedDateTime|DateTimeOffset|Date and time of the most recent modification of the attack simulation automation.|
|lastRunDateTime|DateTimeOffset|Date and time of the latest run of the attack simulation automation.|
|nextRunDateTime|DateTimeOffset|Date and time of the upcoming run of the attack simulation automation.|
|status|[simulationAutomationStatus](#simulationautomationstatus-values)|Status of the attack simulation automation. Supports `$filter` and `$orderby`. The possible values are: `unknown`, `draft`, `notRunning`, `running`, `completed`, `unknownFutureValue`.|

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

