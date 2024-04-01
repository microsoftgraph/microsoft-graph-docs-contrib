---
title: "List myDayTasks"
description: "Retrieve a list of planner tasks to be shown in the MyDay view of the user."
ms.localizationpriority: medium
author: "NupurGarg"
ms.prod: "planner"
doc_type: apiPageType
---

# List myDayTasks

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of **plannerTask** objects to be shown in the MyDay view of the user.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "planneruser_list_mydaytasks" } -->
[!INCLUDE [permissions-table](../includes/permissions/planneruser-list-mydaytasks-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/planner/myDayTasks
GET /users/{id}/planner/myDayTasks
```

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [plannerTask](../resources/plannertask.md) objects in the response body.

This method can return any of the [HTTP status codes](/graph/errors). The most common errors that apps should handle for this method are the 403 and 404 responses. For more information about these errors, see [Common Planner error conditions](../resources/planner-overview.md#common-planner-error-conditions).

## Example
##### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "planneruser_get_mydaytasks"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/planner/myDayTasks
```
---

##### Response
The following example shows the response.

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerTask",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "createdBy": {
        "user": {
          "id": "6463a5ce-2119-4198-9f2a-628761df4a62"
        }
      },
      "planId": "xqQg5FS2LkCp935s-FIFm2QAFkHM",
      "bucketId": "gcrYAaAkgU2EQUvpkNNXLGQAGTtu",
      "title": "title-value",
      "orderHint": "9223370609546166567W",
      "assigneePriority": "90057581\"",
      "createdDateTime": "2015-03-25T18:36:49.2407981Z",
      "isOnMyDay": true,
      "id":"01gzSlKkIUSUl6DF_EilrmQAKDhh"
    }
  ]
}
```
