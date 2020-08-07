---
title: "todoTask resource type"
description: "A todoTask resource tracks a work item."
author: "avijityadav"
localization_priority: Normal
ms.prod: "Microsoft To Do"
doc_type: resourcePageType
---

# todoTask resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A **todoTask** resource tracks a work item. It is always contained in a [todoTaskList](todotasklist.md). It includes a relationship to a [linkedResource](./linkedResource.md) resource which represents the source of the task.

This resource supports
* Adding your data to custom properties as [open extensions](/graph/extensibility-overview).
* Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions and updates.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List tasks](../api/todotasklist-list-tasks.md)|[todoTask](../resources/todotask.md) collection|Get the todoTasks from the tasks navigation property.|
|[Create tasks](../api/todotasklist-post-tasks.md)|[todoTask](../resources/todotask.md)|Create a new tasks object.|
|[Update tasks](../api/todotasklist-update-tasks.md)|[todoTask](../resources/todotask.md)|Update the properties of a tasks object.|
|[Get tasks](../api/todotasklist-get-todotask.md)|[todoTask](../resources/todotask.md)|Read the properties and relationships of a [todoTask](../resources/todotask.md) object.|
|[Delete tasks](../api/todotasklist-delete-tasks.md)|None|Delete a [todoTask](../resources/todotask.md) object.|
|[List todoTasks](../api/todotask-list.md)|[todoTask](../resources/todotask.md) collection|Get a list of the [todoTask](../resources/todotask.md) objects and their properties.|
|[Create todoTask](../api/todotask-post-tasks.md)|[todoTask](../resources/todotask.md)|Create a new [todoTask](../resources/todotask.md) object.|
|[Get todoTask](../api/todotask-get.md)|[todoTask](../resources/todotask.md)|Read the properties and relationships of a [todoTask](../resources/todotask.md) object.|
|[Update todoTask](../api/todotask-update.md)|[todoTask](../resources/todotask.md)|Update the properties of a [todoTask](../resources/todotask.md) object.|
|[Delete todoTask](../api/todotask-delete.md)|None|Deletes a [todoTask](../resources/todotask.md) object.|
|[List linkedResources](../api/todotask-list-linkedresources.md)|[linkedResource](../resources/linkedresource.md) collection|Get the linkedResources from the linkedResources navigation property.|
|[Create linkedResources](../api/todotask-post-linkedresources.md)|[linkedResource](../resources/linkedresource.md)|Create a new linkedResources object.|
|[Get linkedResources](../api/todotask-get-linkedresource.md)|[linkedResource](../resources/linkedresource.md)|Read the properties and relationships of a [linkedResource](../resources/linkedresource.md) object.|
|[Update linkedResources](../api/todotask-update-linkedresources.md)|[linkedResource](../resources/linkedresource.md)|Update the properties of a linkedResources object.|
|[Delete linkedResources](../api/todotask-delete-linkedresources.md)|None|Delete a [linkedResource](../resources/linkedresource.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|body|[itemBody](../resources/itembody.md)|**TODO: Add Description**|
|bodyLastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|completedDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|dueDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|importance|importance|**TODO: Add Description**. Possible values are: `low`, `normal`, `high`.|
|isReminderOn|Boolean|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|recurrence|[patternedRecurrence](../resources/patternedrecurrence.md)|**TODO: Add Description**|
|reminderDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|**TODO: Add Description**|
|status|taskStatus|**TODO: Add Description**. Possible values are: `notStarted`, `inProgress`, `completed`, `waitingOnOthers`, `deferred`.|
|title|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|linkedResources|[linkedResource](../resources/linkedresource.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.todoTask",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.todoTask",
  "id": "String (identifier)",
  "body": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "completedDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "dueDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "importance": "String",
  "isReminderOn": "Boolean",
  "recurrence": {
    "@odata.type": "microsoft.graph.patternedRecurrence"
  },
  "reminderDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "status": "String",
  "title": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "bodyLastModifiedDateTime": "String (timestamp)"
}
```

