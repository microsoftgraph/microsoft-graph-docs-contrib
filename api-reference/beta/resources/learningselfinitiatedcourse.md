---
title: "learningSelfInitiatedCourse resource type"
description: "Represents the details of a self-initiated learning course activity of a user."
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "employee-learning"
doc_type: resourcePageType
---

# learningSelfInitiatedCourse resource type

Namespace: microsoft.graph

Represents the details of a self-initiated learning course activity of a user.

Inherits from [learningCourseActivity](../resources/learningcourseactivity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|@odata.type|String|Indicates whether this is a [learningAssignment](../resources/learningassignment.md) or [learningSelfInitiated](../resources/learningselfinitiatedcourse.md) course activity. Required.|
|completedDateTime|DateTimeOffset|Date time value when the assignment was completed. Optional.|
|completionPercentage|Integer|The percentage of the course completed by the user. If the value is provided, the value needs to be in between 0 and 100 (inclusive). Optional.|
|externalCourseActivityId|String|A course activity ID generated at provider. Optional.|
|ID|String|The generated ID for a request and can be used to make further interactions to the course activity APIs.|
|learningContentId|String| The ID of learning Content created in Viva Learning using LearningContent Microsoft Graph API’s. Required.|
|learnerUserId|String|The user id of the learner who initiated the course. Required.|
|learningProviderId|String|ID of the provider. It’s a GUID which is generated when the provider registers on viva learning using provider registration Microsoft Graph API’s. Required.|
|startedDateTime|DateTimeOffset|The date time value on which the self-initiated course was started by the learner. Optional.|
|status|courseStatus|Represents status of the course activity. Possibly values are `notStarted`, `inProgress`, `completed`. Optional.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.learningSelfInitiatedCourse",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.learningSelfInitiatedCourse",
  "completedDateTime": "String (timestamp)",
  "completionPercentage": "Integer",
  "externalCourseActivityId": "String",
  "learningContentId": "String",
  "learningProviderId": "String",
  "learnerUserId": "String",
  "startedDateTime": "String (timestamp)",
  "status": "@odata.type: microsoft.graph.courseStatus"
}
```
