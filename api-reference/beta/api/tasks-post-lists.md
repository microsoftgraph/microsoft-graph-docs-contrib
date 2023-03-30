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
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Tasks.ReadWrite|
|Delegated (personal Microsoft account)|Tasks.ReadWrite|
|Application|Not supported|

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

