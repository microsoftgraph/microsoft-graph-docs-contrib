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
|completedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [learningCourseActivity](../resources/learningcourseactivity.md).|
|completionPercentage|Int32|**TODO: Add Description** Inherited from [learningCourseActivity](../resources/learningcourseactivity.md).|
|externalcourseActivityId|String|**TODO: Add Description** Inherited from [learningCourseActivity](../resources/learningcourseactivity.md).|
|learnerUserId|String|**TODO: Add Description** Inherited from [learningCourseActivity](../resources/learningcourseactivity.md).|
|learningContentId|String|**TODO: Add Description** Inherited from [learningCourseActivity](../resources/learningcourseactivity.md).|
|learningProviderId|String|**TODO: Add Description** Inherited from [learningCourseActivity](../resources/learningcourseactivity.md).|
|startedDateTime|DateTimeOffset|**TODO: Add Description**|
|status|courseStatus|**TODO: Add Description** Inherited from [learningCourseActivity](../resources/learningcourseactivity.md).The possible values are: `notStarted`, `inProgress`, `completed`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.learningSelfInitiatedCourse",
  "baseType": "microsoft.vivaLearning.learningCourseActivity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.learningSelfInitiatedCourse",
  "externalcourseActivityId": "String",
  "learningProviderId": "String",
  "learningContentId": "String",
  "learnerUserId": "String",
  "status": "String",
  "completedDateTime": "String (timestamp)",
  "completionPercentage": "Integer",
  "startedDateTime": "String (timestamp)"
}
```

