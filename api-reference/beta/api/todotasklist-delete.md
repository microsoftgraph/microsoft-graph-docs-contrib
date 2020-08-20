---
title: "Delete todoTaskList"
description: "Deletes a todoTaskList object."
author: "avijityadav"
localization_priority: Normal
ms.prod: "outlook"
doc_type: apiPageType
---

# Delete todoTaskList
Namespace: microsoft.graph
[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Deletes a [todoTaskList](../resources/todotasklist.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|Tasks.Read|
|Delegated (personal Microsoft account)|Tasks.Read|
|Application|Not supported|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /me/todo/lists/{todoTaskListId}
DELETE /users/{id|userPrincipalName}/todo/lists/{todoTaskListId}
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
<!-- {
  "blockType": "request",
  "sampleKeys": ["AAMkADIyAAAhrbPXAAA="],
  "name": "delete_todotasklist"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/me/todo/lists/AAMkADIyAAAhrbPXAAA=
```


### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

