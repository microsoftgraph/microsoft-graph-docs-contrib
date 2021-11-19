---
title: "baseTaskList resource type"
description: "A list containing one or more tasks"
author: "avijityadav"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: resourcePageType
---

# baseTaskList resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A list that contains one or more [Task](./basetask.md) resources. 
**baseTaskList** is the base resource for following derived types of attachments
* Built-in task list ([wellKnownTaskList](../resources/wellknowntasklist.md) resource)
* User created task list ([taskList](../resources/tasklist.md) resource) 

This is an abstract type.

## Methods
The following method apply to any of the derived types of **baseTaskList** (**wellKnownTaskList**,**TaskList**)

|Method|Return type|Description|
|:---|:---|:---|
|[List baseTaskLists](../api/tasks-list-lists.md)|[baseTaskList](../resources/basetasklist.md) collection|Get a list of the [baseTaskList](../resources/basetasklist.md) objects and their properties.|
|[Get baseTaskList](../api/basetasklist-get.md)|[baseTaskList](../resources/basetasklist.md)|Read the properties and relationships of a [baseTaskList](../resources/basetasklist.md) object.|
|[List tasks](../api/basetasklist-list-tasks.md)|[baseTask](../resources/basetask.md) collection|Get the baseTask resources from the tasks navigation property.|
|[Create baseTask](../api/basetasklist-post-tasks.md)|[baseTask](../resources/basetask.md)|Create a new baseTask object.|

The following method apply to ***TaskList** type of derived task list.

|Method|Return type|Description|
|:---|:---|:---|
|[Create baseTaskList](../api/tasks-post-lists.md)|[baseTaskList](../resources/basetasklist.md)|Create a new [baseTaskList](../resources/basetasklist.md) object.|
|[Update baseTaskList](../api/basetasklist-update.md)|[baseTaskList](../resources/basetasklist.md)|Update the properties of a [baseTaskList](../resources/basetasklist.md) object.|
|[Delete baseTaskList](../api/basetasklist-delete.md)|None|Deletes a [baseTaskList](../resources/basetasklist.md) object.|

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

