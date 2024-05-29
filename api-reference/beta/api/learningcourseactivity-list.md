---
title: "List learningCourseActivities"
description: "Get a list of the learningCourseActivity objects (assigned or self-initiated) for a user."
author: "malabikaroy"
ms.localizationpriority: medium
ms.subservice: "viva-learning"
doc_type: apiPageType
---

# List learningCourseActivities

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [learningCourseActivity](../resources/learningcourseactivity.md) objects (assigned or self-initiated) for a user.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "learningcourseactivity_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/learningcourseactivity-list-permissions.md)]

## HTTP request

To retrieve the course activity list for a signed-in user:

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/employeeExperience/learningCourseActivities
```

To retrieve the course activity list for a user:

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /users/{user-id}/employeeExperience/learningCourseActivities
```

## Optional query parameters

This method supports the `$skip`, `$top`, `$count`, and `$select` OData query parameters. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [learningCourseActivity](../resources/learningcourseactivity.md) objects in the response body.

## Examples

### Request

The following example shows how to retrieve all the course activities for a given user.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_learningcourseactivity"
}
-->

``` http
GET https://graph.microsoft.com/beta/users/7ba2228a-e020-11ec-9d64-0242ac120002/employeeExperience/learningCourseActivities
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-learningcourseactivity-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-learningcourseactivity-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-learningcourseactivity-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-learningcourseactivity-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-learningcourseactivity-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-learningcourseactivity-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-learningcourseactivity-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.learningCourseActivity)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#me/employeeExperience/learningCourseActivities$entity",
  "@odata.nextLink": "https://graph.microsoft.com/beta/$metadata#me/employeeExperience/learningCourseActivities?$skip=10",
  "value": [
    {
      "@odata.type": "#microsoft.graph.learningAssignment",
      "@odata.context": "https://graph.microsoft.com/beta/$metadata#learningProviders('13727311-e7bb-470d-8b20-6a23d9030d70')/learningCourseActivities('8ba2228a-e020-11ec-9d64-0242ac120003')$entity",
      "assignedDateTime": "2021-05-11T22:57:17+00:00",
      "assignmentType": "required",
      "assignerUserId": "cea1684d-57dc-438d-a9d1-e666ec1a7f3d",
      "completedDateTime": null,
      "completionPercentage": null,
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
    },
    {
      "@odata.context": "https://graph.microsoft.com/beta/$metadata#learningProviders('13727311-e7bb-470d-8b20-6a23d9030d70')/learningCourseActivities('be2f4d76-e020-11ec-9d64-0242ac120002')$entity",
      "@odata.type": "#microsoft.graph.learningSelfInitiatedCourse",
      "completedDateTime": null,
      "completionPercentage": 20,
      "externalCourseActivityId": "12a2228a-e020-11ec-9d64-0242ac120002",
      "id": "be2f4d76-e020-11ec-9d64-0242ac120002",
      "learningContentId": "57baf9dc-e020-11ec-9d64-0242ac120002",
      "learningProviderId": "13727311-e7bb-470d-8b20-6a23d9030d70",
      "learnerUserId": "7ba2228a-e020-11ec-9d64-0242ac120002",
      "startedDateTime": "2021-05-21T22:57:17+00:00",
      "status": "inProgress"
    }
  ]
}
```

