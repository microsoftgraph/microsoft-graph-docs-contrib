---
title: "learningCourseActivity resource type"
description: "Represents the learner course activities for employee learning - Assigned to Self initiated record."
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "employee-learning"
doc_type: resourcePageType
---

# learningCourseActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the learner course activities for employee learning. This is the base type of [learningAssignment](../resources/learningassignment.md) or [learningSelfInitiated](../resources/learningselfinitiatedcourse.md) types.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List learningCourseActivity for user](../api/learningcourseactivity-list.md)|Collection of [learningCourseActivity](../resources/learningcourseactivity.md) object|Retrieve all courses for a user.|
|[Create learningCourseActivity](../api/employeeexperienceuser-post-learningcourseactivities.md)|[learningCourseActivity](../resources/learningcourseactivity.md)|Create a new [learningCourseActivity](../resources/learningcourseactivity.md) object.|
|[Get learningCourseActivity](../api/learningcourseactivity-get.md)|[learningCourseActivity](../resources/learningcourseactivity.md)|Read the properties and relationships of a [learningCourseActivity](../resources/learningcourseactivity.md) object.|
|[Update learningCourseActivity](../api/learningcourseactivity-update.md)|[learningCourseActivity](../resources/learningcourseactivity.md)|Update the properties of a [learningCourseActivity](../resources/learningcourseactivity.md) object.|
|[Delete learningCourseActivity](../api/learningcourseactivity-delete.md)|None|Delete a [learningCourseActivity](../resources/learningcourseactivity.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|@odata.type|String|Indicates whether this is a [learningAssignment](../resources/learningassignment.md) or [learningSelfInitiated](../resources/learningselfinitiatedcourse.md) course activity. Required.|
|assignedDateTime|DateTimeOffset|Date time value when the assignment was completed. Optional.|
|assignerUserId|String|The user id of the assigner. Optional.|
|assignmentType|assignmentType|assignmentType for the course activity. Possible values are `required`, `recommended`, `unknownFutureValue`. Required.|
|completedDateTime|DateTimeOffset|Date time value when the assignment was completed. Optional.|
|completionPercentage|Int32|Percenatge completion value of course. Optional.|
|dueDateTime|DateTimeTimeZone|Due date for the course activity. Optional.|
|externalcourseActivityId|String|A course activity id generated at provider. Optional.|
|Id|String|The generated ID for a request and can be used to make further interactions to the course activity APIs.|
|learningContentId|String|The ID of learning Content created in Viva Learning using LearningContent Microsoft Graph API’s. Required.|
|learnerUserId|String|The user id of the learner to whom the activity is assigned. Required.|
|learningProviderId|String|The registration Id of the provider. Required.|
|startedDateTime|DateTimeOffset|date time value on which the self-initiated course was started by the learner. Optional.|
|status|courseStatus|Represents status of the course activity. Possibly values are `notStarted`, `inProgress`, `completed`. Required.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.learningCourseActivity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.learningCourseActivity",
  "assignerUserId": "String",
  "assignmentType": "String (enum)",
  "completedDateTime": "String (timestamp)",
  "completionPercentage": "Integer",
  "externalCourseActivityId": "String",
  "learningContentId": "String",
  "learningProviderId": "String",
  "learnerUserId": "String",
  "status": "@odata.type: microsoft.graph.courseStatus"
}
```

