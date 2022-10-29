---
title: "task resource type"
description: "Represents a task, such as a piece of work or personal item, that can be tracked and completed."
author: "avijityadav"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: resourcePageType
---

# task resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [todo-deprecate-basetaskapi](../includes/todo-deprecate-basetaskapi.md)]

Represents a task, such as a piece of work or personal item, that can be tracked and completed. A **task** is always contained in a [base task list](basetasklist.md). 

This resource supports the following:
* Adding your data as custom properties in [open extensions](/graph/extensibility-overview).
* Subscribing to [change notifications](/graph/webhooks).
* Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions and updates.

Inherits from [baseTask](../resources/basetask.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List tasks](../api/basetasklist-list-tasks.md)|[task](../resources/task.md) collection|Get a list of the [task](../resources/task.md) objects and their properties.|
|[Get task](../api/basetask-get.md)|[task](../resources/task.md)|Read the properties and relationships of a [task](../resources/task.md) object.|
|[Update task](../api/basetask-update.md)|[task](../resources/task.md)|Update the properties of a [task](../resources/task.md) object.|
|[Delete task](../api/basetask-delete.md)|None|Deletes a [task](../resources/task.md) object.|
|[move](../api/basetask-move.md)|[baseTask](../resources/basetask.md)|Move the message to a different list.|
|[List checklistItems](../api/todotask-list-checklistitems.md)|[checklistItem](../resources/checklistitem.md) collection|Get the checklistItem resources from the checklistItems navigation property.|
|[Create checklistItem](../api/todotask-post-checklistitems.md)|[checklistItem](../resources/checklistitem.md)|Create a new checklistItem object.|
|[List linkedResources](../api/basetask-list-linkedresources.md)|[linkedResource_v2](../resources/linkedresource_v2.md) collection|Get the linkedResource_v2 resources from the linkedResources navigation property.|
|[Create linkedResource](../api/basetask-post-linkedresources.md)|[linkedResource_v2](../resources/linkedresource_v2.md)|Create a new linkedResource_v2 object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|textbody|[itemBody](../resources/itembody.md)|The task body in text format that typically contains information about the task. Inherited from [baseTask](../resources/basetask.md).|
|bodyLastModifiedDateTime|DateTimeOffset|The date and time when the task was last modified. By default, it is in UTC. You can provide a custom time zone in the request header. The property value uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2020 would look like this: '2020-01-01T00:00:00Z'. Inherited from [baseTask](../resources/basetask.md).|
|completedDateTime|DateTimeOffset|The date when the task was finished. Inherited from [baseTask](../resources/basetask.md).|
|createdDateTime|DateTimeOffset|The date and time when the task was created. By default, it is in UTC. You can provide a custom time zone in the request header. The property value uses ISO 8601 format. For example, midnight UTC on Jan 1, 2020 would look like this: '2020-01-01T00:00:00Z'. Inherited from [baseTask](../resources/basetask.md).|
|displayName|String|The name of the task. Inherited from [baseTask](../resources/basetask.md).|
|dueDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|The date in the specified time zone that the task is to be finished. Inherited from [baseTask](../resources/basetask.md).|
|id|String|Unique identifier for the task. By default, this value will not change if a task is moved from one list to another. Inherited from [baseTask](../resources/basetask.md).|
|importance|importance|The importance of the task. Possible values are: `low`, `normal`, `high`. Inherited from [baseTask](../resources/basetask.md). The possible values are: `low`, `normal`, `high`.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the task was last modified. By default, it is in UTC. You can provide a custom time zone in the request header. The property value uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2020 would look like this: '2020-01-01T00:00:00Z'. Inherited from [baseTask](../resources/basetask.md).|
|viewpoint|[taskViewpoint](../resources/taskviewpoint.md)|Properties that are personal to a user such as **reminderDateTime** and **categories**. Inherited from [baseTask](../resources/basetask.md).|
|recurrence|[patternedRecurrence](../resources/patternedrecurrence.md)|The recurrence pattern for the task. Inherited from [baseTask](../resources/basetask.md).|
|startDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|The date in the specified time zone when the task is to begin. Inherited from [baseTask](../resources/basetask.md).|
|status|taskStatus_v2|Indicates the state or progress of the task. Possible values are: `notStarted`, `inProgress`, `completed`,`unknownFutureValue`. Inherited from [baseTask](../resources/basetask.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|checklistItems|[checklistItem](../resources/checklistitem.md) collection|A collection of checklistItems linked to a task. Inherited from [baseTask](../resources/basetask.md)|
|extensions|[extension](../resources/extension.md) collection|The collection of open extensions defined for the task . Inherited from [baseTask](../resources/basetask.md)|
|linkedResources|[linkedResource_v2](../resources/linkedresource_v2.md) collection|A collection of resources linked to the task. Inherited from [baseTask](../resources/basetask.md)|
|parentList|[baseTaskList](../resources/basetasklist.md)|The list which contains the task. Inherited from [baseTask](../resources/basetask.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.task",
  "baseType": "microsoft.graph.baseTask",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.task",
  "textBody": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "bodyLastModifiedDateTime": "String (timestamp)",
  "completedDateTime": "String (timestamp)",
  "dueDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "startDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "importance": "String",
  "recurrence": {
    "@odata.type": "microsoft.graph.patternedRecurrence"
  },
  "displayName": "String",
  "status": "String",
  "viewpoint": {
    "@odata.type": "microsoft.graph.taskViewpoint"
  },
  "id": "String (identifier)"
}
```

