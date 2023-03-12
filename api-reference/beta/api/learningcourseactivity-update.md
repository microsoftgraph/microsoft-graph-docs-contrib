---
title: "Update learningCourseActivity"
description: "Update the properties of a learningCourseActivity object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update learningCourseActivity
Namespace: microsoft.graph

Updates the properties of a [learningCourseActivity](../resources/learningcourseactivity.md) object. 
After creating a course activity in Viva Learning, Provider should have ability to update the following properties using the Viva Learning CourseActivity Id generated when 
creating the assignment

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LearningAssignedCourse.ReadWrite.All, LearningSelfInitiatedCourse.ReadWrite.All|

## HTTP request

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


Below properties are eligible to update a learning assignment course activity:

|Property|Type|Description|
|:---|:---|:---|
|@odata.type|String|Type to determine if it’s a LearningAssignment or SelfInitiated course.|
|assignmentType|String|AssignmentType for the course activity (required/recommended)|
|status|courseStatus|Represents status of the course activity. Values are (notStarted/inProgress/completed)|
|notes|String|Notes for the course activity (Optional)|
|dueDateTime|DateTimeOffset|Due date for the course activity (Optional)|
|assignedDateTime|DateTimeOffset|Assigned date for the course activity (Optional)|
|completedDateTime|DateTimeOffset|Date time value when the assignment was completed. (Optional)|
|completionPercentage|Integer|The percentage of the course completed by the user(Optional). If the value is provided, the value needs to be in between 0 and 100 (inclusive)|


## Response

If successful, this method returns a `204 OK` response code.

## Examples

### Request
The following is an example of a request.

``` http
PATCH https://graph.microsoft.com/v1.0/employeeExperience/learningCourseActivities/{learningCourseActivityId}
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
  "status": "InProgress",
  "completedDateTime": null,
  "externalCourseActivityId": "12a2228a-e020-11ec-9d64-0242ac120002",
  "completionPercentage":20
}

```

### Response
The following is an example of the response

``` http
HTTP/1.1 204 OK
No Content
```

Below properties are eligible to update a self-initiated course activity:

|Property|Type|Description|
|:---|:---|:---|
|@odata.type|String|Type to determine if it’s a LearningAssignment or SelfInitiated course.|
|status|courseStatus|Represents status of the course activity. Values are (notStarted/inProgress/completed)|
|startedDateTime|DateTimeOffset|The date time value on which the self-initiated course was started by the learner|
|completedDateTime|DateTimeOffset|Date time value when the assignment was completed. (Optional)|
|completionPercentage|Integer|The percentage of the course completed by the user(Optional). If the value is provided, the value needs to be in between 0 and 100 (inclusive)|

## Response

If successful, this method returns a `204 OK` response code.

## Examples

### Request
The following is an example of a request.

``` http
PATCH https://graph.microsoft.com/v1.0/employeeExperience/learningCourseActivities/{learningCourseActivityId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.learningSelfInitiatedCourse",
  "learningProviderId": "01e8f81b-3060-4dec-acf0-0389665a0a38",
  "startedDateTime": "2021-05-11T22:57:17+00:00",
  "learningContentId": "57baf9dc-e020-11ec-9d64-0242ac120002",
  "status": "InProgress",
  "completedDateTime": null,
  "externalCourseActivityId": "12a2228a-e020-11ec-9d64-0242ac120002",
  "completionPercentage":30
}

```

### Response
The following is an example of the response

``` http
HTTP/1.1 204 OK
No Content
```
