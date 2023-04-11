---
title: "learningCourseActivity: getByExternalCourseActivityId"
description: "Read the properties and relationships of a learningCourseActivity object."
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "employee-learning"
doc_type: apiPageType
---

# Get learningCourseActivity by ExternalCourseActivityId
Namespace: microsoft.graph

Retrieves a [learningCourseActivity](../resources/learningcourseactivity.md) object using externalCourseActivityId belonging to learning provider. ExternalCourseActivityId is set at the time of learning course activity creation.

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
GET /employeeExperience/learningProviders/{registrationId}/learningCourseActivities(extern
alCourseActivityId={externalCourseActivityId})
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

## Example

### Request
The following example shows the request to get details of a learning course activity using external course activity id:

<!-- {
  "blockType": "request",
  "name": "get_learning_courseactivity_details_externalId"
}-->

``` http
GET https://graph.microsoft.com/beta/employeeExperience/learningProviders/13727311-e7bb-470d-8b20-6a23d9030d70/learningCourseActivities(externalCourseActivityId=12a2228a-e020-11ec-9d64-0242ac120002)
```

### Response
The following is an example response of an assigned learning course activity by external course activityId.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.learningAssignment",
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#learningProviders('13727311-
  e7bb-470d-8b20-6a23d9030d70')/learningCourseActivities('7ba2228a-e020-11ec-9d64-
  0242ac120002')$entity",
  "assignedDateTime": "2021-05-11T22:57:17+00:00",
  "assignerUserId": "cea1684d-57dc-438d-a9d1-e666ec1a7f3d",
  "assignmentType": "required",
  "completedDateTime": null,  
  "completionPercentage":null,
  "externalCourseActivityId": "12a2228a-e020-11ec-9d64-0242ac120002",
  "id": "7ba2228a-e020-11ec-9d64-0242ac120002",
  "dueDateTime": {
    "dateTime": "2022-09-22T16:05:00.0000000",
    "timeZone": "UTC"
  },
  "learningContentId": "57baf9dc-e020-11ec-9d64-0242ac120002",
  "learnerUserId":"7ba2228a-e020-11ec-9d64-0242ac120002",  
  "notes":
  {
    "contentType": "text",
    "content": "required assignment added for user"
  },  
  "status": "NotStarted"
}
```