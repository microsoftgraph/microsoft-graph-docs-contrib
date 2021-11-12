---
title: "task resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# task resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [baseTask](../resources/basetask.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List tasks](../api/task-list.md)|[task](../resources/task.md) collection|Get a list of the [task](../resources/task.md) objects and their properties.|
|[Get task](../api/task-get.md)|[task](../resources/task.md)|Read the properties and relationships of a [task](../resources/task.md) object.|
|[Update task](../api/task-update.md)|[task](../resources/task.md)|Update the properties of a [task](../resources/task.md) object.|
|[Delete task](../api/task-delete.md)|None|Deletes a [task](../resources/task.md) object.|
|[move](../api/task-move.md)|[baseTask](../resources/basetask.md)|**TODO: Add Description**|
|[List checklistItems](../api/task-list-checklistitems.md)|[checklistItem](../resources/checklistitem.md) collection|Get the checklistItem resources from the checklistItems navigation property.|
|[Create checklistItem](../api/task-post-checklistitems.md)|[checklistItem](../resources/checklistitem.md)|Create a new checklistItem object.|
|[List extensions](../api/task-list-extensions.md)|[extension](../resources/extension.md) collection|Get the extension resources from the extensions navigation property.|
|[Create extension](../api/task-post-extensions.md)|[extension](../resources/extension.md)|Create a new extension object.|
|[List linkedResources](../api/task-list-linkedresources.md)|[linkedResource_v2](../resources/linkedresource_v2.md) collection|Get the linkedResource_v2 resources from the linkedResources navigation property.|
|[Create linkedResource_v2](../api/task-post-linkedresources.md)|[linkedResource_v2](../resources/linkedresource_v2.md)|Create a new linkedResource_v2 object.|
|[List baseTaskList](../api/task-list-parentlist.md)|[baseTaskList](../resources/basetasklist.md) collection|Get the baseTaskList resources from the parentList navigation property.|
|[Create baseTaskList](../api/task-post-parentlist.md)|[baseTaskList](../resources/basetasklist.md)|Create a new baseTaskList object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|body|[itemBody](../resources/itembody.md)|**TODO: Add Description** Inherited from [baseTask](../resources/basetask.md).|
|bodyLastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [baseTask](../resources/basetask.md).|
|completedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [baseTask](../resources/basetask.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [baseTask](../resources/basetask.md).|
|displayName|String|**TODO: Add Description** Inherited from [baseTask](../resources/basetask.md).|
|dueDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|**TODO: Add Description** Inherited from [baseTask](../resources/basetask.md).|
|id|String|**TODO: Add Description** Inherited from [baseTask](../resources/basetask.md).|
|importance|importance|**TODO: Add Description** Inherited from [baseTask](../resources/basetask.md). The possible values are: `low`, `normal`, `high`.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [baseTask](../resources/basetask.md).|
|personalProperties|[personalTaskProperties](../resources/personaltaskproperties.md)|**TODO: Add Description** Inherited from [baseTask](../resources/basetask.md).|
|recurrence|[patternedRecurrence](../resources/patternedrecurrence.md)|**TODO: Add Description** Inherited from [baseTask](../resources/basetask.md).|
|startDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|**TODO: Add Description** Inherited from [baseTask](../resources/basetask.md).|
|status|taskStatus_v2|**TODO: Add Description** Inherited from [baseTask](../resources/basetask.md). The possible values are: `notStarted`, `inProgress`, `completed`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|checklistItems|[checklistItem](../resources/checklistitem.md) collection|**TODO: Add Description** Inherited from [baseTask](../resources/basetask.md)|
|extensions|[extension](../resources/extension.md) collection|**TODO: Add Description** Inherited from [baseTask](../resources/basetask.md)|
|linkedResources|[linkedResource_v2](../resources/linkedresource_v2.md) collection|**TODO: Add Description** Inherited from [baseTask](../resources/basetask.md)|
|parentList|[baseTaskList](../resources/basetasklist.md)|**TODO: Add Description** Inherited from [baseTask](../resources/basetask.md)|

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
  "body": {
    "@odata.type": "microsoft.graph.itemBody"
  },
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
  "personalProperties": {
    "@odata.type": "microsoft.graph.personalTaskProperties"
  },
  "id": "String (identifier)"
}
```

