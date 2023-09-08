---
title: "Delete learningCourseActivity"
description: "Delete a learningCourseActivity object by using the course activity ID of either an assignment or a self-initiated activity."
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "employee-learning"
doc_type: apiPageType
---

# Delete learningCourseActivity

Namespace: microsoft.graph

Delete a [learningCourseActivity](../resources/learningcourseactivity.md) object by using the course activity ID of either an assignment or a self-initiated activity.

>**Note**: Learning course activities can be managed by a provider only when **isCourseAcitvitySyncEnabled** is set to `true`.  To update the value, use the [Update learningProvider](../api/learningprovider-update.md) method.

## Permissions

One of the following permissions is required to call this API based on the type of learning course activity. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

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

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_learningCourseActivity",
  "sampleKeys": ["13727311-e7bb-470d-8b20-6a23d9030d70", "be2f4d76-e020-11ec-9d64-0242ac120002"]
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/employeeExperience/learningProviders/13727311-e7bb-470d-8b20-6a23d9030d70/learningCourseActivities/be2f4d76-e020-11ec-9d64-0242ac120002
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-learningcourseactivity-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/delete-learningcourseactivity-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-learningcourseactivity-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-learningcourseactivity-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-learningcourseactivity-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-learningcourseactivity-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-learningcourseactivity-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
