---
title: "todoTaskList resource type"
description: "A list that contains To Do tasks (collection of todoTasks objects)."
author: "avijityadav"
localization_priority: Normal
ms.prod: "Microsoft To Do"
doc_type: resourcePageType
---

# todoTaskList resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A list that contains To Do tasks (collection of [todoTasks](./todotask.md) objects). 

In To Do, There are some default Task lists like Flagged emails and Tasks.  You cannot rename or delete these task lists but you can create additional task lists.

This resource supports
* Adding your data to custom properties as [open extensions](/graph/extensibility-overview)
* Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions and updates.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List TaskLists](../api/taskList-list.md)|[taskList](../resources/taskList.md) collection|Get all the [taskLists](../resources/taskList.md) in the users mailbox.|
|[Create taskList](../api/taskList-post-lists.md)|[taskList](../resources/taskList.md)|Create a new [taskList](../resources/taskList.md) object.|
|[Get taskList](../api/taskList-get.md)|[taskList](../resources/taskList.md)|Read the properties and relationships of the specified [taskList](../resources/taskList.md).|
|[Update taskList](../api/taskList-update.md)|[taskList](../resources/taskList.md)| Update the writable properties of the specified [taskList](../resources/taskList.md).|
|[Delete taskList](../api/taskList-delete.md)|None| Delete the specified [taskList](../resources/taskList.md) .|
|[List tasks](../api/taskList-list-tasks.md)|[todoTask](../resources/todotask.md) collection|Get all the To Do tasks in the specified list.|
|[Create task](../api/taskList-post-tasks.md)|[todoTask](../resources/todotask.md)| Create an Outlook To Do in the specified task list|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the task list.|
|id|String| The identifier of the task list, unique in the user's mailbox. Read-only. Inherited from [entity](../resources/entity.md)|
|isOwner|Boolean| True if the user is owner of the given task list.|
|isShared|Boolean| True if the task list is shared with other users|
|wellknownListName|wellknownListName| Property indicating the well known list name if the given list is a well know list. Possible values are: `none`, `defaultList`, `flaggedEmails`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|tasks|[todoTask](../resources/todotask.md) collection|The tasks in this task list. Read-only. Nullable.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.taskList",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.taskList",
  "id": "String (identifier)",
  "displayName": "String",
  "isOwner": "Boolean",
  "isShared": "Boolean",
  "wellknownListName": "String"
}
```

