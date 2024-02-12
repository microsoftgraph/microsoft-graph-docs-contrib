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

Update the properties of a [learningCourseActivity](../resources/learningcourseactivity.md) object. 

>**Note**: Learning course activities can be managed by a provider only when **isCourseAcitvitySyncEnabled** is set to `true`.  To update the value, use the [Update learningProvider](../api/learningprovider-update.md) method.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "learningcourseactivity_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/learningcourseactivity-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
PATCH /employeeExperience/learningProviders/{registrationId}/learningCourseActivities/{learningCourseActivityId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, use @odata.type to specify the type of [learningCourseActivity](../resources/learningcourseactivity.md) resource ([learningAssignment](../resources/learningassignment.md) or [learningSelfInitiated](../resources/learningselfinitiatedcourse.md)), and include the properties of that type to update. 

The following table lists the properties you can change for an assigned learning course activity (**learningAssignment**).

|Property|Type|Description|
|:---|:---|:---|
|assignedDateTime|DateTimeOffset|Assigned date for the course activity. Optional.|
|completedDateTime|DateTimeOffset|Date and time when the assignment was completed. Optional.|
|completionPercentage|Int32|The percentage of the course the user completes. If a value is provided, it must be between `0` and `100` (inclusive). Optional.|
|dueDateTime|DateTimeOffset|The due date for the course activity. Optional.|
|notes|String|Notes for the course activity. Optional.|
|status|courseStatus|The status of the course activity. Possible values are `notStarted`, `inProgress`, `completed`. Required.|

The following table lists the properties you can change for a self-initiated learning course activity (**learningSelfInitiated**).

|Property|Type|Description|
|:---|:---|:---|
|completedDateTime|DateTimeOffset|Date and time when the assignment was completed. Optional.|
|completionPercentage|Int32|The percentage of the course completed by the user. If a value is provided, it must be between `0` and `100` (inclusive). Optional.|
|status|courseStatus|The status of the course activity. Possible values are: `inProgress`, `completed`. Required.|
|startedDateTime|DateTimeOffset|The date and time when the learner started the self-initiated course.|


## Response

If successful, this method returns a `204 No Content` response code.

If unsuccessful, this method returns one of the responses below:

|Scenario|HTTP code|Code|Message|Details|
|:---|:---|:---|:---|:---|
|Method not supported for entity|405|methodNotAllowed|This method isn't supported for this entity type. See the Microsoft Graph documentation for the methods applicable to this entity.|
|User doesn't have appropriate permission scope|403|Forbidden|Your account doesn't have access to this report or data. Contact your global administrator to request access.|
|Forbidden|403|Forbidden|You don't have an adequate service plan for this request.|
|Bad request|400|badRequest|This provider isn't enabled for the given tenant.|
|Bad request|400|badRequest|There was an issue with your request. Make sure the registrationId you entered is valid or registered for your tenant.|
|Bad request|404|notFound|The assignment ID requested doesn’t exist.|
|Internal server error|500|internalServerError|Internal server error.|
|Request throttled|429|tooManyRequests|{"code": "tooManyRequests","message": "Retry after {noOfMinutes} minutes".}|
|Service unavailable|503|serviceUnavailable|{"code": "serviceUnavailable","message": "Retry after {noOfMinutes} minutes"}.|
|Bad request|400|badRequest|Required fields are missing|{"code": "badRequest","message": "Input field {fieldName} is required"}.|
|Bad request|400|badRequest|Input fields are invalid|{"code": "badRequest","message": "Input field {fieldName} is invalid"}.|
|Bad request|400|badRequest|badRequest|{"code": "badRequest","message": "Input field {fieldName} shouldn't be empty"}.|
|Forbidden|403|Forbidden|The provider isn't valid to create course activity for the given learning content|When the registrationId/learningProviderId doesn't match with the provider with which the learningContent is created.|
|Forbidden|403|Forbidden|The user license is not valid to perform the operation|When the user for which the assignment is being created does not have a premium license.|

## Examples

### Example 1: Update an assigned learning course activity

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_assigned_learning_courseactivity"
}-->

``` http
PATCH https://graph.microsoft.com/v1.0/employeeExperience/learningProviders/01e8f81b-3060-4dec-acf0-0389665a0a38/learningCourseActivities/8ba2228a-e020-11ec-9d64-0242ac120003
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
  "externalcourseActivityId": "12a2228a-e020-11ec-9d64-0242ac120002",
  "learningContentId": "57baf9dc-e020-11ec-9d64-0242ac120002",
  "learnerUserId": "7ba2228a-e020-11ec-9d64-0242ac120002",
  "notes": {
    "contentType": "text",
    "content": "required assignment added for user"
  },
  "status": "inProgress"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-assigned-learning-courseactivity-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-assigned-learning-courseactivity-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-assigned-learning-courseactivity-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-assigned-learning-courseactivity-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-assigned-learning-courseactivity-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-assigned-learning-courseactivity-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-assigned-learning-courseactivity-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_selfinitiated_learning_courseactivity"
}-->

``` http
PATCH https://graph.microsoft.com/v1.0/employeeExperience/learningProviders/01e8f81b-3060-4dec-acf0-0389665a0a38/learningCourseActivities/8ba2228a-e020-11ec-9d64-0242ac120003
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.learningSelfInitiatedCourse",
  "completedDateTime": null,
  "completionPercentage": 30,
  "externalcourseActivityId": "12a2228a-e020-11ec-9d64-0242ac120002",
  "learningContentId": "57baf9dc-e020-11ec-9d64-0242ac120002",
  "learningProviderId": "01e8f81b-3060-4dec-acf0-0389665a0a38",
  "startedDateTime": "2021-05-11T22:57:17+00:00",
  "status": "inProgress"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-selfinitiated-learning-courseactivity-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-selfinitiated-learning-courseactivity-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-selfinitiated-learning-courseactivity-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-selfinitiated-learning-courseactivity-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-selfinitiated-learning-courseactivity-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-selfinitiated-learning-courseactivity-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-selfinitiated-learning-courseactivity-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
