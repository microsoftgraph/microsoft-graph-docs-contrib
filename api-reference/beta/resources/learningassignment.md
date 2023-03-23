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
|assignedDateTime|DateTimeOffset|Assigned date for the course activity (Optional)|
|assignerUserId|String|The user id of the assigner (Optional)|
|assignmentType|[assignmentType](../resources/assignmentType.md)|assignmentType for the course activity (required/recommended)|
|completedDateTime|DateTimeOffset|Date time value when the assignment was completed. (Optional)|
|completionPercentage|Integer|The percentage of the course completed by the user(Optional). If the value is provided, the value needs to be in between 0 and 100 (inclusive)|
|dueDateTime|DateTimeOffset|Due date for the course activity (Optional)|
|externalcourseActivityId|String|A course activity id generated at provider (Optional)|
|Id|String|The resultant id of this request can be used to make further interactions to the course activity API’s|
|learningContentId|String| The Id of Learning Content received when Learning Content is created on Viva Learning using LearningContent graph API’s|
|learnerUserId|String|The user id of the learner|
|notes|String|Notes for the course activity (Optional)|
|registrationId|String|Id of the provider. It’s a GUID which is generated when the provider registers on viva learning using provider registration graph API’s.|
|startedDateTime|DateTimeOffset|The date time value on which the self-initiated course was started by the learner|
|status|[courseStatus](../resources/courseStatus.md)|Represents status of the course activity. Values are (notStarted/inProgress/completed)|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.

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
  "externalcourseActivityId": "String",
  "learnerUserId": "String",
  "learningContentId": "String",
  "learningProviderId": "String",
  "notes": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "status": "String"
}
```

