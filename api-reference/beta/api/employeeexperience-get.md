---
title: "Get employeeExperience"
description: "Read the properties and relationships of an employeeExperience object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get employeeExperience
Namespace: microsoft.graph


Retrieves a particular course details for a user using courseActivityId

Read the properties and relationships of an [learningCourseActivity](../resources/learningcourseactivity.md) object.

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
``` http
GET users/{user-id}/employeeExperience/learningCourseActivities/{id}
This request is used by provider to retrive a particular course details for a user
```
or

``` http
GET me/employeeExperience/learningCourseActivities/{id}
This request is used if user is making the call for himself to retrive a particular course details
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

If successful, this method returns a 200 OK response code and a [learningCourseActivity](../resources/learningcourseactivity.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_employeeexperience"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/{user-id}/employeeExperience/learningCourseActivities/{id}
This request is used by provider to retrive a particular course details for a user
```
or

``` http
GET https://graph.microsoft.com/beta/me/employeeExperience/learningCourseActivities/{id}
This request is used if user is making the call for himself to retrive a particular course details
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.vivaLearning.employeeExperience"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.learningAssignment",
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#learningProviders('13727311-
  e7bb-470d-8b20-6a23d9030d70')/learningCourseActivities('7ba2228a-e020-11ec-9d64-
  0242ac120002')$entity",
  "assignmentType": "required",
  "notes": {
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
  "completionPercentage":20
}
```

