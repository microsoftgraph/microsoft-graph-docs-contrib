---
title: "learningSelfInitiatedCourse resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# learningSelfInitiatedCourse resource type

Namespace: microsoft.graph



**TODO: Add Description**


Inherits from [learningCourseActivity](../resources/learningcourseactivity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List learningSelfInitiatedCourses](../api/learningselfinitiatedcourse-list.md)|[learningSelfInitiatedCourse](../resources/learningselfinitiatedcourse.md) collection|Get a list of the [learningSelfInitiatedCourse](../resources/learningselfinitiatedcourse.md) objects and their properties.|
|[Get learningSelfInitiatedCourse](../api/learningselfinitiatedcourse-get.md)|[learningSelfInitiatedCourse](../resources/learningselfinitiatedcourse.md)|Read the properties and relationships of a [learningSelfInitiatedCourse](../resources/learningselfinitiatedcourse.md) object.|
|[Update learningSelfInitiatedCourse](../api/learningselfinitiatedcourse-update.md)|[learningSelfInitiatedCourse](../resources/learningselfinitiatedcourse.md)|Update the properties of a [learningSelfInitiatedCourse](../resources/learningselfinitiatedcourse.md) object.|
|[Delete learningSelfInitiatedCourse](../api/learningselfinitiatedcourse-delete.md)|None|Delete a [learningSelfInitiatedCourse](../resources/learningselfinitiatedcourse.md) object.|

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

