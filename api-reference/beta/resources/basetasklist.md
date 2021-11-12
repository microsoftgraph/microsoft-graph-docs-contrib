---
title: "baseTaskList resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# baseTaskList resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
This is an abstract type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List baseTaskLists](../api/basetasklist-list.md)|[baseTaskList](../resources/basetasklist.md) collection|Get a list of the [baseTaskList](../resources/basetasklist.md) objects and their properties.|
|[Create baseTaskList](../api/tasks-post-lists.md)|[baseTaskList](../resources/basetasklist.md)|Create a new [baseTaskList](../resources/basetasklist.md) object.|
|[Get baseTaskList](../api/basetasklist-get.md)|[baseTaskList](../resources/basetasklist.md)|Read the properties and relationships of a [baseTaskList](../resources/basetasklist.md) object.|
|[Update baseTaskList](../api/basetasklist-update.md)|[baseTaskList](../resources/basetasklist.md)|Update the properties of a [baseTaskList](../resources/basetasklist.md) object.|
|[Delete baseTaskList](../api/basetasklist-delete.md)|None|Deletes a [baseTaskList](../resources/basetasklist.md) object.|
|[delta](../api/basetasklist-delta.md)|[baseTaskList](../resources/basetasklist.md) collection|**TODO: Add Description**|
|[List extensions](../api/basetasklist-list-extensions.md)|[extension](../resources/extension.md) collection|Get the extension resources from the extensions navigation property.|
|[Create extension](../api/basetasklist-post-extensions.md)|[extension](../resources/extension.md)|Create a new extension object.|
|[List tasks](../api/basetasklist-list-tasks.md)|[baseTask](../resources/basetask.md) collection|Get the baseTask resources from the tasks navigation property.|
|[Create baseTask](../api/basetasklist-post-tasks.md)|[baseTask](../resources/basetask.md)|Create a new baseTask object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|extensions|[extension](../resources/extension.md) collection|**TODO: Add Description**|
|tasks|[baseTask](../resources/basetask.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.baseTaskList",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.baseTaskList",
  "displayName": "String",
  "id": "String (identifier)"
}
```

