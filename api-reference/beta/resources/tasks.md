---
title: "tasks resource type"
description: "Represents the To Do tasks service available to a user"
author: "avijityadav"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# tasks resource type

Namespace: microsoft.graph

Represents the To Do tasks services available to a user.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List base task lists](../api/tasks-list-lists.md)|[baseTaskList](../resources/basetasklist.md) collection|Get the baseTaskList resources from the lists navigation property.|
|[Create base task list](../api/tasks-post-lists.md)|[taskList](../resources/basetasklist.md)|Create a new baseTaskList object.|

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|alltasks|[baseTask](../resources/basetask.md) collection|All tasks in the users mailbox.|
|lists|[baseTaskList](../resources/basetasklist.md) collection|The task lists in the users mailbox.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tasks",
  "openType": false,
  "baseType": "microsoft.graph.entity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tasks",
  "id": "String (identifier)"
}
```

