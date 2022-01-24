---
title: "simulation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# simulation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List simulations](../api/simulation-list.md)|[simulation](../resources/simulation.md) collection|Get a list of the [simulation](../resources/simulation.md) objects and their properties.|
|[Create simulation](../api/attacksimulationroot-post-simulations.md)|[simulation](../resources/simulation.md)|Create a new [simulation](../resources/simulation.md) object.|
|[Get simulation](../api/simulation-get.md)|[simulation](../resources/simulation.md)|Read the properties and relationships of a [simulation](../resources/simulation.md) object.|
|[Update simulation](../api/simulation-update.md)|[simulation](../resources/simulation.md)|Update the properties of a [simulation](../resources/simulation.md) object.|
|[Delete simulation](../api/simulation-delete.md)|None|Deletes a [simulation](../resources/simulation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attackTechnique|simulationAttackTechnique|**TODO: Add Description**.The possible values are: `unknown`, `credentialHarvesting`, `attachmentMalware`, `driveByUrl`, `linkInAttachment`, `linkToMalwareFile`, `unknownFutureValue`.|
|attackType|simulationAttackType|**TODO: Add Description**.The possible values are: `unknown`, `social`, `cloud`, `endpoint`, `unknownFutureValue`.|
|automationId|String|**TODO: Add Description**|
|completionDateTime|DateTimeOffset|**TODO: Add Description**|
|createdBy|[emailIdentity](../resources/emailidentity.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isAutomated|Boolean|**TODO: Add Description**|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|launchDateTime|DateTimeOffset|**TODO: Add Description**|
|payloadDeliveryPlatform|payloadDeliveryPlatform|**TODO: Add Description**.The possible values are: `unknown`, `sms`, `email`, `teams`, `unknownFutureValue`.|
|report|[simulationReport](../resources/simulationreport.md)|**TODO: Add Description**|
|status|simulationStatus|**TODO: Add Description**.The possible values are: `unknown`, `draft`, `running`, `scheduled`, `succeeded`, `failed`, `cancelled`, `excluded`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.simulation",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.simulation",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "attackType": "String",
  "payloadDeliveryPlatform": "String",
  "attackTechnique": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "launchDateTime": "String (timestamp)",
  "completionDateTime": "String (timestamp)",
  "isAutomated": "Boolean",
  "automationId": "String",
  "report": {
    "@odata.type": "microsoft.graph.simulationReport"
  }
}
```

