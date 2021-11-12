---
title: "baseTask resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# baseTask resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
This is an abstract type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List baseTasks](../api/basetask-list.md)|[baseTask](../resources/basetask.md) collection|Get a list of the [baseTask](../resources/basetask.md) objects and their properties.|
|[Create baseTask](../api/basetasklist-post-tasks.md)|[baseTask](../resources/basetask.md)|Create a new [baseTask](../resources/basetask.md) object.|
|[Get baseTask](../api/basetask-get.md)|[baseTask](../resources/basetask.md)|Read the properties and relationships of a [baseTask](../resources/basetask.md) object.|
|[Update baseTask](../api/basetask-update.md)|[baseTask](../resources/basetask.md)|Update the properties of a [baseTask](../resources/basetask.md) object.|
|[Delete baseTask](../api/basetask-delete.md)|None|Deletes a [baseTask](../resources/basetask.md) object.|
|[move](../api/basetask-move.md)|[baseTask](../resources/basetask.md)|**TODO: Add Description**|
|[delta](../api/basetask-delta.md)|[baseTask](../resources/basetask.md) collection|**TODO: Add Description**|
|[List checklistItems](../api/basetask-list-checklistitems.md)|[checklistItem](../resources/checklistitem.md) collection|Get the checklistItem resources from the checklistItems navigation property.|
|[Create checklistItem](../api/basetask-post-checklistitems.md)|[checklistItem](../resources/checklistitem.md)|Create a new checklistItem object.|
|[List extensions](../api/basetask-list-extensions.md)|[extension](../resources/extension.md) collection|Get the extension resources from the extensions navigation property.|
|[Create extension](../api/basetask-post-extensions.md)|[extension](../resources/extension.md)|Create a new extension object.|
|[List linkedResources](../api/basetask-list-linkedresources.md)|[linkedResource_v2](../resources/linkedresource_v2.md) collection|Get the linkedResource_v2 resources from the linkedResources navigation property.|
|[Create linkedResource_v2](../api/basetask-post-linkedresources.md)|[linkedResource_v2](../resources/linkedresource_v2.md)|Create a new linkedResource_v2 object.|
|[List baseTaskList](../api/basetask-list-parentlist.md)|[baseTaskList](../resources/basetasklist.md) collection|Get the baseTaskList resources from the parentList navigation property.|
|[Create baseTaskList](../api/basetask-post-parentlist.md)|[baseTaskList](../resources/basetasklist.md)|Create a new baseTaskList object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|body|[itemBody](../resources/itembody.md)|**TODO: Add Description**|
|bodyLastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|completedDateTime|DateTimeOffset|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|dueDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|importance|importance|**TODO: Add Description**. The possible values are: `low`, `normal`, `high`.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|personalProperties|[personalTaskProperties](../resources/personaltaskproperties.md)|**TODO: Add Description**|
|recurrence|[patternedRecurrence](../resources/patternedrecurrence.md)|**TODO: Add Description**|
|startDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|**TODO: Add Description**|
|status|taskStatus_v2|**TODO: Add Description**. The possible values are: `notStarted`, `inProgress`, `completed`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|checklistItems|[checklistItem](../resources/checklistitem.md) collection|**TODO: Add Description**|
|extensions|[extension](../resources/extension.md) collection|**TODO: Add Description**|
|linkedResources|[linkedResource_v2](../resources/linkedresource_v2.md) collection|**TODO: Add Description**|
|parentList|[baseTaskList](../resources/basetasklist.md)|**TODO: Add Description**|

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

