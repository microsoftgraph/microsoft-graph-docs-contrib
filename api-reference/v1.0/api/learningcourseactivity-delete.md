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

Delete a [learningCourseActivity](../resources/learningcourseactivity.md) object using the course activity ID of either an assignment or a self-initiated activity.

>**Note**: A provider can only manage Learning course activities when **isCourseAcitvitySyncEnabled** is set to `true`.  To update the value, use the [Update learningProvider](../api/learningprovider-update.md) method.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "learningcourseactivity_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/learningcourseactivity-delete-permissions.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

If unsuccessful, this method returns one of the responses below:

|Scenario|HTTP code|Code|Message|
|:---|:---|:---|:---|:---|
|Method not supported for entity|405|methodNotAllowed|This method isn't supported for this entity type. See the Microsoft Graph documentation for the methods applicable to this entity.|
|User doesn't have the appropriate permissions scope|403|Forbidden|Your account doesn't have access to this report or data. Contact your global administrator to request access.|
|Forbidden|403|Forbidden|You don't have an adequate service plan for this request.|
|Bad request|400|badRequest|This provider isn't enabled for the given tenant.|
|Bad request|400|badRequest|There was an issue with your request. Make sure the registrationId you entered is valid or registered for your tenant.|
|Bad request|404|notFound|The requested assignment ID doesn’t exist.|
|Internal server error|500|internalServerError|Internal server error.|
|Request throttled|429|tooManyRequests|{"code": "tooManyRequests","message": "Retry after {noOfMinutes} minutes"}.|
|Service unavailable|503|serviceUnavailable|{"code": "serviceUnavailable","message": "Retry after {noOfMinutes} minutes"}.|

## Examples

### Request

The following example shows a request.

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

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```

### Error conditions

|Scenario|HTTP code|Code|Message|Details|
|:---|:---|:---|:---|:---|
|Method not supported for entity|405|MethodNotAllowed|This method isn't supported for this entity type.  See the Microsoft Graph documentation for the methods applicable to this entity|
|User doesn't have the appropriate permissions scope|403|Forbidden|Your account doesn't have access to this report or data. Contact your global administrator to request access.|
|Forbidden|403|Forbidden|You don't have a service plan adequate for this request.|
|Bad request|400|Bad Request|This provider isn't enabled for the given tenant.|
|Bad request|400|Bad Request|There was an issue with your request. Make sure the registrationId you entered is valid or registered for your tenant|
|Bad request|404|Not Found|The requested assignment {id} doesn’t exist.|
|Internal server error|500|Internal Server Error|Internal Server Error|
|Request throttled|429|Too Many Requests|{"code": "TooManyRequests","message": "Retry after {noOfMinutes} minutes"}|
|Service unavailable|503|Service Unavailable|{"code": "ServiceUnavailable","message": "Retry after {noOfMinutes} minutes"}|
