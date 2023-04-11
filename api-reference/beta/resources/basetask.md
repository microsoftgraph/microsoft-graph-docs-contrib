---
title: "baseTask resource type"
description: "Represents a task, such as a piece of work or personal item, that can be tracked and completed"
author: "avijityadav"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: resourcePageType
---

# baseTask resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [todo-deprecate-basetaskapi](../includes/todo-deprecate-basetaskapi.md)]

An abstract type that represents a task, such as a piece of work or personal item, that can be tracked and completed.

This is a base type inherited by the [task](task.md) resource.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List baseTasks](../api/basetasklist-list-tasks.md)|[baseTask](../resources/basetask.md) collection|Get a list of the [baseTask](../resources/basetask.md) objects and their properties.|
|[Create baseTask](../api/basetasklist-post-tasks.md)|[baseTask](../resources/basetask.md)|Create a new [baseTask](../resources/basetask.md) object.|
|[Get baseTask](../api/basetask-get.md)|[baseTask](../resources/basetask.md)|Read the properties and relationships of a [baseTask](../resources/basetask.md) object.|
|[Update baseTask](../api/basetask-update.md)|[baseTask](../resources/basetask.md)|Update the properties of a [baseTask](../resources/basetask.md) object.|
|[Delete baseTask](../api/basetask-delete.md)|None|Deletes a [baseTask](../resources/basetask.md) object.|
|[move](../api/basetask-move.md)|[baseTask](../resources/basetask.md)|Move the message to a different list.|
|[delta](../api/basetask-delta.md)|[baseTask](../resources/basetask.md) collection|Get a set of **baseTask** objects that have been added, deleted, or updated in a specified list.|
|[List checklistItems](../api/todotask-list-checklistitems.md)|[checklistItem](../resources/checklistitem.md) collection|Get the **checklistItem** resources from the checklistItems navigation property.|
|[Create checklistItem](../api/todotask-post-checklistitems.md)|[checklistItem](../resources/checklistitem.md)|Create a new **checklistItem** object.|
|[List linkedResources](../api/basetask-list-linkedresources.md)|[linkedResource_v2](../resources/linkedresource_v2.md) collection|Get the **linkedResource_v2** resources from the linkedResources navigation property.|
|[Create linkedResource_v2](../api/basetask-post-linkedresources.md)|[linkedResource_v2](../resources/linkedresource_v2.md)|Create a new **linkedResource_v2** object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|textBody|String|The task body in text format that typically contains information about the task. |
|bodyLastModifiedDateTime|DateTimeOffset|The date and time when the task was last modified. By default, it is in UTC. You can provide a custom time zone in the request header. The property value uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2020 would look like this: '2020-01-01T00:00:00Z'. |
|completedDateTime|DateTimeOffset|The date when the task was finished. |
|createdDateTime|DateTimeOffset|The date and time when the task was created. By default, it is in UTC. You can provide a custom time zone in the request header. The property value uses ISO 8601 format. For example, midnight UTC on Jan 1, 2020 would look like this: '2020-01-01T00:00:00Z'. |
|displayName|String|The name of the task. |
|dueDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|The date in the specified time zone that the task is to be finished. |
|id|String|Unique identifier for the task. By default, this value will not change if a task is moved from one list to another. |
|importance|importance|The importance of the task. Possible values are: `low`, `normal`, `high`.  The possible values are: `low`, `normal`, `high`.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the task was last modified. By default, it is in UTC. You can provide a custom time zone in the request header. The property value uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2020 would look like this: '2020-01-01T00:00:00Z'. |
|viewpoint|[taskViewpoint](../resources/taskviewpoint.md)|Properties that are personal to a user such as **reminderDateTime** and **categories**. |
|recurrence|[patternedRecurrence](../resources/patternedrecurrence.md)|The recurrence pattern for the task. |
|startDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|The date in the specified time zone when the task is to begin. |
|status|taskStatus_v2|Indicates the state or progress of the task. Possible values are: `notStarted`, `inProgress`, `completed`,`unknownFutureValue`. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|checklistItems|[checklistItem](../resources/checklistitem.md) collection|A collection of smaller subtasks linked to the more complex parent task. |
|extensions|[extension](../resources/extension.md) collection|The collection of open extensions defined for the task . |
|linkedResources|[linkedResource_v2](../resources/linkedresource_v2.md) collection|A collection of resources linked to the task. |
|parentList|[baseTaskList](../resources/basetasklist.md)|The list which contains the task. |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.baseTask",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.baseTask",
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

