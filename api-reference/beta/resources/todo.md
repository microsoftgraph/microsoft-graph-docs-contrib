---
title: "todo resource type"
description: "Represents the To Do services available to a user."
author: "avijityadav"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# todo resource type

Namespace: microsoft.graph

Represents the To Do services available to a user.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List task lists](../api/todo-list-lists.md) | [todoTaskList](todotasklist.md) collection | Get all the task lists in the user's mailbox. |
|[Create task list](../api/todo-post-lists.md) | [todoTaskList](todotasklist.md) | Create a To Do task list in the user's mailbox. |

## Properties
None

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|lists|[todoTaskList](../resources/todotasklist.md) collection| The task lists in the users mailbox. |

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.todo",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.todo",
  "id": "String"
}
```



