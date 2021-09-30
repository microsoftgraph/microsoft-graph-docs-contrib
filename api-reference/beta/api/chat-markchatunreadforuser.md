---
title: "chat: markChatUnreadForUser"
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
POST /chats/{chatsId}/markChatUnreadForUser
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
|user|[teamworkUserIdentity](../resources/teamworkuseridentity.md)|User to hide the chat for. **In delegated, a user may only hide chat for themselves**.|
|tenantId|String|Tenant id of the user.|
|lastMessageReadDateTime|DateTimeOffset|Time since the chat has to be marked unread|

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
POST https://graph.microsoft.com/beta/chats/{chatsId}/markChatUnreadForUser
Content-Type: application/json
Content-length: 158

{
  "user": {
    "@odata.type": "microsoft.graph.teamworkUserIdentity"
  },
  "tenantId": "String",
  "lastMessageReadDateTime": "String (timestamp)"
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

