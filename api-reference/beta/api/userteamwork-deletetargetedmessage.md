---
title: "userTeamwork: deleteTargetedMessage"
description: "Delete a specific targeted message from a channel context."
author: "devjha-ms"
ms.date: 02/16/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# userTeamwork: deleteTargetedMessage

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a specific [targeted message](../resources/targetedchatmessage.md) from a channel context. Teams administrators can use this API to remove targeted messages by providing the message ID, team ID, and channel ID.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "userteamwork_deletetargetedmessage" } -->
[!INCLUDE [permissions-table](../includes/permissions/userteamwork-deletetargetedmessage-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /users/{user-id | userPrincipalName}/teamwork/deleteTargetedMessage
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
|channelId|String|The unique identifier of the channel where the targeted message was sent. Required.|
|messageId|String|The unique identifier of the targeted message to delete. This ID is unique within the context of the specified channel and user. Required.|
|teamId|String|The unique identifier of the team that contains the channel where the targeted message was sent. Required.|

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "userteamwork_deletetargetedmessage",
  "sampleKeys": ["f47b5f54-6968-4706-a522-31e842b12345"]
}
-->
``` http
POST https://graph.microsoft.com/beta/users/f47b5f54-6968-4706-a522-31e842b12345/teamwork/deleteTargetedMessage
Content-Type: application/json

{
  "teamId": "3Aeeaa4e946d674c4f8d4dded613780f45@thread.v2",
  "channelId": "19:eeaa4e946d674c4f8d4dded613780f45@thread.v2",
  "messageId": "1580849738240"
}
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
