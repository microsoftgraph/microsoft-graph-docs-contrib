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
|@odata.type|String|Type to determine if it’s a [learningAssignment](../resources/learningassignment.md) or [learningSelfInitiated](../resources/learningselfinitiatedcourse.md) course.|
|assignedDateTime|DateTimeOffset|Assigned date for the course activity (Optional).|
|assignerUserId|String|The user ID of the assigner (Optional).|
|assignmentType|String|The assignment type for the course activity. Possibly values are `required`, `recommended`, `UnknownFutureValue`.|
|completedDateTime|DateTimeOffset|Date time value when the assignment was completed. (Optional)|
|completionPercentage|Integer|The percentage of the course completed by the user(Optional). If the value is provided, the value needs to be in between 0 and 100 (inclusive).|
|dueDateTime|DateTimeOffset|Due date for the course activity. (Optional)|
|externalCourseActivityId|String|A course activity ID generated at provider. (Optional)|
|ID|String|The resultant ID of this request can be used to make further interactions to the course activity API’s.|
|learningContentId|String| The ID of Learning Content received when Learning Content is created on Viva Learning using LearningContent Microsoft Graph API’s.|
|learnerUserId|String|The user ID of the learner.|
|learningProviderId|String|ID of the provider. It’s a GUID which is generated when the provider registers on viva learning using provider registration Microsoft Graph API’s.|
|notes|String|Notes for the course activity. (Optional)|
|startedDateTime|DateTimeOffset|The date time value on which the self-initiated course was started by the learner.|
|status|courseStatus|Represents status of the course activity. Possibly values are `notStarted`, `inProgress`, `completed`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.learningAssignment",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.learningAssignment",
  "assignedDateTime": "String (timestamp)",
  "assignerUserId": "String",
  "assignmentType": "String",
  "completedDateTime": "String (timestamp)",
  "completionPercentage": "Integer",
  "dueDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "externalCourseActivityId": "String",
  "learnerUserId": "String",
  "learningContentId": "String",
  "learningProviderId": "String",
  "notes": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "status": "String"
}
```

