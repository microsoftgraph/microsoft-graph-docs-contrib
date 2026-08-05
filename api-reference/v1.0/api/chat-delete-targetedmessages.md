---
title: "Delete targetedChatMessage"
description: "Delete a specific targeted message from a chat context."
author: "devjha-ms"
ms.date: 08/04/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# Delete targetedChatMessage

Namespace: microsoft.graph

Delete a specific [targeted message](../resources/targetedchatmessage.md) from a chat context. Teams administrators can use this API to remove targeted messages from group chats.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "chat-delete-targetedmessages-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/chat-delete-targetedmessages-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /users/{user-id | userPrincipalName}/chats/{chat-id}/targetedMessages/{message-id}
```

## Path parameters

|Parameter|Type|Description|
|:---|:---|:---|
|chat-id|String|Placeholder for the unique identifier of the chat where the targeted message was sent. Required.|
|message-id|String|Placeholder for the unique identifier of the targeted message to delete. This ID is unique within the context of the specified chat and user. Required.|
|user-id|String|Placeholder for the unique identifier or user principal name of the user to whom the targeted message was sent. Required.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_targetedchatmessage"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/users/f47b5f54-6968-4706-a522-31e842b12345/chats/19:eeaa4e946d674c4f8d4dded613780f45@thread.v2/targetedMessages/1580849738240
```

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
