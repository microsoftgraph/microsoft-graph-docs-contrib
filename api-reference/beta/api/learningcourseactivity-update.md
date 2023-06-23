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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [learningCourseActivity](../resources/learningcourseactivity.md) object. 

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                     |
|:---------------------------------------|:--------------------------------------------------------------------------------|
| Delegated (work or school account)     | Not supported.                                                                  |
| Delegated (personal Microsoft account) | Not supported.                                                                  |
| Application                            | LearningAssignedCourse.ReadWrite.All, LearningSelfInitiatedCourse.ReadWrite.All |

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

The following table lists the properties that you can change for a assigned learning course activity.

|Property|Type|Description|
|:---|:---|:---|
|@odata.type|String|Indicates whether this is a [learningAssignment](../resources/learningassignment.md) or [learningSelfInitiated](../resources/learningselfinitiatedcourse.md) course activity. Required.|
|assignedDateTime|DateTimeOffset|Assigned date for the course activity. Optional.|
|assignmentType|assignmentType|The assignment type for the course activity. Possible values are: `required`, `recommended`, `unknownFutureValue`. Required.|
|completedDateTime|DateTimeOffset|Date and time when the assignment was completed. Optional.|
|completionPercentage|Int32|The percentage of the course completed by the user. If a value is provided, it must be between `0` and `100` (inclusive). Optional.|
|dueDateTime|DateTimeOffset|Due date for the course activity. Optional.|
|notes|String|Notes for the course activity. Optional.|
|status|courseStatus|The status of the course activity. Possible values are `notStarted`, `inProgress`, `completed`. Required.|

The following table lists the properties that you can change for a self-initiated learning course activity.

|Property|Type|Description|
|:---|:---|:---|
|@odata.type|String|Indicates whether this is a [learningAssignment](../resources/learningassignment.md) or [learningSelfInitiated](../resources/learningselfinitiatedcourse.md) course activity. Required.|
|completedDateTime|DateTimeOffset|Date and time when the assignment was completed. Optional.|
|completionPercentage|Int32|The percentage of the course completed by the user. If a value is provided, it must be between `0` and `100` (inclusive). Optional.|
|status|courseStatus|The status of the course activity. Possible values are: `notStarted`, `inProgress`, `completed`. Required.|
|startedDateTime|DateTimeOffset|The date and time when the self-initiated course was started by the learner.|


## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Update an assigned learning course activity

#### Request

The following example shows the request.

<!-- {
  "blockType": "request",
  "name": "update_assigned_learning_courseactivity"
}-->

``` http
PATCH https://graph.microsoft.com/beta/employeeExperience/learningCourseActivities/8ba2228a-e020-11ec-9d64-0242ac120003
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.learningAssignment",
  "assignedDateTime": "2021-05-11T22:57:17+00:00",
  "assignmentType": "required",
  "assignerUserId": "cea1684d-57dc-438d-a9d1-e666ec1a7f3d",
  "completedDateTime": null,
  "completionPercentage": 20,
  "learningProviderId": "01e8f81b-3060-4dec-acf0-0389665a0a38",
  "dueDateTime": {
    "dateTime": "2022-09-22T16:05:00.0000000",
    "timeZone": "UTC"
  },
  "externalCourseActivityId": "12a2228a-e020-11ec-9d64-0242ac120002",
  "learningContentId": "57baf9dc-e020-11ec-9d64-0242ac120002",
  "learnerUserId": "7ba2228a-e020-11ec-9d64-0242ac120002",
  "notes": {
    "contentType": "text",
    "content": "required assignment added for user"
  },
  "status": "inProgress"
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 2: Update a self-initiated learning course activity

### Request

The following example shows the request.

<!-- {
  "blockType": "request",
  "name": "update_selfinitiated_learning_courseactivity"
}-->

``` http
PATCH https://graph.microsoft.com/beta/employeeExperience/learningCourseActivities/8ba2228a-e020-11ec-9d64-0242ac120004
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.learningSelfInitiatedCourse",
  "completedDateTime": null,
  "completionPercentage": 30,
  "externalCourseActivityId": "12a2228a-e020-11ec-9d64-0242ac120002",
  "learningContentId": "57baf9dc-e020-11ec-9d64-0242ac120002",
  "learningProviderId": "01e8f81b-3060-4dec-acf0-0389665a0a38",
  "startedDateTime": "2021-05-11T22:57:17+00:00",
  "status": "inProgress"
}
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
