---
title: "chat: hideForUser"
description: "Hide a chat for a user."
author: "RamjotSingh"
ms.prod: "microsoft-teams"
doc_type: apiPageType
ms.localizationpriority: medium
---

# chat: hideForUser
Namespace: microsoft.graph

Hide a [chat](../resources/chat.md) for a user.

> **Note:** A chat is automatically unhidden for a user if an action such as *Send message* is taken at the chat level.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Chat.ReadWrite|
|Delegated (personal Microsoft account) | Not supported. |
|Application | Not supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /chats/{chatsId}/hideForUser
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|user|[teamworkUserIdentity](../resources/teamworkuseridentity.md)|User to hide the chat for. **In delegated mode, users can only hide a chat for themselves**.|

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "chat_hideforuser",
  "sampleKeys": ["19:7d898072-792c-4006-bb10-5ca9f2590649_8ea0e38b-efb3-4757-924a-5f94061cf8c2@unq.gbl.spaces"]
}
-->
``` http
POST https://graph.microsoft.com/v1.0/chats/19:7d898072-792c-4006-bb10-5ca9f2590649_8ea0e38b-efb3-4757-924a-5f94061cf8c2@unq.gbl.spaces/hideForUser
Content-Type: application/json

{
  "user": {
    "id" : "d864e79f-a516-4d0f-9fee-0eeb4d61fdc2",
    "tenantId": "2a690434-97d9-4eed-83a6-f5f13600199a"
  }
}
```
---



### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

