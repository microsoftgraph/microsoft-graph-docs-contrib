---
title: "Get learningCourseActivityByExternalCourseActivityId"
description: "Read the properties and relationships of a learningCourseActivity object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get learningCourseActivity by ExternalCourseActivityId
Namespace: microsoft.graph

Retrieves the Course Activity using ExternalCourseActivityId that is sent by learning provider in the Create course activity api call.

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

## Example-1

### Response
The following is an example response of an assigned learning course activity.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.learningAssignment",
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#learningProviders('13727311-
  e7bb-470d-8b20-6a23d9030d70')/learningCourseActivities('7ba2228a-e020-11ec-9d64-
  0242ac120002')$entity",
  "assignmentType": "required",
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
  "id": "7ba2228a-e020-11ec-9d64-0242ac120002" 
  "completionPercentage":null
}
```
## Example-2

### Response
The following is an example response of an self-initiated learning course activity.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#learningProviders('13727311-
  e7bb-470d-8b20-6a23d9030d70')/learningCourseActivities('be2f4d76-e020-11ec-9d64-
  0242ac120002')$entity",
  "@odata.type": "#microsoft.graph.learningSelfInitiatedCourse",
  "learningContentId": "57baf9dc-e020-11ec-9d64-0242ac120002",
  "learnerUserId":"7ba2228a-e020-11ec-9d64-0242ac120002",
  "status": "InProgress",
  "completedDateTime": null,
  "startedDateTime": "2021-05-21T22:57:17+00:00",
  "externalCourseActivityId": "12a2228a-e020-11ec-9d64-0242ac120002",
  "id": "7ba2228a-e020-11ec-9d64-0242ac120002"
  "completionPercentage":null
}
```