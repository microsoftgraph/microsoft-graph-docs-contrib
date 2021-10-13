---
title: "Mark chat unread for a user"
description: "This API will enable the callers to mark a chat as unread, from the given time."
author: "sweta-thapliyal"
ms.localizationpriority: Normal
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# chat: markChatUnreadForUser
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Marks [chat](../resources/chat.md) as unread for a user.

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
POST /chats/{chat-id}/markChatUnreadForUser
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|user|[teamworkUserIdentity](../resources/teamworkuseridentity.md)|User to unread the chat for. **In delegated, a user may only hide chat for themselves**.|
|tenantId|String|Tenant id of the user.|
|lastMessageReadDateTime|DateTimeOffset|Timestamp indicating the time after which all the which are sent and received are to be marked as unread|

> **Note:** lastMessageReadDateTime is optional in request. If not mentioned, the last message would be marked as Unread.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "chat_markchatunreadforuser"
}
-->
``` http
POST https://graph.microsoft.com/beta/chats/19:7d898072-792c-4006-bb10-5ca9f2590649_8ea0e38b-efb3-4757-924a-5f94061cf8c2@unq.gbl.spaces/markChatUnreadForUser
Content-Type: application/json
Content-length: 158

{
  "user": {
    "id" : "d864e79f-a516-4d0f-9fee-0eeb4d61fdc2"
  },
  "tenantId": "2a690434-97d9-4eed-83a6-f5f13600199a",
  "lastMessageReadDateTime": "2021-05-27T22:13:01.577Z"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

