---
title: "wellKnownTaskList resource type"
description: "A built-in task list that can't be renamed or deleted."
author: "avijityadav"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# wellKnownTaskList resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [todo-deprecate-basetaskapi](../includes/todo-deprecate-basetaskapi.md)]

A built-in task list that can't be renamed or deleted. To Do has two built-in lists, **flagged email** and **tasks** list.

This resource supports adding your data to custom properties as [open extensions](/graph/extensibility-overview)

Inherits from [baseTaskList](../resources/basetasklist.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List base task lists](../api/tasks-list-lists.md)|[wellKnownTaskList](../resources/wellknowntasklist.md) collection|Get a list of the [wellKnownTaskList](../resources/wellknowntasklist.md) objects and their properties.|
|[Get base task list](../api/basetasklist-get.md)|[wellKnownTaskList](../resources/wellknowntasklist.md)|Read the properties and relationships of a [wellKnownTaskList](../resources/wellknowntasklist.md) object.|
|[List base tasks](../api/basetasklist-list-tasks.md)|[baseTask](../resources/basetask.md) collection|Get the baseTask resources from the tasks navigation property.|
|[Create base task](../api/basetasklist-post-tasks.md)|[baseTask](../resources/basetask.md)|Create a new baseTask object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the task list. Inherited from [baseTaskList](../resources/basetasklist.md).|
|id|String|The identifier of the task list, unique in the user's mailbox. Read-only. Inherited from [baseTaskList](../resources/basetasklist.md).|
|wellKnownListName|wellKnownListName_v2|Property indicating the list name if the given list is a well-known list. The possible values are: `none`, `defaultList`, `flaggedEmails`, `unknownFutureValue`.|

### wellknownListName values
|Member|Description|
|:---|:---|
|none| User created list.|
|defaultList| Built-in **tasks** list.|
|flaggedEmails| Built-in **flagged email** list. Tasks from flagged emails are present in this list.|
|unknownFutureValue| Evolvable enumeration sentinel value. Don't use.|

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
  "@odata.type": "microsoft.graph.wellKnownTaskList",
  "baseType": "microsoft.graph.baseTaskList",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.wellKnownTaskList",
  "displayName": "String",
  "id": "String (identifier)",
  "wellKnownListName": "String"
}
```

