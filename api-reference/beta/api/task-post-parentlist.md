---
title: "Add baseTaskList"
description: "Add parentList by posting to the parentList collection."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Add baseTaskList

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add parentList by posting to the parentList collection.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|LifecycleWorkflows.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LifecycleWorkflows.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /users/{usersId}/tasks/lists/{baseTaskListId}/tasks/{baseTaskId}/parentList/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [baseTaskList](../resources/basetasklist.md) object.

You can specify the following properties when creating a **baseTaskList**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the task list. Optional.|

## Response

If successful, this method returns a `204 No Content` response code and a [baseTaskList](../resources/basetasklist.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_basetasklist_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/users/{usersId}/tasks/lists/{baseTaskListId}/tasks/{baseTaskId}/parentList/$ref
Content-Type: application/json
Content-length: 82

{
  "@odata.type": "#microsoft.graph.baseTaskList",
  "displayName": "String"
}
```

### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.baseTaskList"
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.baseTaskList",
  "id": "177aa63d-53d4-0feb-3b42-f1a0d3b4291e",
  "displayName": "String"
}
```
