---
title: "Update learningCourseActivity"
description: "Update the properties of a learningCourseActivity object."
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "employee-learning"
doc_type: apiPageType
---

# Update learningCourseActivity
Namespace: microsoft.graph

Update the properties of a [learningCourseActivity](../resources/learningcourseactivity.md) object. 

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LearningAssignedCourse.ReadWrite.All, LearningSelfInitiatedCourse.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
PATCH /employeeExperience/learningCourseActivities/{learningCourseActivityId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [learningCourseActivity](../resources/learningcourseactivity.md) object.

## Response
If successful, this method returns a `204 OK` response code.

## Examples

### Example 1: Update an assigned learning course activity

The following table lists the properties of a assigned learning course activity that can be updated:

|Property|Type|Description|
|:---|:---|:---|
|@odata.type|String|Type to determine if it’s a [learningAssignment](../resources/learningassignment.md) or [learningSelfInitiated](../resources/learningselfinitiatedcourse.md) course.|
|assignedDateTime|DateTimeOffset|Assigned date for the course activity. (Optional)|
|assignmentType|assignmentType|The assignment type for the course activity. Possibly values are `required`, `recommended`, `UnknownFutureValue`.|
|completedDateTime|DateTimeOffset|Date time value when the assignment was completed. (Optional)|
|completionPercentage|Integer|The percentage of the course completed by the user(Optional). If the value is provided, the value needs to be in between 0 and 100 (inclusive).|
|dueDateTime|DateTimeOffset|Due date for the course activity. (Optional)|
|notes|String|Notes for the course activity. (Optional)|
|status|[courseStatus](../resources/courseStatus.md)|Represents status of the course activity. Values are (notStarted/inProgress/completed).|

### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_assigned_learning_courseactivity"
}-->

``` http
PATCH https://graph.microsoft.com/beta/employeeExperience/learningCourseActivities/7ba2228a-e020-11ec-9d64-0242ac120002
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.learningAssignment",
  "assignedDateTime": "2021-05-11T22:57:17+00:00",
  "assignmentType": "required",
  "assignerUserId": "cea1684d-57dc-438d-a9d1-e666ec1a7f3d",
  "completedDateTime": null,
  "completionPercentage":20,
  "learningProviderId": "01e8f81b-3060-4dec-acf0-0389665a0a38",
  "dueDateTime": {
  "dateTime": "2022-09-22T16:05:00.0000000",
  "timeZone": "UTC"
  },
  "externalCourseActivityId": "12a2228a-e020-11ec-9d64-0242ac120002",
  "learningContentId": "57baf9dc-e020-11ec-9d64-0242ac120002",
  "learnerUserId":"7ba2228a-e020-11ec-9d64-0242ac120002",
  "notes":
  {
  "contentType": "text",
  "content": "required assignment added for user"
  },
  "status": "InProgress"
}

```

### Response
The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 2: Update an self-initiated learning course activity

The following table lists the properties of a self-initiated learning course activity that can be updated:

|Property|Type|Description|
|:---|:---|:---|
|@odata.type|String|Type to determine if it’s a [learningAssignment](../resources/learningassignment.md) or [learningSelfInitiated](../resources/learningselfinitiatedcourse.md) course.|
|completedDateTime|DateTimeOffset|Date time value when the assignment was completed. (Optional)|
|completionPercentage|Integer|The percentage of the course completed by the user(Optional). If the value is provided, the value needs to be in between 0 and 100 (inclusive).|
|status|[courseStatus](../resources/courseStatus.md)|Represents of the course activity. Accepted values are (inProgress/completed).|
|startedDateTime|DateTimeOffset|The date time value on which the self-initiated course was started by the learner.|

### Request
The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "update_selfinitiated_learning_courseactivity"
}-->

``` http
PATCH https://graph.microsoft.com/beta/employeeExperience/learningCourseActivities/{learningCourseActivityId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.learningSelfInitiatedCourse",
  "completedDateTime": null,
  "completionPercentage":30,
  "externalCourseActivityId": "12a2228a-e020-11ec-9d64-0242ac120002",
  "learningContentId": "57baf9dc-e020-11ec-9d64-0242ac120002",
  "learningProviderId": "01e8f81b-3060-4dec-acf0-0389665a0a38",  
  "startedDateTime": "2021-05-11T22:57:17+00:00",
  "status": "InProgress"  
}

```

### Response
The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
