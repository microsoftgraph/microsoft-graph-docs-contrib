---
title: "tasks resource type"
description: "Represents the To Do tasks service available to a user"
author: "avijityadav"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: resourcePageType
---

# tasks resource type

Namespace: microsoft.graph

Represents the To Do tasks services available to a user.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List lists](../api/tasks-list-lists.md)|[baseTaskList](../resources/basetasklist.md) collection|Get the baseTaskList resources from the lists navigation property.|
|[Create taskList](../api/tasks-post-lists.md)|[taskList](../resources/basetasklist.md)|Create a new baseTaskList object.|

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|alltasks|[baseTask](../resources/basetask.md) collection|All tasks in the users mailbox.|
|lists|[baseTaskList](../resources/basetasklist.md) collection|The task lists in the users mailbox.|

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

