---
title: "Update learningAssignment"
description: "Update the properties of a learningAssignment object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update learningAssignment
Namespace: microsoft.graph



Update the properties of a [learningAssignment](../resources/learningassignment.md) object.

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
PATCH /learningAssignment
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
|assignmentType|assignmentType|**TODO: Add Description**. The possible values are: `required`, `recommended`, `unknownFutureValue`. Required.|
|assignerUserId|String|**TODO: Add Description** Optional.|
|assignedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|dueDateTime|[microsoft.vivaLearning.dateTimeTimeZone](../resources/datetimetimezone.md)|**TODO: Add Description** Optional.|
|notes|[microsoft.vivaLearning.itemBody](../resources/itembody.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [learningAssignment](../resources/learningassignment.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_learningassignment"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/learningAssignment
Content-Type: application/json

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


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

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

