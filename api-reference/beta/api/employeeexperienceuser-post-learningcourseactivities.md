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
Learning course activity is of two types: 
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

``` http
POST /employeeExperience/learningProviders/{registrationId}/learningCourseActivities
```
## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Examples

### Example 1: Create an assigned learning course activity

Sample request to create a [learningAssignment](../resources/learningassignment.md):

#### Request
The following is an example of a request.

``` http
POST https://graph.microsoft.com/v1.0/employeeExperience/learningProviders/{registrationId}/learningCourseActivities
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

#### Response
The following is an example of the response.

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
  }
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

### Example 2: Create an self-initiated learning course activity

Sample request to create a [learningSelfInitiated](../resources/learningselfinitiatedcourse.md) course:

#### Request
The following is an example of a request.

``` http
POST https://graph.microsoft.com/v1.0/employeeExperience/learningProviders/{registrationId}/learningCourseActivities
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

#### Response
The following is an example of the response.

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
