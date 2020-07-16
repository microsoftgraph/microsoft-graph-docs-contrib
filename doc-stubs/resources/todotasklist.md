---
title: "taskList resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# taskList resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List TaskLists](../api/taskList-list.md)|[taskList](../resources/taskList.md) collection|Get all the [taskLists](../resources/taskList.md) in the users mailbox.|
|[Create taskList](../api/taskList-post-lists.md)|[taskList](../resources/taskList.md)|Create a new [taskList](../resources/taskList.md) object.|
|[Get taskList](../api/taskList-get.md)|[taskList](../resources/taskList.md)|Read the properties and relationships of the specified [taskList](../resources/taskList.md).|
|[Update taskList](../api/taskList-update.md)|[taskList](../resources/taskList.md)| Update the writable properties of the specified [taskList](../resources/taskList.md).|
|[Delete taskList](../api/taskList-delete.md)|None| Delete the specified [taskList](../resources/taskList.md) .|
|[List tasks](../api/taskList-list-tasks.md)|[task](../resources/task.md) collection|Get all the To Do tasks in the specified list.|
|[Create task](../api/taskList-post-tasks.md)|[task](../resources/task.md)| Create an Outlook To Do in the specified task list|

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
|tasks|[task](../resources/task.md) collection|The tasks in this task list. Read-only. Nullable.|

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

