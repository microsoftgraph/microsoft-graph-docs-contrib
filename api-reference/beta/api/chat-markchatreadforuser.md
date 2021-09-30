---
title: "chat: markChatReadForUser"
description: "This API will enable the caller to mark the chat read till the current time, or the last message received or sent."
author: "sweta-thapliyal"
ms.localizationpriority: Normal
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# chat: markChatReadForUser
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Marks [chat](../resources/chat.md) as Read for a user.

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
POST /chats/{chatsId}/markChatReadForUser
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
|user|[teamworkUserIdentity](../resources/teamworkuseridentity.md)|**TODO: Add Description**|
|tenantId|String|**TODO: Add Description**|



## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "chat_markchatreadforuser"
}
-->
``` http
POST https://graph.microsoft.com/beta/chats/{chatsId}/markChatReadForUser
Content-Type: application/json
Content-length: 106

{
  "user": {
    "@odata.type": "microsoft.graph.teamworkUserIdentity"
  },
  "tenantId": "String"
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

