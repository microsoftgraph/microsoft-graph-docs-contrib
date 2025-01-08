---
title: "mailFolder: updateAllMessagesReadState"
description: "Update the read state of all messages in a mailFolder object."
author: "ka-gunase"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# mailFolder: updateAllMessagesReadState

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the read state of all messages in a [mailFolder](../resources/mailfolder.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "mailfolder-updateallmessagesreadstate-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/mailfolder-updateallmessagesreadstate-permissions.md)]


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/mailFolders/{mailFolderId}/updateAllMessagesReadState
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|isRead|Boolean|Indicates whether to mark messages as read/unread.|
|suppressReadReceipts|Boolean|Indicates whether to suppress the read receipts for messages from the receiving end.|


## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "mailfolderthis.updateallmessagesreadstate"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/mailFolders/{mailFolderId}/updateAllMessagesReadState
Content-Type: application/json

{
  "isRead": "Boolean",
  "suppressReadReceipts": "Boolean"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

