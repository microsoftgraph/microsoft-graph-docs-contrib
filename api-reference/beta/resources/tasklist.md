---
title: "taskList resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# taskList resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [baseTaskList](../resources/basetasklist.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List taskLists](../api/tasklist-list.md)|[taskList](../resources/tasklist.md) collection|Get a list of the [taskList](../resources/tasklist.md) objects and their properties.|
|[Get taskList](../api/tasklist-get.md)|[taskList](../resources/tasklist.md)|Read the properties and relationships of a [taskList](../resources/tasklist.md) object.|
|[Update taskList](../api/tasklist-update.md)|[taskList](../resources/tasklist.md)|Update the properties of a [taskList](../resources/tasklist.md) object.|
|[Delete taskList](../api/tasklist-delete.md)|None|Deletes a [taskList](../resources/tasklist.md) object.|
|[List extensions](../api/tasklist-list-extensions.md)|[extension](../resources/extension.md) collection|Get the extension resources from the extensions navigation property.|
|[Create extension](../api/tasklist-post-extensions.md)|[extension](../resources/extension.md)|Create a new extension object.|
|[List tasks](../api/tasklist-list-tasks.md)|[baseTask](../resources/basetask.md) collection|Get the baseTask resources from the tasks navigation property.|
|[Create baseTask](../api/tasklist-post-tasks.md)|[baseTask](../resources/basetask.md)|Create a new baseTask object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [baseTaskList](../resources/basetasklist.md).|
|id|String|**TODO: Add Description** Inherited from [baseTaskList](../resources/basetasklist.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|extensions|[extension](../resources/extension.md) collection|**TODO: Add Description** Inherited from [baseTaskList](../resources/basetasklist.md)|
|tasks|[baseTask](../resources/basetask.md) collection|**TODO: Add Description** Inherited from [baseTaskList](../resources/basetasklist.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.taskList",
  "baseType": "microsoft.graph.baseTaskList",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.taskList",
  "displayName": "String",
  "id": "String (identifier)"
}
```

