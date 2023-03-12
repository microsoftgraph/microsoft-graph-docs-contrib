---
title: "Create learningCourseActivity"
description: "Create a new learningCourseActivity object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create learningCourseActivity
Namespace: microsoft.graph

Create a new [learningCourseActivity](../resources/learningcourseactivity.md) object.
Learning course activity is of two types. Assignment and Self-initiated.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LearningAssignedCourse.ReadWrite.All, LearningSelfInitiatedCourse.ReadWrite.All|

## Create assigned learning course activity 

A learning course activity of type 'Assignment' can be created by setting '@odata.type' to "#microsoft.graph.learningAssignment". It also requires permission of type 'LearningAssignedCourse.ReadWrite.All' to call the API.

## HTTP request

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
|@odata.type|String|Type to determine if it’s a LearningAssignment or SelfInitiated course.|
|assignmentType|String|AssignmentType for the course activity (required/recommended)|
|learningContentId|String| The Id of Learning Content received when Learning Content is created on Viva Learning using LearningContent graph API’s|
|learnerUserId|String|The user id of the learner|
|registrationId|String|Id of the provider. It’s a GUID which is generated when the provider registers on viva learning using provider registration graph API’s.|
|status|courseStatus|Represents status of the course activity. Values are (notStarted/inProgress/completed)|
|startedDateTime|DateTimeOffset|The date time value on which the self-initiated course was started by the learner|
|assignerUserId|String|The user id of the assigner (Optional)|
|notes|String|Notes for the course activity (Optional)|
|dueDateTime|DateTimeOffset|Due date for the course activity (Optional)|
|assignedDateTime|DateTimeOffset|Assigned date for the course activity (Optional)|
|completedDateTime|DateTimeOffset|Date time value when the assignment was completed. (Optional)|
|externalcourseActivityId|String|A course activity id generated at provider (Optional)|
|Id|String|The resultant id of this request can be used to make further interactions to the course activity API’s|
|completionPercentage|Integer|The percentage of the course completed by the user(Optional). If the value is provided, the value needs to be in between 0 and 100 (inclusive)|

## Response

If successful, this method returns a `201 Created` response code and a [learningCourseActivity](../resources/learningcourseactivity.md) object in the response body.

## Examples

### Request
The following is an example of a request.

``` http
POST https://graph.microsoft.com/v1.0/employeeExperience/learningCourseActivities
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.learningAssignment",
  "assignmentType": "required",
  "learningProviderId": "01e8f81b-3060-4dec-acf0-0389665a0a38",
  "notes":
  {
  "contentType": "text",
  "content": "required assignment added for user"
  },
  "dueDateTime": {
  "dateTime": "2022-09-22T16:05:00.0000000",
  "timeZone": "UTC"
  },
  "assignedDateTime": "2021-05-11T22:57:17+00:00",
  "learningContentId": "57baf9dc-e020-11ec-9d64-0242ac120002",
  "assignerUserId": "cea1684d-57dc-438d-a9d1-e666ec1a7f3d",
  "learnerUserId":"7ba2228a-e020-11ec-9d64-0242ac120002",
  "status": "NotStarted",
  "completedDateTime": null,
  "externalCourseActivityId": "12a2228a-e020-11ec-9d64-0242ac120002",
}
```

### Response
The following is an example of the response

``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.learningAssignment",
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#learningProviders('13727311-
  e7bb-470d-8b20-6a23d9030d70')/learningCourseActivities('7ba2228a-e020-11ec-9d64-
  0242ac120002')$entity",
  "assignmentType": "required",
  "learningProviderId": "01e8f81b-3060-4dec-acf0-0389665a0a38",
  "notes":
  {
    "contentType": "text",
    "content": "required assignment added for user"
  },
  "dueDateTime": {
    "dateTime": "2022-09-22T16:05:00.0000000",
    "timeZone": "UTC"
  },
  "assignedDateTime": "2021-05-11T22:57:17+00:00",
  "learningContentId": "57baf9dc-e020-11ec-9d64-0242ac120002",
  "assignerUserId": "cea1684d-57dc-438d-a9d1-e666ec1a7f3d",
  "learnerUserId":"7ba2228a-e020-11ec-9d64-0242ac120002",
  "status": "NotStarted",
  "completedDateTime": null,
  "externalCourseActivityId": "12a2228a-e020-11ec-9d64-0242ac120002",
  "id": "7ba2228a-e020-11ec-9d64-0242ac120002:749c8786-99bb-4b3b-8d5d-586428f6aaa3"
}
```
## Create self-initiated learning course activity 

A learning course activity of type 'Self-initiated' can be created by setting '@odata.type' to "#microsoft.graph.learningSelfInitiatedCourse". It also requires permission of type 'LearningSelfInitiatedCourse.ReadWrite.All' to call the API.

## HTTP request

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
|@odata.type|String|Type to determine if it’s a LearningAssignment or SelfInitiated course.|
|learningContentId|String| The Id of Learning Content received when Learning Content is created on Viva Learning using LearningContent graph API’s|
|learnerUserId|String|The user id of the learner|
|registrationId|String|Id of the provider. It’s a GUID which is generated when the provider registers on viva learning using provider registration graph API’s.|
|status|courseStatus|Represents status of the course activity. Values are (inProgress/completed)|
|startedDateTime|DateTimeOffset|The date time value on which the self-initiated course was started by the learner|
|completedDateTime|DateTimeOffset|Date time value when the assignment was completed. (Optional)|
|externalcourseActivityId|String|A course activity id generated at provider (Optional)|
|Id|String|The resultant id of this request can be used to make further interactions to the course activity API’s|

## Response

If successful, this method returns a `201 Created` response code and a [learningCourseActivity](../resources/learningcourseactivity.md) object in the response body.

## Examples

### Request
The following is an example of a request.

``` http
POST https://graph.microsoft.com/v1.0/employeeExperience/learningCourseActivities
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.learningSelfInitiatedCourse",
  "learningContentId": "57baf9dc-e020-11ec-9d64-0242ac120002",
  "learnerUserId":"7ba2228a-e020-11ec-9d64-0242ac120002",
  "status": "InProgress",
  "completedDateTime": null,
  "startedDateTime": "2021-05-21T22:57:17+00:00",
  "externalCourseActivityId": "12a2228a-e020-11ec-9d64-0242ac120002",
}
```

### Response
The following is an example of the response

``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#learningProviders('13727311-
  e7bb-470d-8b20-6a23d9030d70')/learningCourseActivities('be2f4d76-e020-11ec-9d64-
  0242ac120002')$entity",  
  "learningProviderId": "01e8f81b-3060-4dec-acf0-0389665a0a38",
  "learningContentId": "57baf9dc-e020-11ec-9d64-0242ac120002",
  "learnerUserId":"7ba2228a-e020-11ec-9d64-0242ac120002",
  "status": "InProgress",
  "completedDateTime": null,
  "startedDateTime": "2021-05-21T22:57:17+00:00",
  "externalCourseActivityId": "12a2228a-e020-11ec-9d64-0242ac120002",
  "id": "7ba2228a-e020-11ec-9d64-0242ac120002:749c8786-99bb-4b3b-8d5d-586428f6aaa3",
}
```
