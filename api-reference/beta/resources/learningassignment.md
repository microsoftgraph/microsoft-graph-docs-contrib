---
title: "learningAssignment resource type"
description: "Represents learner assignment record"
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "employee-learning"
doc_type: resourcePageType
---

# learningAssignment resource type

Namespace: microsoft.graph

Represents the metadata of assigned course activity record of learner.


Inherits from [learningCourseActivity](../resources/learningcourseactivity.md).

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

