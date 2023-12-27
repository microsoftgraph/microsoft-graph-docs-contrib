---
title: "Create taskList"
description: "Create a new taskList object."
author: "devindrajit"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: apiPageType
---

# Create baseTaskList (deprecated)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [todo-deprecate-basetaskapi](../includes/todo-deprecate-basetaskapi.md)]

Create a new [baseTaskList](../resources/basetasklist.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "tasks_post_lists" } -->
[!INCLUDE [permissions-table](../includes/permissions/tasks-post-lists-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/tasks/lists
POST /users/{userId|userPrincipalName}/tasks/lists
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [baseTaskList](../resources/basetasklist.md) object.

The following table shows the properties that are required when you create a **baseTaskList**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Field indicating title of the task list.|



## Response

If successful, this method returns a `201 Created` response code and a [baseTaskList](../resources/basetasklist.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_tasklist_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/tasks/lists
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.taskList",
    "displayName": "Shopping list"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-tasklist-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.taskList"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.taskList",
    "@odata.etag": "W/\"kOO4xOT//0qFRAqk3TNe0QAABCE3Uw==\"",
    "displayName": "Shopping list",
    "id": "AAMkAGVjMzJmMWZjLTgyYjgtNGIyNi1hOGQ0LWRjMjNmMGRmOWNi"
}
```

