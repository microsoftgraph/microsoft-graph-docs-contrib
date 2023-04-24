---
title: "learningAssignment resource type"
description: "Represents the details of a learning activity assigned to a user."
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "employee-learning"
doc_type: resourcePageType
---

# learningAssignment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of a learning activity assigned to a user.

Inherits from [learningCourseActivity](../resources/learningcourseactivity.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|@odata.type|String|Indicates whether this is a [learningAssignment](../resources/learningassignment.md) or [learningSelfInitiated](../resources/learningselfinitiatedcourse.md) course activity. Required.|
|assignedDateTime|DateTimeOffset|Assigned date for the course activity. Optional.|
|assignerUserId|String|The user ID of the assigner. Optional.|
|assignmentType|String|The assignment type for the course activity. Possible values are: `required`, `recommended`, `unknownFutureValue`. Required.|
|completedDateTime|DateTimeOffset|Date and time when the assignment was completed. Optional.|
|completionPercentage|Int32|The percentage of the course completed by the user. If a value is provided, it must be between `0` and `100` (inclusive). Optional.|
|dueDateTime|DateTimeOffset|Due date for the course activity. Optional.|
|externalCourseActivityId|String|A course activity ID generated at provider. Optional.|
|id|String|The generated ID for a request that can be used to make further interactions to the course activity APIs.|
|learnerUserId|String|The user ID of the learner to whom the activity is assigned. Required.|
|learningContentId|String| The ID of the learning content in Viva Learning. Required.|
|learningProviderId|String|The registration ID of the provider. Required.|
|notes|String|Notes for the course activity. Optional.|
|startedDateTime|DateTimeOffset|The date and time when the self-initiated course was started by the learner. Optional.|
|status|courseStatus|The status of the course activity. Possible values are: `notStarted`, `inProgress`, `completed`. Required.|

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
  "completionPercentage": "Int32",
  "dueDateTime": "String (timestamp)",
  "externalCourseActivityId": "String",
  "id": "String (identifier)",
  "learnerUserId": "String",
  "learningContentId": "String",
  "learningProviderId": "String",
  "notes": "String",
  "status": "String"
}
```
