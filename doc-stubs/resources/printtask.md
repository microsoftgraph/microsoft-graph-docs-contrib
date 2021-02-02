---
title: "printTask resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# printTask resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List printTasks](../api/printtask-list.md)|[printTask](../resources/printtask.md) collection|Get a list of the [printTask](../resources/printtask.md) objects and their properties.|
|[Create printTask](../api/printtask-create.md)|[printTask](../resources/printtask.md)|Create a new [printTask](../resources/printtask.md) object.|
|[Get printTask](../api/printtask-get.md)|[printTask](../resources/printtask.md)|Read the properties and relationships of a [printTask](../resources/printtask.md) object.|
|[Update printTask](../api/printtask-update.md)|[printTask](../resources/printtask.md)|Update the properties of a [printTask](../resources/printtask.md) object.|
|[Delete printTask](../api/printtask-delete.md)|None|Deletes a [printTask](../resources/printtask.md) object.|
|[List printTaskDefinition](../api/printtask-list-definition.md)|[printTaskDefinition](../resources/printtaskdefinition.md) collection|Get the printTaskDefinition resources from the definition navigation property.|
|[Add printTaskDefinition](../api/printtask-post-definition.md)|[printTaskDefinition](../resources/printtaskdefinition.md)|Add definition by posting to the definition collection.|
|[List printTaskTrigger](../api/printtask-list-trigger.md)|[printTaskTrigger](../resources/printtasktrigger.md) collection|Get the printTaskTrigger resources from the trigger navigation property.|
|[Add printTaskTrigger](../api/printtask-post-trigger.md)|[printTaskTrigger](../resources/printtasktrigger.md)|Add trigger by posting to the trigger collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|parentUrl|String|**TODO: Add Description**|
|status|[printTaskStatus](../resources/printtaskstatus.md)|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|definition|[printTaskDefinition](../resources/printtaskdefinition.md)|**TODO: Add Description**|
|trigger|[printTaskTrigger](../resources/printtasktrigger.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printTask",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printTask",
  "id": "String (identifier)",
  "status": {
    "@odata.type": "microsoft.graph.printTaskStatus"
  },
  "parentUrl": "String"
}
```

