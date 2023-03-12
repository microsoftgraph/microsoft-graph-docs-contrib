---
title: "List learningCourseActivities"
description: "Get a list of the learningCourseActivity objects and their properties."
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "employee-learning"
doc_type: apiPageType
---

# List learningCourseActivities
Namespace: microsoft.graph



Get a list of the [learningCourseActivity](../resources/learningcourseactivity.md) courses (assigned, recommended and self-initiated) for a user using UserId

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**LearningAssignedCourse.Read.All,LearningSelfInitiatedCourse.Read.All**|
|Delegated (personal Microsoft account)|**Not supported**|
|Application|**Not supported**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
Request for the signed-in user to retrieve all the course activities belonging to the user:

``` http
GET me/employeeExperience/learningCourseActivities
```
or

Request for a provider to retrieve all the course activities of a given user:

``` http
GET users/{user-id}/employeeExperience/learningCourseActivities
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

If successful, this method returns a `200 OK` response code and a collection of [learningCourseActivity](../resources/learningcourseactivity.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_learningcourseactivity"
}
-->
Request for a provider to retrieve all the course activities of a given user:

``` http
GET https://graph.microsoft.com/beta/users/{user-id}/employeeExperience/learningCourseActivities
```
or

Request for the signed-in user to retrieve all the course activities belonging to the user:

``` http
GET https://graph.microsoft.com/beta/me/employeeExperience/learningCourseActivities
```
### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{ 
 "@odata.context": "https://graph.microsoft.com/beta/$metadata#me/employeeExperience/learningCourseActivities$entity", 
 "@odata.nextLink": "https://graph.microsoft.com/beta/$metadata#me/employeeExperience/learningCourseActivities?$skip=10", 
 "value": [ 
 { 
  "@odata.type": "#microsoft.graph.learningAssignment", 
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#learningProviders('13727311-e7bb-470d-8b20-6a23d9030d70')/learningCourseActivities('7ba2228a-e020-11ec-9d64-0242ac120002')$entity",
  "assignmentType": "required", 
  "notes":  { 
    "contentType": "text", 
    "content": "required assignment added for user"
  },
  "dueDateTime":{ 
   "dateTime": "2022-09-22T16:05:00.0000000",
   "timeZone": "UTC"
  }, 
  "dueDateTime": "2021-05-11T22:57:17+00:00",
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
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#learningProviders('13727311-e7bb-470d-8b20-6a23d9030d70')/learningCourseActivities('be2f4d76-e020-11ec-9d64-0242ac120002')$entity", 
  "@odata.type": "#microsoft.graph.learningSelfInitiatedCourse", 
  "learningContentId": "57baf9dc-e020-11ec-9d64-0242ac120002", 
  "learnerUserId":"7ba2228a-e020-11ec-9d64-0242ac120002", 
  "status": "InProgress", 
  "completedDateTime": null, 
  "startedDateTime": "2021-05-21T22:57:17+00:00", 
  "externalCourseActivityId": "12a2228a-e020-11ec-9d64-0242ac120002", 
  "id": "7ba2228a-e020-11ec-9d64-0242ac120002", 
  "completionPercentage":20 
}] 
}

```

