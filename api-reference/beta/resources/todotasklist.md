---
title: "todoTaskList resource type"
description: "A todoTaskList resource is a collection of todoTasks resource."
author: "avijityadav"
localization_priority: Normal
ms.prod: "Microsoft To Do"
doc_type: resourcePageType
---

# todoTaskList resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A **todoTaskList** resource is a collection of [todoTasks](./todotask.md) resource. 

In To Do, there are built-in task lists such as **Flagged emails** and **Tasks** which cannot be renamed or deleted.  You can, however, create additional task lists.

This resource supports
* Adding your data to custom properties as [open extensions](/graph/extensibility-overview)
* Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions and updates.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List todoTaskLists](../api/todotasklist-list.md)|[todoTaskList](todotasklist.md) collection|Get all the [todoTaskLists](todotasklist.md) in the users mailbox.|
|[Create todoTaskList](../api/todotasklist-post-lists.md)|[todoTaskList](todotasklist.md)|Create a new [todoTaskList](todotasklist.md) object.|
|[Get todoTaskList](../api/todotasklist-get.md)|[todoTaskList](todotasklist.md)|Read the properties and relationships of the specified [todoTaskList](todotasklist.md).|
|[Update todoTaskList](../api/todotasklist-update.md)|[todoTaskList](todotasklist.md)| Update the writable properties of the specified [todoTaskList](todotasklist.md).|
|[Delete todoTaskList](../api/todotasklist-delete.md)|None| Delete the specified [todoTaskList](todotasklist.md) .|
|[List todoTasks](../api/todotasklist-list-tasks.md)|[todoTask](todotask.md) collection|Get all the [todoTasks](todotask.md) in the specified list.|
|[Create todoTask](../api/todotasklist-post-tasks.md)|[todoTask](todotask.md)| Create a [todoTask](todotask.md) in the specified task list|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the task list.|
|id|String| The identifier of the task list, unique in the user's mailbox. Read-only. Inherited from [entity](entity.md)|
|isOwner|Boolean| True if the user is owner of the given task list.|
|isShared|Boolean| True if the task list is shared with other users|
|wellknownListName|wellknownListName| Property indicating the well known list name if the given list is a well know list. Possible values are: `none`, `defaultList`, `flaggedEmails`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|tasks|[todoTask](todotask.md) collection|The tasks in this task list. Read-only. Nullable.|

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

