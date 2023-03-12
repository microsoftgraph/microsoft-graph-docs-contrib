---
title: "Update learningSelfInitiatedCourse"
description: "Update the properties of a learningSelfInitiatedCourse object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update learningSelfInitiatedCourse
Namespace: microsoft.graph



Update the properties of a [learningSelfInitiatedCourse](../resources/learningselfinitiatedcourse.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /learningSelfInitiatedCourse
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|externalcourseActivityId|String|**TODO: Add Description** Inherited from [microsoft.vivaLearning.learningCourseActivity](../resources/learningcourseactivity.md). Optional.|
|learningProviderId|String|**TODO: Add Description** Inherited from [microsoft.vivaLearning.learningCourseActivity](../resources/learningcourseactivity.md). Optional.|
|learningContentId|String|**TODO: Add Description** Inherited from [microsoft.vivaLearning.learningCourseActivity](../resources/learningcourseactivity.md). Required.|
|learnerUserId|String|**TODO: Add Description** Inherited from [microsoft.vivaLearning.learningCourseActivity](../resources/learningcourseactivity.md). Required.|
|status|courseStatus|**TODO: Add Description** Inherited from [microsoft.vivaLearning.learningCourseActivity](../resources/learningcourseactivity.md). The possible values are: `notStarted`, `inProgress`, `completed`, `unknownFutureValue`. Optional.|
|completedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.vivaLearning.learningCourseActivity](../resources/learningcourseactivity.md). Optional.|
|completionPercentage|Int32|**TODO: Add Description** Inherited from [microsoft.vivaLearning.learningCourseActivity](../resources/learningcourseactivity.md). Optional.|
|startedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [learningSelfInitiatedCourse](../resources/learningselfinitiatedcourse.md) object in the response body.

## Examples

### Request
The following is an example of a request.

``` http
PATCH https://graph.microsoft.com/v1.0/learningSelfInitiatedCourse
Content-Type: application/json

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


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

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

