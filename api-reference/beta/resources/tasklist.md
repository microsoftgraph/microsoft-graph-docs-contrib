---
title: "taskList resource type"
description: "Represents a list created by a user in Microsoft To Do that contains one or more Task resources."
author: "avijityadav"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# taskList resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [todo-deprecate-basetaskapi](../includes/todo-deprecate-basetaskapi.md)]

Represents a list created by a user in Microsoft To Do that contains one or more [task](./task.md) resources. 

This resource supports the following:
* Adding your data to custom properties as [open extensions](/graph/extensibility-overview)
* Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions and updates.

The **taskList** resource inherits from [baseTaskList](../resources/basetasklist.md).
Its contents, of the **task** resource type, inherit from [baseTask](../resources/basetask.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List base task lists](../api/tasks-list-lists.md)|[taskList](../resources/tasklist.md) collection|Get a list of the [taskList](../resources/tasklist.md) objects and their properties.|
|[Get base task list](../api/basetasklist-get.md)|[taskList](../resources/tasklist.md)|Read the properties and relationships of a [taskList](../resources/tasklist.md) object.|
|[Update base task list](../api/tasklist-update.md)|[taskList](../resources/tasklist.md)|Update the properties of a [taskList](../resources/tasklist.md) object.|
|[Delete base task list](../api/tasklist-delete.md)|None|Deletes a [taskList](../resources/tasklist.md) object.|
|[List base tasks](../api/basetasklist-list-tasks.md)|[baseTask](../resources/basetask.md) collection|Get the baseTask resources from the tasks navigation property.|
|[Create base task](../api/basetasklist-post-tasks.md)|[baseTask](../resources/basetask.md)|Create a new baseTask object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the task list. Inherited from [baseTaskList](../resources/basetasklist.md).|
|id|String|The identifier of the task list, unique in the user's mailbox. Read-only. Inherited from [baseTaskList](../resources/basetasklist.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|extensions|[extension](../resources/extension.md) collection|The collection of open extensions defined for the task list. Nullable. Inherited from [baseTaskList](../resources/basetasklist.md)|
|tasks|[baseTask](../resources/basetask.md) collection|The tasks in this task list. Read-only. Nullable. Inherited from [baseTaskList](../resources/basetasklist.md)|

## JSON representation
The following JSON representation shows the resource type.
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

