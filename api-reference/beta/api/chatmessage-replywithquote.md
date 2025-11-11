---
title: "chatMessage: replyWithQuote"
description: "Reply with quote to a single chat message or multiple chat messages in a chat."
author: "sumanac"
ms.subservice: "teams"
doc_type: apiPageType
ms.localizationpriority: medium
ms.date: 02/20/2025
---

# chatMessage: replyWithQuote

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Reply with quote to a single [chat message](../resources/chatmessage.md) or multiple chat messages in a [chat](../resources/chat.md).

> [!NOTE]
> When replying with a quote to multiple messages, a maximum of 10 messages can be used for the reply.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "chatmessage_replywithquote" } -->
[!INCLUDE [permissions-table](../includes/permissions/chatmessage-replywithquote-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /chats/{chatId}/messages/replyWithQuote
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|messageIds|String collection|List of message IDs in a chat that are replied to with a quote. |
|replyMessage|[chatMessage](../resources/chatmessage.md)|The message body for the reply. |

## Response

If successful, this method returns a `201 Created` response code and a new [chatMessage](../resources/chatmessage.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "chatmessage.replyWithQuote",
  "sampleKeys": ["19:97641583cf154265a237da28ebbde27a@thread.v2"]
}
-->
```http
POST https://graph.microsoft.com/beta/chats/19:97641583cf154265a237da28ebbde27a@thread.v2/messages/replyWithQuote
Content-Type: application/json

{
  "messageIds": [
    "1728088338580"
  ],
  "replyMessage": {
    "body": {
      "content": "Hello World"
    }
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/chatmessagereplywithquote-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/chatmessagereplywithquote-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/chatmessagereplywithquote-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/chatmessagereplywithquote-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/chatmessagereplywithquote-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/chatmessagereplywithquote-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/chatmessagereplywithquote-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage"
}
-->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#chats('19%3A97641583cf154265a237da28ebbde27a%40thread.v2')/messages/$entity",
  "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET chats('<key>')/messages('<key>')?$select=attachments,body",
  "id": "1729091934196",
  "replyToId": null,
  "etag": "1729091934196",
  "messageType": "message",
  "createdDateTime": "2024-10-16T15:18:54.196Z",
  "lastModifiedDateTime": "2024-10-16T15:18:54.196Z",
  "lastEditedDateTime": null,
  "deletedDateTime": null,
  "subject": null,
  "summary": null,
  "chatId": "19:97641583cf154265a237da28ebbde27a@thread.v2",
  "importance": "normal",
  "locale": "en-us",
  "webUrl": null,
  "channelIdentity": null,
  "policyViolation": null,
  "eventDetail": null,
  "from": {
    "application": null,
    "device": null,
    "user": {
      "@odata.type": "#microsoft.graph.teamworkUserIdentity",
      "id": "28c10244-4bad-4fda-993c-f332faef94f0",
      "displayName": "Adele Vance",
      "userIdentityType": "aadUser",
      "tenantId": "2432b57b-0abd-43db-aa7b-16eadd115d34"
    }
  },
  "body": {
    "contentType": "html",
    "content": "<p></p>\n<attachment id=\"1728422677844\"></attachment>\ntest reply\n<p></p>"
  },
  "attachments": [
    {
      "id": "1728422677844",
      "contentType": "messageReference",
      "contentUrl": null,
      "content": "{\"messageId\":\"1728422677844\",\"messagePreview\":\"Hello World Jane Smith\",\"messageSender\":{\"application\":null,\"device\":null,\"user\":{\"userIdentityType\":\"aadUser\",\"tenantId\":\"2432b57b-0abd-43db-aa7b-16eadd115d34\",\"id\":\"28c10244-4bad-4fda-993c-f332faef94f0\",\"displayName\":\"Adele Vance\"}}}",
      "name": null,
      "thumbnailUrl": null,
      "teamsAppId": null
    }
  ],
  "mentions": [],
  "reactions": []
}
```
