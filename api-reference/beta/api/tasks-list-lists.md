---
title: "List lists"
description: "Get a list of the baseTaskList objects of a user and their properties."
author: "devindrajit"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
ms.topic: reference
---

# List lists (deprecated)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [todo-deprecate-basetaskapi](../includes/todo-deprecate-basetaskapi.md)]

Get a list of the [baseTaskList](../resources/basetasklist.md) objects of a user and their properties.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "tasks_list_lists" } -->
[!INCLUDE [permissions-table](../includes/permissions/tasks-list-lists-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/tasks/lists
GET /users/{userId|userPrincipalName}/tasks/lists
```

## Optional query parameters
This method supports `$expand`, `$filter` and `$top`  [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [baseTaskList](../resources/basetasklist.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_basetasklist"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/tasks/lists
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-basetasklist-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.baseTaskList)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "@odata.type": "#microsoft.graph.wellKnownTaskList",
            "@odata.etag": "W/\"kOO4xOT//0qFRAqk3TNe0QAAAAAAkw==\"",
            "wellKnownListName": "defaultList",
            "displayName": "Tasks",
            "id": "AQMkAGVjMzJmMWZjLTgyYjgtNGIyNi1hOGQ0LWRjMj"
        }
    ]
}
```

