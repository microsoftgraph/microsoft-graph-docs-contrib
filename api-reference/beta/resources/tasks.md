---
title: "tasks resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# tasks resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List tasks](../api/tasks-list.md)|[tasks](../resources/tasks.md) collection|Get a list of the [tasks](../resources/tasks.md) objects and their properties.|
|[Create tasks](../api/user-post-tasks.md)|[tasks](../resources/tasks.md)|Create a new [tasks](../resources/tasks.md) object.|
|[Get tasks](../api/tasks-get.md)|[tasks](../resources/tasks.md)|Read the properties and relationships of a [tasks](../resources/tasks.md) object.|
|[Update tasks](../api/tasks-update.md)|[tasks](../resources/tasks.md)|Update the properties of a [tasks](../resources/tasks.md) object.|
|[Delete tasks](../api/tasks-delete.md)|None|Deletes a [tasks](../resources/tasks.md) object.|
|[List alltasks](../api/tasks-list-alltasks.md)|[baseTask](../resources/basetask.md) collection|Get the baseTask resources from the alltasks navigation property.|
|[Create baseTask](../api/tasks-post-alltasks.md)|[baseTask](../resources/basetask.md)|Create a new baseTask object.|
|[List lists](../api/tasks-list-lists.md)|[baseTaskList](../resources/basetasklist.md) collection|Get the baseTaskList resources from the lists navigation property.|
|[Create baseTaskList](../api/tasks-post-lists.md)|[baseTaskList](../resources/basetasklist.md)|Create a new baseTaskList object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|alltasks|[baseTask](../resources/basetask.md) collection|**TODO: Add Description**|
|lists|[baseTaskList](../resources/basetasklist.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tasks",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tasks",
  "id": "String (identifier)"
}
```

