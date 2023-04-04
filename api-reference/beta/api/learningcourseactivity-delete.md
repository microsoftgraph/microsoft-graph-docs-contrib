---
title: "Delete learningCourseActivity"
description: "Delete a learningCourseActivity object."
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "employee-learning"
doc_type: apiPageType
---

# Delete learningCourseActivity
Namespace: microsoft.graph

Delete a [learningCourseActivity](../resources/learningcourseactivity.md) using a course activity Id of a Learning Assignment or Self-initiated.

## Permissions
One of the following permissions is required to call this API based on the type of learning course activity. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LearningAssignedCourse.ReadWrite.All, LearningSelfInitiatedCourse.ReadWrite.All|

## HTTP request

``` http
DELETE /employeeExperience/learningProviders/{registrationId}/learningCourseActivities/{id}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.

``` http
DELETE https://graph.microsoft.com/beta/employeeExperience/learningProviders/{registrationId}/learningCourseActivities/{id}
```


### Response
The following is an example of the response.

``` http
HTTP/1.1 204 OK

No Content
```
