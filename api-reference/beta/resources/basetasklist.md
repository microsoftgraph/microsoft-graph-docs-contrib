---
title: "baseTaskList resource type"
description: "Contains one or more task resources."
author: "avijityadav"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# baseTaskList resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [todo-deprecate-basetaskapi](../includes/todo-deprecate-basetaskapi.md)]

Contains one or more [baseTask](./basetask.md) resources.

This is the base resource for the following derived types of task lists.
* Built-in task list ([wellKnownTaskList](../resources/wellknowntasklist.md) resource)
* User created task list ([taskList](../resources/tasklist.md) resource) 

This is an abstract type.

## Methods
The following methods apply to any of the derived types of **baseTaskList** (**wellKnownTaskList**,**taskList**)

|Method|Return type|Description|
|:---|:---|:---|
|[List base task lists](../api/tasks-list-lists.md)|[baseTaskList](../resources/basetasklist.md) collection|Get a list of the [baseTaskList](../resources/basetasklist.md) objects and their properties.|
|[Get base task list](../api/basetasklist-get.md)|[baseTaskList](../resources/basetasklist.md)|Read the properties and relationships of a [baseTaskList](../resources/basetasklist.md) object.|
|[List base tasks](../api/basetasklist-list-tasks.md)|[baseTask](../resources/basetask.md) collection|Get the baseTask resources from the tasks navigation property.|
|[Create base task](../api/basetasklist-post-tasks.md)|[baseTask](../resources/basetask.md)|Create a new baseTask object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the task list.|
|id|String|The identifier of the task list, unique in the user's mailbox. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|extensions|[extension](../resources/extension.md) collection|The collection of open extensions defined for the task list. Nullable.|
|tasks|[baseTask](../resources/basetask.md) collection|The tasks in this task list. Read-only. Nullable.|

## JSON representation
The following JSON representation shows the resource type.
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

