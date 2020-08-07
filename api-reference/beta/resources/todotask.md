---
title: "todoTask resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "Microsoft To Do"
doc_type: resourcePageType
---

# todoTask resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A todoTask resource is used to track a work item. A todoTask is always contained in a todoTaskList amd defaults to Tasks list. A todoTask object also have [linkedResource](./linkedResource.md) object which can contain the source of task.

This resource supports
* Adding your data to custom properties as [open extensions](/graph/extensibility-overview)
* Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions and updates.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get todoTask](../api/todotask-get.md)|[todoTask](../resources/todotask.md)|Read the properties and relationships of a [todoTask](../resources/todotask.md) object.|
|[Update todoTask](../api/todotask-update.md)|[todoTask](../resources/todotask.md)|Update the properties of a [todoTask](../resources/todotask.md) object.|
|[Delete todoTask](../api/todotask-delete.md)|None|Deletes a [todoTask](../resources/todotask.md) object.|
|[List linkedResources](../api/todotask-list-linkedresources.md)|[linkedResource](../resources/linkedresource.md) collection|Get the linkedResources from the linkedResources navigation property.|
|[Create linkedResources](../api/todotask-post-linkedresources.md)|[linkedResource](../resources/linkedresource.md)|Create a new linkedResources object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|body|[itemBody](../resources/itembody.md)|The task body that typically contains information about the task.|
|bodyLastModifiedDateTime|DateTimeOffset|The date and time when the task was last modified. By default, it is in UTC. You can provide a custom time zone in the request header. The property value uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2020 would look like this: '2020-01-01T00:00:00Z'.|
|completedDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|The date in the specified time zone that the task was finished.|
|createdDateTime|DateTimeOffset|The date and time when the task was created. By default, it is in UTC. You can provide a custom time zone in the request header. The property value uses ISO 8601 format. For example, midnight UTC on Jan 1, 2020 would look like this: '2020-01-01T00:00:00Z'.|
|dueDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|The date in the specified time zone that the task is to be finished.|
|id|String|Unique identifier for the task. By default, this value changes when the item is moved from one list to another.|
|importance|importance|The importance of the task. Possible values are: `low`, `normal`, `high`.|
|isReminderOn|Boolean|Set to true if an alert is set to remind the user of the task.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the task was last modified. By default, it is in UTC. You can provide a custom time zone in the request header. The property value uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2020 would look like this: '2020-01-01T00:00:00Z'.|
|recurrence|[patternedRecurrence](../resources/patternedrecurrence.md)|The recurrence pattern for the task.|
|reminderDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|The date and time for a reminder alert of the task to occur.|
|status|taskStatus|Indicates the state or progress of the task. Possible values are: `notStarted`, `inProgress`, `completed`, `waitingOnOthers`, `deferred`.|
|title|String|A brief description of the task.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|linkedResources|[linkedResource](../resources/linkedresource.md) collection|Resource linked to the task|

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

