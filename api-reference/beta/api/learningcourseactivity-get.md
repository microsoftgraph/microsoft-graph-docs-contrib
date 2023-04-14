---
title: "Get learningCourseActivity"
description: "Read the properties and relationships of a learningCourseActivity object."
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "employee-learning"
doc_type: apiPageType
---

# Get learningCourseActivity
Namespace: microsoft.graph

Read the properties and relationships of a [learningCourseActivity](../resources/learningcourseactivity.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LearningAssignedCourse.Read.All, LearningSelfInitiatedCourse.Read.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /employeeExperience/learningCourseActivities/{learningCourseActivityId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [learningCourseActivity](../resources/learningcourseactivity.md) object in the response body.

## Examples

### Example 1: Get an assigned learning course activity

#### Request
The following examples shows a request to get an assigned learning course activity.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_learning_courseactivity_details_id"
}-->

``` http
GET https://graph.microsoft.com/beta/employeeExperience/learningCourseActivities/7ba2228a-e020-11ec-9d64-0242ac120002
```

#### Response
The following example shows the response.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.learningAssignment"
}-->

``` http
HTTP/1.1 200 OK
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
  "completionPercentage":null,
  "dueDateTime": {
    "dateTime": "2022-09-22T16:05:00.0000000",
    "timeZone": "UTC"
  },  
  "externalCourseActivityId": "12a2228a-e020-11ec-9d64-0242ac120002",
  "id": "7ba2228a-e020-11ec-9d64-0242ac120002",
  "learningContentId": "57baf9dc-e020-11ec-9d64-0242ac120002",
  "learningProviderId": "13727311-e7bb-470d-8b20-6a23d9030d70",
  "learnerUserId":"7ba2228a-e020-11ec-9d64-0242ac120002",  
  "notes": {
    "contentType": "text",
    "content": "required assignment added for user"
  },
  "status": "notStarted"
}
```
### Example 2: Get a self-initiated learning course activity

#### Request
The following example shows a request to get a self-initiated learning course activity.

``` http
GET https://graph.microsoft.com/beta/employeeExperience/learningCourseActivities/{learningCourseActivityId}
```

#### Response

The following example shows the response.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#learningProviders('13727311-
  e7bb-470d-8b20-6a23d9030d70')/learningCourseActivities('be2f4d76-e020-11ec-9d64-
  0242ac120002')$entity",
  "@odata.type": "#microsoft.graph.learningSelfInitiatedCourse",
  "completedDateTime": null,
  "completionPercentage":null,
  "externalCourseActivityId": "12a2228a-e020-11ec-9d64-0242ac120002",
  "id": "7ba2228a-e020-11ec-9d64-0242ac120002",
  "learningContentId": "57baf9dc-e020-11ec-9d64-0242ac120002",
  "learningProviderId": "13727311-e7bb-470d-8b20-6a23d9030d70",
  "learnerUserId":"7ba2228a-e020-11ec-9d64-0242ac120002",
  "startedDateTime": "2021-05-21T22:57:17+00:00",
  "status": "inProgress"
}
```
