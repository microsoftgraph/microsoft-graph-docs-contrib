---
title: "learningSelfInitiatedCourse resource type"
description: "Represents self initiated learner course record."
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "employee-learning"
doc_type: resourcePageType
---

# learningSelfInitiatedCourse resource type

Namespace: microsoft.graph

Represents the metadata of self-initiated course activity record of learner.

Inherits from [learningCourseActivity](../resources/learningcourseactivity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|@odata.type|String|Type to determine if it’s a [learningAssignment](../resources/learningassignment.md) or [learningSelfInitiated](../resources/learningselfinitiatedcourse.md) course.|
|completedDateTime|DateTimeOffset|Date time value when the assignment was completed. (Optional)|
|completionPercentage|Integer|The percentage of the course completed by the user(Optional). If the value is provided, the value needs to be in between 0 and 100 (inclusive).|
|externalCourseActivityId|String|A course activity ID generated at provider. (Optional)|
|ID|String|The resultant ID of this request can be used to make further interactions to the course activity API’s.|
|learningContentId|String| The ID of Learning Content received when Learning Content is created on Viva Learning using LearningContent Microsoft Graph API’s.|
|learnerUserId|String|The user id of the learner.|
|learningProviderId|String|ID of the provider. It’s a GUID which is generated when the provider registers on viva learning using provider registration Microsoft Graph API’s.|
|startedDateTime|DateTimeOffset|The date time value on which the self-initiated course was started by the learner.|
|status|courseStatus|Represents status of the course activity. Possibly values are `notStarted`, `inProgress`, `completed`.|

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
