---
title: "simulationAutomation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
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
|[List simulationAutomations](../api/simulationautomation-list.md)|[simulationAutomation](../resources/simulationautomation.md) collection|Get a list of the [simulationAutomation](../resources/simulationautomation.md) objects and their properties.|
|[Create simulationAutomation](../api/attacksimulationroot-post-simulationautomations.md)|[simulationAutomation](../resources/simulationautomation.md)|Create a new [simulationAutomation](../resources/simulationautomation.md) object.|
|[Get simulationAutomation](../api/simulationautomation-get.md)|[simulationAutomation](../resources/simulationautomation.md)|Read the properties and relationships of a [simulationAutomation](../resources/simulationautomation.md) object.|
|[Update simulationAutomation](../api/simulationautomation-update.md)|[simulationAutomation](../resources/simulationautomation.md)|Update the properties of a [simulationAutomation](../resources/simulationautomation.md) object.|
|[Delete simulationAutomation](../api/simulationautomation-delete.md)|None|Deletes a [simulationAutomation](../resources/simulationautomation.md) object.|
|[List runs](../api/simulationautomation-list-runs.md)|[simulationAutomationRun](../resources/simulationautomationrun.md) collection|Get the simulationAutomationRun resources from the runs navigation property.|
|[Create simulationAutomationRun](../api/simulationautomation-post-runs.md)|[simulationAutomationRun](../resources/simulationautomationrun.md)|Create a new simulationAutomationRun object.|

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
|status|simulationAutomationStatus|**TODO: Add Description**.The possible values are: `unknown`, `draft`, `notRunning`, `running`, `completed`, `unknownFutureValue`.|

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

