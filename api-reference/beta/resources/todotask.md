---
title: "todoTask resource type"
description: "A todoTask resource tracks a work item."
author: "avijityadav"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# todoTask resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A **todoTask** represents a task, such as a piece of work or personal item, that can be tracked and completed. 

A **todoTask** is always contained in a [todoTaskList](todotasklist.md). It includes a relationship to a collection of [linkedResource](./linkedResource.md) objects, tracking one or more sources of the task.

This resource supports the following:
* Adding your data as custom properties in [open extensions](/graph/extensibility-overview).
* Subscribing to [change notifications](/graph/webhooks).
* Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions and updates.


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List tasks](../api/todotasklist-list-tasks.md)|[todoTask](todotask.md) collection|Get all the [todoTask](todotask.md) resources in the specified list.|
|[Create task](../api/todotasklist-post-tasks.md)|[todoTask](todotask.md)| Create a [todoTask](todotask.md) in the specified task list|
|[Get task](../api/todotask-get.md)|[todoTask](../resources/todotask.md)|Read the properties and relationships of a [todoTask](../resources/todotask.md) object.|
|[Update task](../api/todotask-update.md)|[todoTask](../resources/todotask.md)|Update the properties of a [todoTask](../resources/todotask.md) object.|
|[Delete task](../api/todotask-delete.md)|None|Deletes a [todoTask](../resources/todotask.md) object.|
|[List checklistItems](../api/todotask-list-checklistitems.md)|[checklistItem](../resources/checklistitem.md) collection|Get the **checklistItem** resources from the checklistItems navigation property.|
|[Create checklistItem](../api/todotask-post-checklistitems.md)|[checklistItem](../resources/checklistitem.md)|Create a new **checklistItem** object.|
|[List linkedResources](../api/todotask-list-linkedresources.md)|[linkedResource](../resources/linkedresource.md) collection|Get the linkedResources from the linkedResources navigation property.|
|[Create linkedResources](../api/todotask-post-linkedresources.md)|[linkedResource](../resources/linkedresource.md)|Create a new linkedResources object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|body|[itemBody](../resources/itembody.md)|The task body that typically contains information about the task.|
|bodyLastModifiedDateTime|DateTimeOffset|The date and time when the task body was last modified. By default, it is in UTC. You can provide a custom time zone in the request header. The property value uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2020 would look like this: '2020-01-01T00:00:00Z'.|
|categories|String collection|The categories associated with the task. Each category corresponds to the **displayName** property of an [outlookCategory](../resources/outlookcategory.md) that the user has defined.|
|completedDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|The date and time in the specified time zone that the task was finished.|
|createdDateTime|DateTimeOffset|The date and time when the task was created. By default, it is in UTC. You can provide a custom time zone in the request header. The property value uses ISO 8601 format. For example, midnight UTC on Jan 1, 2020 would look like this: '2020-01-01T00:00:00Z'.|
|dueDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|The date and time in the specified time zone that the task is to be finished.|
|hasAttachments|Boolean|Indicates whether the task has attachments.|
|id|String|Unique identifier for the task. By default, this value changes when the item is moved from one list to another.|
|importance|importance|The importance of the task. Possible values are: `low`, `normal`, `high`.|
|isReminderOn|Boolean|Set to true if an alert is set to remind the user of the task.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the task was last modified. By default, it is in UTC. You can provide a custom time zone in the request header. The property value uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2020 would look like this: '2020-01-01T00:00:00Z'.|
|recurrence|[patternedRecurrence](../resources/patternedrecurrence.md)|The recurrence pattern for the task.|
|reminderDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|The date and time in the specified time zone for a reminder alert of the task to occur.|
|startDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|The date and time in the specified time zone at which the task is scheduled to start.|
|status|taskStatus|Indicates the state or progress of the task. Possible values are: `notStarted`, `inProgress`, `completed`, `waitingOnOthers`, `deferred`.|
|title|String|A brief description of the task.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|attachments|[taskFileAttachment](../resources/taskfileattachment.md) collection| A collection of file attachments for the task.|
|checklistItems|[checklistItem](../resources/checklistitem.md) collection|A collection of smaller subtasks linked to the more complex parent task. |
|extensions|[extension](extension.md) collection| The collection of open extensions defined for the task. Nullable.|
|linkedResources|[linkedResource](../resources/linkedresource.md) collection|A collection of resources linked to the task.|


## JSON representation
The following JSON representation shows the resource type.
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
  "categories": ["string"],
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
  "startDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "status": "String",
  "title": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "bodyLastModifiedDateTime": "String (timestamp)"
}
```



