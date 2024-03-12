---
title: "Delete chat"
description: "Delete a chat object."
author: "sthapliyal"
ms.prod: "microsoft-teams"
doc_type: apiPageType
ms.localizationpriority: medium
---

# Delete chat
Namespace: microsoft.graph

Soft-delete a [chat](../resources/chat.md). When invoked with delegated permissions, this operation only works for tenant admins and Teams service admins.

> **Notes:** 
> This operation is not supported for non-admin users.
> Only tenant admins for the user who initiated the chat can delete the chat. For example, if a user from tenant A creates a thread and then adds a user from tenant B, only the admin from tenant A can delete the thread.
> This API deletes 1:1 chats, meeting chats, and group chat threads. It does not delete channel chat threads.
> After chats are deleted, tenant admins have seven days to restore them. Chats deleted for more than seven days can't be restored.
> One delete request per second per tenant is allowed. 

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "chat_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/chat-delete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /chats/{chat-id}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "chat_delete",
  "sampleKeys": ["19:7d898072-792c-4006-bb10-5ca9f2590649_8ea0e38b-efb3-4757-924a-5f94061cf8c2@unq.gbl.spaces"]
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/chats/19:7d898072-792c-4006-bb10-5ca9f2590649_8ea0e38b-efb3-4757-924a-5f94061cf8c2@unq.gbl.spaces
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
