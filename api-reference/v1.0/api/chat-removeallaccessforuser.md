---
title: "chat: removeAllAccessForUser"
description: "Remove access to a chat for a user."
author: "AdityaSharma6"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 11/4/2025
---

# chat: removeAllAccessForUser
Namespace: microsoft.graph

Remove access to a [chat](../resources/chat.md) for a user.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "chat_removeallaccessforuser" } -->
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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
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
POST https://graph.microsoft.com/v1.0/chats/{chatsId}/removeAllAccessForUser
Content-Type: application/json

{
  "user": {
    "@odata.type": "microsoft.graph.teamworkUserIdentity",
    "id": "f47ac10b-58cc-4372-a567-0e02b2c3d479",
    "tenantId": "a1b2c3d4-e5f6-7890-1234-567890abcdef"
  }
}
```
---

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
