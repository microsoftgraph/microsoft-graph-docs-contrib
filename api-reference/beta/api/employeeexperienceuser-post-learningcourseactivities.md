---
title: "Create learningCourseActivity"
description: "Create a new learningCourseActivity object."
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "employee-learning"
doc_type: apiPageType
---

# Create learningCourseActivity
Namespace: microsoft.graph

Create a new [learningCourseActivity](../resources/learningcourseactivity.md) object.

A learning course activity can be one of two types: 
- Assignment
- Self-initiated

Use this method to create either type of activity.

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
POST /employeeExperience/learningProviders/{registrationId}/learningCourseActivities
```
## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [learningCourseActivity](../resources/learningcourseactivity.md) object.

You can specify the following properties when creating a **learningCourseActivity**.

|Property|Type|Description|
|:---|:---|:---|
|@odata.type|String|Type to determine if it’s a [learningAssignment](../resources/learningassignment.md) or [learningSelfInitiated](../resources/learningselfinitiatedcourse.md) course.|
|assignedDateTime|DateTimeOffset|Assigned date for the course activity. (Optional)|
|assignmentType|[assignmentType](../resources/assignmentType.md)|assignmentType for the course activity (required/recommended).|
|assignerUserId|String|The user id of the assigner. (Optional)|
|completedDateTime|DateTimeOffset|Date time value when the assignment was completed. (Optional)|
|completionPercentage|Integer|The percentage of the course completed by the user(Optional). If the value is provided, the value needs to be in between 0 and 100 (inclusive).|
|dueDateTime|DateTimeOffset|Due date for the course activity. (Optional)|
|externalcourseActivityId|String|A course activity id generated at provider. (Optional)|
|Id|String|The resultant id of this request can be used to make further interactions to the course activity API’s.|
|learningContentId|String| The Id of Learning Content received when Learning Content is created on Viva Learning using LearningContent graph API’s.|
|learnerUserId|String|The user id of the learner.|
|notes|String|Notes for the course activity. (Optional)|
|registrationId|String|Id of the provider. It’s a GUID which is generated when the provider registers on viva learning using provider registration graph API’s.|
|startedDateTime|DateTimeOffset|The date time value on which the self-initiated course was started by the learner.|
|status|[courseStatus](../resources/courseStatus.md)|Represents status of the course activity. Values are (notStarted/inProgress/completed).|

## Response

If successful, this method returns a `201 Created` response code and a [learningCourseActivity](../resources/learningcourseactivity.md) object in the response body.

## Examples

### Example 1: Create an assigned learning course activity

The following example shows how to create a [learningAssignment](../resources/learningassignment.md).

### Request
The following example shows the request.

<!-- {
  "blockType": "request",
  "name": "create_assigned_learning_courseactivity"
}-->

``` http
POST https://graph.microsoft.com/beta/employeeExperience/learningProviders/{registrationId}/learningCourseActivities
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.learningAssignment",
  "assignedDateTime": "2021-05-11T22:57:17+00:00",
  "assignmentType": "required",
  "assignerUserId": "cea1684d-57dc-438d-a9d1-e666ec1a7f3d",
  "completedDateTime": null,
  "completionPercentage":20,
  "dueDateTime": {
    "dateTime": "2022-09-22T16:05:00.0000000",
    "timeZone": "UTC"
  },
  "externalCourseActivityId": "12a2228a-e020-11ec-9d64-0242ac120002",
  "learningContentId": "57baf9dc-e020-11ec-9d64-0242ac120002",
  "learningProviderId": "01e8f81b-3060-4dec-acf0-0389665a0a38",
  "learnerUserId":"7ba2228a-e020-11ec-9d64-0242ac120002",
  "notes":
  {
    "contentType": "text",
    "content": "required assignment added for user"
  },
  "status": "NotStarted"
}
```

### Response
The following example shows the response.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.learningAssignment"
}-->

``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.learningAssignment",
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#learningProviders('13727311-
  e7bb-470d-8b20-6a23d9030d70')/learningCourseActivities('7ba2228a-e020-11ec-9d64-
  0242ac120002')$entity",
  "assignedDateTime": "2021-05-11T22:57:17+00:00",
  "assignmentType": "required",
  "assignerUserId": "cea1684d-57dc-438d-a9d1-e666ec1a7f3d",
  "completedDateTime": null,
  "completionPercentage":20,
  "externalCourseActivityId": "12a2228a-e020-11ec-9d64-0242ac120002",
  "id": "7ba2228a-e020-11ec-9d64-0242ac120002:749c8786-99bb-4b3b-8d5d-586428f6aaa3",
  "dueDateTime": {
    "dateTime": "2022-09-22T16:05:00.0000000",
    "timeZone": "UTC"
  },
  "learningContentId": "57baf9dc-e020-11ec-9d64-0242ac120002",
  "learningProviderId": "01e8f81b-3060-4dec-acf0-0389665a0a38",
  "learnerUserId":"7ba2228a-e020-11ec-9d64-0242ac120002",
  "notes":
  {
    "contentType": "text",
    "content": "required assignment added for user"
  },
  "status": "NotStarted"
}
```

### Example 2: Create a self-initiated learning course activity

The following example creates a [learningSelfInitiated](../resources/learningselfinitiatedcourse.md) course.

### Request
The following example shows the request.

<!-- {
  "blockType": "request",
  "name": "create_selfinitiated_learning_courseactivity"
}-->

``` http
POST https://graph.microsoft.com/beta/employeeExperience/learningProviders/{registrationId}/learningCourseActivities
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.learningSelfInitiatedCourse",
  "completedDateTime": null,
  "completionPercentage":20,
  "externalCourseActivityId": "12a2228a-e020-11ec-9d64-0242ac120002",
  "learningContentId": "57baf9dc-e020-11ec-9d64-0242ac120002",
  "learnerUserId":"7ba2228a-e020-11ec-9d64-0242ac120002",
  "startedDateTime": "2021-05-21T22:57:17+00:00",
  "status": "InProgress"
}
```

### Response
The following example shows the response.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.learningSelfInitiatedCourse"
}-->

``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#learningProviders('13727311-
  e7bb-470d-8b20-6a23d9030d70')/learningCourseActivities('be2f4d76-e020-11ec-9d64-
  0242ac120002')$entity",  
  "completedDateTime": null, 
  "completionPercentage":20,
  "externalCourseActivityId": "12a2228a-e020-11ec-9d64-0242ac120002",
  "id": "7ba2228a-e020-11ec-9d64-0242ac120002:749c8786-99bb-4b3b-8d5d-586428f6aaa3",
  "learningContentId": "57baf9dc-e020-11ec-9d64-0242ac120002",  
  "learningProviderId": "01e8f81b-3060-4dec-acf0-0389665a0a38",
  "learnerUserId":"7ba2228a-e020-11ec-9d64-0242ac120002",
  "startedDateTime": "2021-05-21T22:57:17+00:00",
  "status": "InProgress"  
}
```
