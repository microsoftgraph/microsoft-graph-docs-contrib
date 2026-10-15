---
title: "Update plannerChatMessage"
description: "Update the properties of a plannerChatMessage object."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# Update plannerChatMessage

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a plannerChatMessage object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "plannerchatmessage-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/plannerchatmessage-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /me/planner/plans_v2/{planId}/tasks/{taskId}/messages/{plannerChatMessageId}
PATCH /users/{usersId}/planner/plans_v2/{planId}/tasks/{taskId}/messages/{plannerChatMessageId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|messageType|plannerChatMessageType|Format of the message content. The possible values are: `richTextHtml`, `plainText`, `unknownFutureValue`. Optional.|
|content|String|Body content of the chat message. Optional.|
|properties|[chatMessageProperties](../resources/chatmessageproperties.md)|@mentions and reactions associated with the message. Optional.|
|threadType|plannerChatThreadType|Indicates whether the message belongs to a task-level or plan-level conversation. The possible values are: `task`, `plan`, `unknownFutureValue`. Optional.|
|parentEntityId|String|ID of the task or plan the message belongs to. Optional.|
|isDeleted|Boolean|Indicates whether the message was deleted. Optional.|
|deletedTime|DateTimeOffset|Date and time the message was deleted. Optional.|
|isEdited|Boolean|Indicates whether the message was edited after it was sent. Optional.|
|editedTime|DateTimeOffset|Date and time the message was last edited. Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [plannerChatMessage](../resources/plannerchatmessage.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_plannerchatmessage"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/me/planner/plans_v2/{planId}/tasks/{taskId}/messages/{plannerChatMessageId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.plannerChatMessage",
  "messageType": "plainText",
  "content": "Great progress on this task!",
  "properties": {
    "@odata.type": "microsoft.graph.chatMessageProperties"
  },
  "threadType": "task",
  "parentEntityId": "7e2b4a9d-3c61-4f8e-9a52-8d3c6f9b1a24",
  "isDeleted": false,
  "deletedTime": "2026-06-15T09:30:00Z",
  "isEdited": false,
  "editedTime": "2026-06-16T14:20:00Z"
}
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
```

