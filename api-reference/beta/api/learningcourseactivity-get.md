---
title: "Get learningCourseActivity"
description: "Get the specified learningCourseActivity object using either an ID or an externalCourseActivityId of the learning provider, or a courseActivityId of a user."
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "employee-learning"
doc_type: apiPageType
---

# Get learningCourseActivity

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the specified [learningCourseActivity](../resources/learningcourseactivity.md) object using either an ID or an **externalCourseActivityId** of the learning provider, or a **courseActivityId** of a user.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                           |
|:---------------------------------------|:----------------------------------------------------------------------|
| Delegated (work or school account)     | LearningAssignedCourse.Read, LearningSelfInitiatedCourse.Read         |
| Delegated (personal Microsoft account) | Not supported.                                                        |
| Application                            | LearningAssignedCourse.Read.All, LearningSelfInitiatedCourse.Read.All |

## HTTP request

To get a specific learning course activity based on its ID (primary key):
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /employeeExperience/learningCourseActivities/{Id}
```

To get a specific learning course activity based on its **externalCourseActivityId** (secondary key):
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /employeeExperience/learningProviders/{registrationId}/learningCourseActivities(externalCourseActivityId={externalCourseActivityId})
```

To get the details of a learning course activity for a user:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET users/{user-id}/employeeExperience/learningCourseActivities/{id}
```

To get the details of a learning course activity for the signed-in user:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET me/employeeExperience/learningCourseActivities/{id}
```

## Optional query parameters

This method supports the `$select` and other OData query parameters to customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [learningCourseActivity](../resources/learningcourseactivity.md) object in the response body.

## Examples

### Example 1: Get a learning course activity based on its ID

#### Request

The following examples shows a request to get an learning course activity using an ID.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_learning_courseactivity_details_id"
}-->

``` http
GET https://graph.microsoft.com/beta/employeeExperience/learningCourseActivities/8ba2228a-e020-11ec-9d64-0242ac120003
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-learning-courseactivity-details-id-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-learning-courseactivity-details-id-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-learning-courseactivity-details-id-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-learning-courseactivity-details-id-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-learning-courseactivity-details-id-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-learning-courseactivity-details-id-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#learningProviders('13727311-e7bb-470d-8b20-6a23d9030d70')/learningCourseActivities('7ba2228a-e020-11ec-9d64-0242ac120002')$entity",
  "assignedDateTime": "2021-05-11T22:57:17+00:00",
  "assignmentType": "required",
  "assignerUserId": "cea1684d-57dc-438d-a9d1-e666ec1a7f3d",
  "completedDateTime": null,
  "completionPercentage": null,
  "dueDateTime": {
    "dateTime": "2022-09-22T16:05:00.0000000",
    "timeZone": "UTC"
  },
  "externalCourseActivityId": "12a2228a-e020-11ec-9d64-0242ac120002",
  "id": "8ba2228a-e020-11ec-9d64-0242ac120003",
  "learningContentId": "57baf9dc-e020-11ec-9d64-0242ac120002",
  "learningProviderId": "13727311-e7bb-470d-8b20-6a23d9030d70",
  "learnerUserId": "7ba2228a-e020-11ec-9d64-0242ac120002",
  "notes": {
    "contentType": "text",
    "content": "required assignment added for user"
  },
  "status": "notStarted"
}
```
### Example 2: Get a learning course activity based on the externalCourseActivityId of the learning provider

#### Request

The following example shows a request to get the details of a learning course activity using an external course activity ID.

<!-- {
  "blockType": "request",
  "name": "get_learning_courseactivity_details_externalId"
}-->

``` http
GET https://graph.microsoft.com/beta/employeeExperience/learningProviders/01e8f81b-3060-4dec-acf0-0389665a0a38/learningCourseActivities(externalCourseActivityId=12a2228a-e020-11ec-9d64-0242ac120002)
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#learningProviders('01e8f81b-3060-4dec-acf0-0389665a0a38')/learningCourseActivities('8ba2228a-e020-11ec-9d64-0242ac120003')$entity",
  "assignedDateTime": "2021-05-11T22:57:17+00:00",
  "assignerUserId": "cea1684d-57dc-438d-a9d1-e666ec1a7f3d",
  "assignmentType": "required",
  "completedDateTime": null,
  "completionPercentage": null,
  "externalCourseActivityId": "12a2228a-e020-11ec-9d64-0242ac120002",
  "id": "8ba2228a-e020-11ec-9d64-0242ac120003",
  "dueDateTime": {
    "dateTime": "2022-09-22T16:05:00.0000000",
    "timeZone": "UTC"
  },
  "learningContentId": "57baf9dc-e020-11ec-9d64-0242ac120002",
  "learningProviderId": "01e8f81b-3060-4dec-acf0-0389665a0a38",
  "learnerUserId": "7ba2228a-e020-11ec-9d64-0242ac120002",
  "notes": {
    "contentType": "text",
    "content": "required assignment added for user"
  },
  "status": "notStarted"
}
```

### Example 3: Get the details of a learning course activity for a user

#### Request

The following example shows a request to get the details of a learning course activity for a user.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_learning_courseactivity_details"
}-->

``` http
GET https://graph.microsoft.com/beta/users/7ba2228a-e020-11ec-9d64-0242ac120002/employeeExperience/learningCourseActivities/8ba2228a-e020-11ec-9d64-0242ac120003
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-learning-courseactivity-details-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-learning-courseactivity-details-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-learning-courseactivity-details-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-learning-courseactivity-details-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-learning-courseactivity-details-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-learning-courseactivity-details-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#learningProviders('13727311-e7bb-470d-8b20-6a23d9030d70')/learningCourseActivities('8ba2228a-e020-11ec-9d64-0242ac120003')$entity",
  "assignedDateTime": "2021-05-11T22:57:17+00:00",
  "assignmentType": "required",
  "assignerUserId": "cea1684d-57dc-438d-a9d1-e666ec1a7f3d",
  "completedDateTime": null,
  "completionPercentage": 20,
  "externalCourseActivityId": "12a2228a-e020-11ec-9d64-0242ac120002",
  "id": "8ba2228a-e020-11ec-9d64-0242ac120003",
  "dueDateTime": {
    "dateTime": "2022-09-22T16:05:00.0000000",
    "timeZone": "UTC"
  },
  "learningContentId": "57baf9dc-e020-11ec-9d64-0242ac120002",
  "learningProviderId": "13727311-e7bb-470d-8b20-6a23d9030d70",
  "learnerUserId": "7ba2228a-e020-11ec-9d64-0242ac120002",
  "notes": {
    "contentType": "text",
    "content": "required assignment added for user"
  },
  "status": "notStarted"
}
```
