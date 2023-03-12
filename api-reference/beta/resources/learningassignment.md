---
title: "learningAssignment resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# learningAssignment resource type

Namespace: microsoft.graph



**TODO: Add Description**


Inherits from [learningCourseActivity](../resources/learningcourseactivity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List learningAssignments](../api/learningassignment-list.md)|[learningAssignment](../resources/learningassignment.md) collection|Get a list of the [learningAssignment](../resources/learningassignment.md) objects and their properties.|
|[Get learningAssignment](../api/learningassignment-get.md)|[learningAssignment](../resources/learningassignment.md)|Read the properties and relationships of a [learningAssignment](../resources/learningassignment.md) object.|
|[Update learningAssignment](../api/learningassignment-update.md)|[learningAssignment](../resources/learningassignment.md)|Update the properties of a [learningAssignment](../resources/learningassignment.md) object.|
|[Delete learningAssignment](../api/learningassignment-delete.md)|None|Delete a [learningAssignment](../resources/learningassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedDateTime|DateTimeOffset|**TODO: Add Description**|
|assignerUserId|String|**TODO: Add Description**|
|assignmentType|assignmentType|**TODO: Add Description**.The possible values are: `required`, `recommended`, `unknownFutureValue`.|
|completedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [learningCourseActivity](../resources/learningcourseactivity.md).|
|completionPercentage|Int32|**TODO: Add Description** Inherited from [learningCourseActivity](../resources/learningcourseactivity.md).|
|dueDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|**TODO: Add Description**|
|externalcourseActivityId|String|**TODO: Add Description** Inherited from [learningCourseActivity](../resources/learningcourseactivity.md).|
|learnerUserId|String|**TODO: Add Description** Inherited from [learningCourseActivity](../resources/learningcourseactivity.md).|
|learningContentId|String|**TODO: Add Description** Inherited from [learningCourseActivity](../resources/learningcourseactivity.md).|
|learningProviderId|String|**TODO: Add Description** Inherited from [learningCourseActivity](../resources/learningcourseactivity.md).|
|notes|[itemBody](../resources/itembody.md)|**TODO: Add Description**|
|status|courseStatus|**TODO: Add Description** Inherited from [learningCourseActivity](../resources/learningcourseactivity.md).The possible values are: `notStarted`, `inProgress`, `completed`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.learningAssignment",
  "baseType": "microsoft.vivaLearning.learningCourseActivity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.learningAssignment",
  "externalcourseActivityId": "String",
  "learningProviderId": "String",
  "learningContentId": "String",
  "learnerUserId": "String",
  "status": "String",
  "completedDateTime": "String (timestamp)",
  "completionPercentage": "Integer",
  "assignmentType": "String",
  "assignerUserId": "String",
  "assignedDateTime": "String (timestamp)",
  "dueDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "notes": {
    "@odata.type": "microsoft.graph.itemBody"
  }
}
```

