---
title: "List plannerChatMessages for a task"
description: "Get a list of the plannerChatMessage objects associated with the task."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# List plannerChatMessages for a task

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [plannerChatMessage](../resources/plannerchatmessage.md) objects associated with the task.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "task-list-messages-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/task-list-messages-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /users/{usersId}/planner/plans_v2/{planId}/tasks/{taskId}/messages
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [plannerChatMessage](../resources/plannerchatmessage.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_plannerchatmessage"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/{usersId}/planner/plans_v2/{planId}/tasks/{taskId}/messages
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerChatMessage"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.plannerChatMessage",
      "id": "260e1d70-6d06-3014-ceb0-4b020aa33c89",
      "messageType": "String",
      "content": "String",
      "properties": {
        "@odata.type": "microsoft.graph.chatMessageProperties"
      },
      "createdBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "createdDateTime": "String (timestamp)",
      "threadType": "String",
      "parentEntityId": "String",
      "isDeleted": "Boolean",
      "deletedTime": "String (timestamp)",
      "isEdited": "Boolean",
      "editedTime": "String (timestamp)"
    }
  ]
}
```

