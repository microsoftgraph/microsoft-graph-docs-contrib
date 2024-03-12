---
title: "deletedChat: undoDelete"
description: "Restores a deletedChat."
author: "sthapliyal"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# deletedChat: undoDelete
Namespace: microsoft.graph

Restore a  [deletedChat](../resources/deletedchat.md) to an active [chat](../resources/chat.md).

>**Note:** This operation is not supported for non-admin users.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "deletedchat_undodelete" } -->
[!INCLUDE [permissions-table](../includes/permissions/deletedchat-undodelete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /teamwork/deletedChats/{deletedChatId}/undoDelete
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
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "deletedchat.undodelete",
  "sampleKeys": ["19:64dedcac16b74a209b1f2ecb7f99c5e2@thread.v2"]
}
-->
``` http
POST https://graph.microsoft.com/v1.0/teamwork/deletedChats/19:64dedcac16b74a209b1f2ecb7f99c5e2@thread.v2/undoDelete
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