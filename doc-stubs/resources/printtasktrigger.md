---
title: "printTaskTrigger resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# printTaskTrigger resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List printTaskTriggers](../api/printtasktrigger-list.md)|[printTaskTrigger](../resources/printtasktrigger.md) collection|Get a list of the [printTaskTrigger](../resources/printtasktrigger.md) objects and their properties.|
|[Create printTaskTrigger](../api/printtasktrigger-create.md)|[printTaskTrigger](../resources/printtasktrigger.md)|Create a new [printTaskTrigger](../resources/printtasktrigger.md) object.|
|[Get printTaskTrigger](../api/printtasktrigger-get.md)|[printTaskTrigger](../resources/printtasktrigger.md)|Read the properties and relationships of a [printTaskTrigger](../resources/printtasktrigger.md) object.|
|[Update printTaskTrigger](../api/printtasktrigger-update.md)|[printTaskTrigger](../resources/printtasktrigger.md)|Update the properties of a [printTaskTrigger](../resources/printtasktrigger.md) object.|
|[Delete printTaskTrigger](../api/printtasktrigger-delete.md)|None|Deletes a [printTaskTrigger](../resources/printtasktrigger.md) object.|
|[List printTaskDefinition](../api/printtasktrigger-list-definition.md)|[printTaskDefinition](../resources/printtaskdefinition.md) collection|Get the printTaskDefinition resources from the definition navigation property.|
|[Add printTaskDefinition](../api/printtasktrigger-post-definition.md)|[printTaskDefinition](../resources/printtaskdefinition.md)|Add definition by posting to the definition collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|event|printEvent|**TODO: Add Description**. Possible values are: `jobStarted`, `unknownFutureValue`.|
|id|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|definition|[printTaskDefinition](../resources/printtaskdefinition.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printTaskTrigger",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printTaskTrigger",
  "id": "String (identifier)",
  "event": "String"
}
```

