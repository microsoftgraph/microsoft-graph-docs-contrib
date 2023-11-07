---
title: "chat: removeAllAccessForUser"
description: "Removes access to chat for a user."
author: "DiegoCont"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# chat: removeAllAccessForUser
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Removes access to [chat](../resources/chat.md) for a user.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "chat-removeallaccessforuser-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/chat-removeallaccessforuser-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /chats/{chatsId}/removeAllAccessForUser
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON object with the following parameters.

|Parameter|Type|Description|
|:---|:---|:---|
|user|[teamworkUserIdentity](../resources/teamworkuseridentity.md)|User whose chat access to remove.|



## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "chatthis.removeallaccessforuser"
}
-->
``` http
POST https://graph.microsoft.com/beta/chats/{chatsId}/removeAllAccessForUser
Content-Type: application/json

{
  "user": {
    "@odata.type": "microsoft.graph.teamworkUserIdentity"
  }
}
```


### Response
The following example shows the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
