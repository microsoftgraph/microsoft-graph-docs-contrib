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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Restore a  [deletedChat](../resources/deletedchat.md) to an active [chat](../resources/chat.md).

>**Note:** This operation is not supported for non-admin users.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Chat.ManageDeletion.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Chat.ManageDeletion.All|

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
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "deletedchat.undodelete",
  "sampleKeys": ["19:64dedcac16b74a209b1f2ecb7f99c5e2@thread.v2"]
}
-->
``` http
POST https://graph.microsoft.com/beta/teamwork/deletedChats/19:64dedcac16b74a209b1f2ecb7f99c5e2@thread.v2/undoDelete
```


### Response
The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

