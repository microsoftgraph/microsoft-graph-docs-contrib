---
title: "Send chatMessage in a channel or a chat"
description: "Send a new chatMessage in the specified channel or a chat."
ms.localizationpriority: medium
author: "RamjotSingh"
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Send chatMessage in a channel or a chat

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Send a new [chatMessage](../resources/chatmessage.md) in the specified [channel](../resources/channel.md) or a [chat](../resources/chat.md).

> **Note**: We don't recommend that you use this API for data migration. It does not have the throughput necessary for a typical migration.

> **Note**: It is a violation of the [terms of use](/legal/microsoft-apis/terms-of-use) to use Microsoft Teams as a log file. Only send messages that people will read.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### Permissions for channel
| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | ChannelMessage.Send, Group.ReadWrite.All** |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Teamwork.Migrate.All |

> **Note**: Permissions marked with ** are supported only for backward compatibility. We recommend that you update your solutions to use an alternative permission listed in the previous table and avoid using these permissions going forward.

> **Note**: Application permissions are *only* supported for [migration](/microsoftteams/platform/graph-api/import-messages/import-external-messages-to-teams). In the future, Microsoft may require you or your customers to pay additional fees based on the amount of data imported.

### Permissions for chat
| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | ChatMessage.Send, Chat.ReadWrite |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

**Sending message in a channel**
<!-- { "blockType": "ignored" } -->
```http
POST /teams/{team-id}/channels/{channel-id}/messages
```

**Sending replies in a channel**
<!-- { "blockType": "ignored" } -->
```http
POST /teams/{team-id}/channels/{channel-id}/messages/{message-id}/replies
```

**Sending message in a chat**
<!-- { "blockType": "ignored" } -->
```http
POST /chats/{chat-id}/messages
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {code}. Required. |
| Content-type | application/json. Required. |

## Request body

In the request body, supply a JSON representation of a [chatMessage](../resources/chatmessage.md) object. Only the body property is mandatory; other properties are optional.


## Response

If successful, this method returns a `201 Created` response code and a new [chatMessage](../resources/chatmessage.md) object in the response body.

## Examples

In the following examples, the URL can use the [HTTP syntax](#http-request) described to [send a message to a chat](chat-post-messages.md), [send a message to a channel](channel-post-messages.md), or [send reply to a channel](chatmessage-post-replies.md).

### Example 1: Send a Hello World message in a channel

#### Request
The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_chatmessage_1",
  "sampleKeys": ["fbe2bf47-16c8-47cf-b4a5-4b9b187c508b", "19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2"]
}-->
```http
POST https://graph.microsoft.com/beta/teams/fbe2bf47-16c8-47cf-b4a5-4b9b187c508b/channels/19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2/messages
Content-type: application/json

{
  "body": {
    "content": "Hello World"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-chatmessage-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-chatmessage-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-chatmessage-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-chatmessage-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/post-chatmessage-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-chatmessage-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#teams('fbe2bf47-16c8-47cf-b4a5-4b9b187c508b')/channels('19%3A4a95f7d8db4c4e7fae857bcebe0623e6%40thread.tacv2')/messages/$entity",
    "id": "1616990032035",
    "replyToId": null,
    "etag": "1616990032035",
    "messageType": "message",
    "createdDateTime": "2021-03-29T03:53:52.035Z",
    "lastModifiedDateTime": "2021-03-29T03:53:52.035Z",
    "lastEditedDateTime": null,
    "deletedDateTime": null,
    "subject": null,
    "summary": null,
    "chatId": null,
    "importance": "normal",
    "locale": "en-us",
    "webUrl": "https://teams.microsoft.com/l/message/19%3A4a95f7d8db4c4e7fae857bcebe0623e6%40thread.tacv2/1616990032035?groupId=fbe2bf47-16c8-47cf-b4a5-4b9b187c508b&tenantId=2432b57b-0abd-43db-aa7b-16eadd115d34&createdTime=1616990032035&parentMessageId=1616990032035",
    "policyViolation": null,
    "eventDetail": null,
    "from": {
        "application": null,
        "device": null,
        "user": {
            "id": "8ea0e38b-efb3-4757-924a-5f94061cf8c2",
            "displayName": "Robin Kline",
            "userIdentityType": "aadUser"
        }
    },
    "body": {
        "contentType": "text",
        "content": "Hello World"
    },
    "channelIdentity": {
        "teamId": "fbe2bf47-16c8-47cf-b4a5-4b9b187c508b",
        "channelId": "19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2"
    },
    "onBehalfOf": null,
    "attachments": [],
    "mentions": [],
    "reactions": [],
    "messageHistory": []
}
```

### Example 2: @mentions a user in a channel message

#### Request
The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_chatmessage_2",
  "sampleKeys": ["fbe2bf47-16c8-47cf-b4a5-4b9b187c508b", "19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2"]
}-->
```http
POST https://graph.microsoft.com/beta/teams/fbe2bf47-16c8-47cf-b4a5-4b9b187c508b/channels/19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2/messages
Content-type: application/json

{
  "body": {
    "contentType": "html",
    "content": "Hello World <at id=\"0\">Jane Smith</at>"
  },
  "mentions": [
    {
      "id": 0,
      "mentionText": "Jane Smith",
      "mentioned": {
        "user": {
          "displayName": "Jane Smith",
          "id": "ef1c916a-3135-4417-ba27-8eb7bd084193",
          "userIdentityType": "aadUser"
        }
      }
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-chatmessage-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-chatmessage-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-chatmessage-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-chatmessage-2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/post-chatmessage-2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-chatmessage-2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#teams('fbe2bf47-16c8-47cf-b4a5-4b9b187c508b')/channels('19%3A4a95f7d8db4c4e7fae857bcebe0623e6%40thread.tacv2')/messages/$entity",
    "id": "1616965872395",
    "replyToId": null,
    "etag": "1616965872395",
    "messageType": "message",
    "createdDateTime": "2021-03-28T21:11:12.395Z",
    "lastModifiedDateTime": "2021-03-28T21:11:12.395Z",
    "lastEditedDateTime": null,
    "deletedDateTime": null,
    "subject": null,
    "summary": null,
    "chatId": null,
    "importance": "normal",
    "locale": "en-us",
    "webUrl": "https://teams.microsoft.com/l/message/19%3A4a95f7d8db4c4e7fae857bcebe0623e6%40thread.tacv2/1616965872395?groupId=fbe2bf47-16c8-47cf-b4a5-4b9b187c508b&tenantId=2432b57b-0abd-43db-aa7b-16eadd115d34&createdTime=1616965872395&parentMessageId=1616965872395",
    "policyViolation": null,
    "eventDetail": null,
    "from": {
        "application": null,
        "device": null,
        "user": {
            "id": "8ea0e38b-efb3-4757-924a-5f94061cf8c2",
            "displayName": "Robin Kline",
            "userIdentityType": "aadUser"
        }
    },
    "body": {
        "contentType": "html",
        "content": "Hello World <at id=\"0\">Jane Smith</at>"
    },
    "channelIdentity": {
        "teamId": "fbe2bf47-16c8-47cf-b4a5-4b9b187c508b",
        "channelId": "19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2"
    },
    "attachments": [],
    "mentions": [
        {
            "id": 0,
            "mentionText": "Jane Smith",
            "mentioned": {
                "application": null,
                "device": null,
                "conversation": null,
                "user": {
                    "id": "ef1c916a-3135-4417-ba27-8eb7bd084193",
                    "displayName": "Jane Smith",
                    "userIdentityType": "aadUser"
                }
            }
        }
    ],
    "reactions": [],
    "messageHistory": []
}
```

### Example 3: Send message that contains cards

#### Request
The following is an example of the request.

> **Note:** The attachment ID must be unique and can be a new randomly generated GUID. However, the attachment ID must be the same in the _body_ and _attachments_ elements.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_chatmessage_3",
  "sampleKeys": ["fbe2bf47-16c8-47cf-b4a5-4b9b187c508b", "19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2"]
}-->

```http
POST https://graph.microsoft.com/beta/teams/fbe2bf47-16c8-47cf-b4a5-4b9b187c508b/channels/19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2/messages
Content-type: application/json

{
    "subject": null,
    "body": {
        "contentType": "html",
        "content": "<attachment id=\"74d20c7f34aa4a7fb74e2b30004247c5\"></attachment>"
    },
    "attachments": [
        {
            "id": "74d20c7f34aa4a7fb74e2b30004247c5",
            "contentType": "application/vnd.microsoft.card.thumbnail",
            "contentUrl": null,
            "content": "{\r\n  \"title\": \"This is an example of posting a card\",\r\n  \"subtitle\": \"<h3>This is the subtitle</h3>\",\r\n  \"text\": \"Here is some body text. <br>\\r\\nAnd a <a href=\\\"http://microsoft.com/\\\">hyperlink</a>. <br>\\r\\nAnd below that is some buttons:\",\r\n  \"buttons\": [\r\n    {\r\n      \"type\": \"messageBack\",\r\n      \"title\": \"Login to FakeBot\",\r\n      \"text\": \"login\",\r\n      \"displayText\": \"login\",\r\n      \"value\": \"login\"\r\n    }\r\n  ]\r\n}",
            "name": null,
            "thumbnailUrl": null
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-chatmessage-3-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-chatmessage-3-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-chatmessage-3-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-chatmessage-3-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/post-chatmessage-3-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-chatmessage-3-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#teams('fbe2bf47-16c8-47cf-b4a5-4b9b187c508b')/channels('19%3A4a95f7d8db4c4e7fae857bcebe0623e6%40thread.tacv2')/messages/$entity",
    "id": "1616991851162",
    "replyToId": null,
    "etag": "1616991851162",
    "messageType": "message",
    "createdDateTime": "2021-03-29T04:24:11.162Z",
    "lastModifiedDateTime": "2021-03-29T04:24:11.162Z",
    "lastEditedDateTime": null,
    "deletedDateTime": null,
    "subject": null,
    "summary": null,
    "chatId": null,
    "importance": "normal",
    "locale": "en-us",
    "webUrl": "https://teams.microsoft.com/l/message/19%3A4a95f7d8db4c4e7fae857bcebe0623e6%40thread.tacv2/1616991851162?groupId=fbe2bf47-16c8-47cf-b4a5-4b9b187c508b&tenantId=2432b57b-0abd-43db-aa7b-16eadd115d34&createdTime=1616991851162&parentMessageId=1616991851162",
    "policyViolation": null,
    "eventDetail": null,
    "from": {
        "application": null,
        "device": null,
        "user": {
            "id": "8ea0e38b-efb3-4757-924a-5f94061cf8c2",
            "displayName": "Robin Kline",
            "userIdentityType": "aadUser"
        }
    },
    "body": {
        "contentType": "html",
        "content": "<attachment id=\"74d20c7f34aa4a7fb74e2b30004247c5\"></attachment>"
    },
    "channelIdentity": {
        "teamId": "fbe2bf47-16c8-47cf-b4a5-4b9b187c508b",
        "channelId": "19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2"
    },
    "attachments": [
        {
            "id": "74d20c7f34aa4a7fb74e2b30004247c5",
            "contentType": "application/vnd.microsoft.card.thumbnail",
            "contentUrl": null,
            "content": "{  \"title\": \"This is an example of posting a card\",  \"subtitle\": \"<h3>This is the subtitle</h3>\",  \"text\": \"Here is some body text. <br>\\\\And a <a href=\\\"http://microsoft.com/\\\">hyperlink</a>. <br>\\\\And below that is some buttons:\",  \"buttons\": [    {      \"type\": \"messageBack\",      \"title\": \"Login to FakeBot\",      \"text\": \"login\",      \"displayText\": \"login\",      \"value\": \"login\"    }  ]}",
            "name": null,
            "thumbnailUrl": null
        }
    ],
    "onBehalfOf": null,
    "mentions": [],
    "reactions": [],
    "messageHistory": []
}
```

### Example 4: Send a message with file attachment in it

#### Request
The following is an example of the request.

>**Note:** The file must already be in SharePoint. To find the file properties, GET the **driveItem** for the file. For example, /drives/{id}/items/{id}. Your attachment ID is the GUID in the **eTag** of the **driveItem**, your attachment **contentURL** is the **webUrl** of the **driveItem**'s folder plus the **driveItem**'s name, and your attachment name is the **driveItem**'s name.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_chatmessage_4",
  "sampleKeys": ["fbe2bf47-16c8-47cf-b4a5-4b9b187c508b", "19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2"]
}-->
```http
POST https://graph.microsoft.com/beta/teams/fbe2bf47-16c8-47cf-b4a5-4b9b187c508b/channels/19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2/messages
Content-type: application/json

{
    "body": {
        "contentType": "html",
        "content": "Here's the latest budget. <attachment id=\"153fa47d-18c9-4179-be08-9879815a9f90\"></attachment>"
    },
    "attachments": [
        {
            "id": "153fa47d-18c9-4179-be08-9879815a9f90",
            "contentType": "reference",
            "contentUrl": "https://m365x987948.sharepoint.com/sites/test/Shared%20Documents/General/test%20doc.docx",
            "name": "Budget.docx"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-chatmessage-4-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-chatmessage-4-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-chatmessage-4-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-chatmessage-4-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/post-chatmessage-4-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-chatmessage-4-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#teams('fbe2bf47-16c8-47cf-b4a5-4b9b187c508b')/channels('19%3A4a95f7d8db4c4e7fae857bcebe0623e6%40thread.tacv2')/messages/$entity",
    "id": "1616991899452",
    "replyToId": null,
    "etag": "1616991899452",
    "messageType": "message",
    "createdDateTime": "2021-03-29T04:24:59.452Z",
    "lastModifiedDateTime": "2021-03-29T04:24:59.452Z",
    "lastEditedDateTime": null,
    "deletedDateTime": null,
    "subject": null,
    "summary": null,
    "chatId": null,
    "importance": "normal",
    "locale": "en-us",
    "webUrl": "https://teams.microsoft.com/l/message/19%3A4a95f7d8db4c4e7fae857bcebe0623e6%40thread.tacv2/1616991899452?groupId=fbe2bf47-16c8-47cf-b4a5-4b9b187c508b&tenantId=2432b57b-0abd-43db-aa7b-16eadd115d34&createdTime=1616991899452&parentMessageId=1616991899452",
    "policyViolation": null,
    "eventDetail": null,
    "from": {
        "application": null,
        "device": null,
        "user": {
            "id": "8ea0e38b-efb3-4757-924a-5f94061cf8c2",
            "displayName": "Robin Kline",
            "userIdentityType": "aadUser"
        }
    },
    "body": {
        "contentType": "html",
        "content": "Here's the latest budget. <attachment id=\"153fa47d-18c9-4179-be08-9879815a9f90\"></attachment>"
    },
    "channelIdentity": {
        "teamId": "fbe2bf47-16c8-47cf-b4a5-4b9b187c508b",
        "channelId": "19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2"
    },
    "attachments": [
        {
            "id": "153fa47d-18c9-4179-be08-9879815a9f90",
            "contentType": "reference",
            "contentUrl": "https://m365x987948.sharepoint.com/sites/test/Shared%20Documents/General/test%20doc.docx",
            "content": null,
            "name": "Budget.docx",
            "thumbnailUrl": null
        }
    ],
    "onBehalfOf": null,
    "mentions": [],
    "reactions": [],
    "messageHistory": []
}
```

### Example 5: Send inline images along with the message

#### Request
The following is an example of the request.

> **Note:** The **temporaryId** in the **hostedContents** collection is a random ID, but must be same across the **body** and **hostedContents** elements. (Notice the **temporaryId** set to `1` and the reference in body as `../hostedContents/1/$value`.).

**contentBytes** must be set to binary string Base64-encoded bytes. You can do this in C# by using `Convert.ToBase64String(File.ReadAllBytes("image.png"));`.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_chatmessage_5",
  "sampleKeys": ["19:2da4c29f6d7041eca70b638b43d45437@thread.v2"]
}-->
```http
POST https://graph.microsoft.com/beta/chats/19:2da4c29f6d7041eca70b638b43d45437@thread.v2/messages
Content-type: application/json

{
	"body": {
        "contentType": "html",
        "content": "<div><div>\n<div><span><img height=\"297\" src=\"../hostedContents/1/$value\" width=\"297\" style=\"vertical-align:bottom; width:297px; height:297px\"></span>\n\n</div>\n\n\n</div>\n</div>"
    },
    "hostedContents":[
        {
          "@microsoft.graph.temporaryId": "1",
          "contentBytes": "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",
            "contentType": "image/png"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-chatmessage-5-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-chatmessage-5-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-chatmessage-5-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-chatmessage-5-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/post-chatmessage-5-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-chatmessage-5-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#chats('19%3A2da4c29f6d7041eca70b638b43d45437%40thread.v2')/messages/$entity",
    "id": "1616991962672",
    "replyToId": null,
    "etag": "1616991962672",
    "messageType": "message",
    "createdDateTime": "2021-03-29T04:26:02.672Z",
    "lastModifiedDateTime": "2021-03-29T04:26:02.672Z",
    "lastEditedDateTime": null,
    "deletedDateTime": null,
    "subject": null,
    "summary": null,
    "chatId": "19:2da4c29f6d7041eca70b638b43d45437@thread.v2",
    "importance": "normal",
    "locale": "en-us",
    "webUrl": null,
    "channelIdentity": null,
    "onBehalfOf": null,
    "policyViolation": null,
    "eventDetail": null,
    "from": {
        "application": null,
        "device": null,
        "user": {
            "id": "8ea0e38b-efb3-4757-924a-5f94061cf8c2",
            "displayName": "Robin Kline",
            "userIdentityType": "aadUser"
        }
    },
    "body": {
        "contentType": "html",
        "content": "<div><div><div><span><img height=\"297\" src=\"https://graph.microsoft.com/beta/chats/19:2da4c29f6d7041eca70b638b43d45437@thread.v2/messages/1616991962672/hostedContents/aWQ9eF8wLXd1cy1kNy1kZTczYzM0YTYzZGVkYjViMDVlNjYyY2Y1NzQ5MGU5Yyx0eXBlPTEsdXJsPWh0dHBzOi8vdXMtYXBpLmFzbS5za3lwZS5jb20vdjEvb2JqZWN0cy8wLXd1cy1kNy1kZTczYzM0YTYzZGVkYjViMDVlNjYyY2Y1NzQ5MGU5Yy92aWV3cy9pbWdv/$value\" width=\"297\" style=\"vertical-align:bottom; width:297px; height:297px\"></span></div></div></div>"
    },
    "attachments": [],
    "mentions": [],
    "reactions": [],
    "messageHistory": []
}
```

### Example 6: Send a card with inline images

#### Request
The following is an example of the request.

> **Notes:**
> * The **temporaryId** in the **hostedContents** collection is a random ID, but must be same across the **content** (in **attachments**) and **hostedContents** elements. (Notice the **temporaryId** set to `1` and the reference in content as `../hostedContents/1/$value`.).
> * The maximum possible size of hosted content is 4 MB.

**contentBytes** must be set to binary string Base64-encoded bytes. You can do this in C# by using `Convert.ToBase64String(File.ReadAllBytes("image.png"));`.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_chatmessage_6",
  "sampleKeys": ["fbe2bf47-16c8-47cf-b4a5-4b9b187c508b", "19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2"]
}-->
```http
POST https://graph.microsoft.com/beta/teams/fbe2bf47-16c8-47cf-b4a5-4b9b187c508b/channels/19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2/messages
Content-type: application/json

{
    "subject": null,
    "body": {
        "contentType": "html",
        "content": "<attachment id=\"74d20c7f34aa4a7fb74e2b30004247c5\"></attachment>"
    },
    "attachments": [{
        "id": "74d20c7f34aa4a7fb74e2b30004247c5",
        "contentType": "application/vnd.microsoft.card.adaptive",
        "contentUrl": null,
        "content": "{\r\n  \"$schema\": \"http://adaptivecards.io/schemas/adaptive-card.json\",\r\n  \"type\": \"AdaptiveCard\",\r\n  \"version\": \"1.2\",\r\n  \"speak\": \"The Seattle Seahawks beat the Carolina Panthers 40-7\",\r\n  \"body\": [\r\n    {\r\n      \"type\": \"Container\",\r\n      \"items\": [\r\n        {\r\n          \"type\": \"ColumnSet\",\r\n          \"columns\": [\r\n            {\r\n              \"type\": \"Column\",\r\n              \"width\": \"auto\",\r\n              \"items\": [\r\n                {\r\n                  \"type\": \"Image\",\r\n                  \"url\": \"../hostedContents/1/$value\",\r\n                  \"size\": \"Medium\"\r\n                },\r\n                {\r\n                  \"type\": \"TextBlock\",\r\n                  \"text\": \"SHADES\",\r\n                  \"horizontalAlignment\": \"Center\",\r\n                  \"weight\": \"Bolder\"\r\n                }\r\n              ]\r\n            },\r\n            {\r\n              \"type\": \"Column\",\r\n              \"width\": \"stretch\",\r\n              \"separator\": true,\r\n              \"spacing\": \"Medium\",\r\n              \"items\": [\r\n                {\r\n                  \"type\": \"TextBlock\",\r\n                  \"text\": \"2019-08-31T19:30:00Z\",\r\n                  \"horizontalAlignment\": \"Center\"\r\n                },\r\n                {\r\n                  \"type\": \"TextBlock\",\r\n                  \"text\": \"Final\",\r\n                  \"spacing\": \"None\",\r\n                  \"horizontalAlignment\": \"Center\"\r\n                },\r\n                {\r\n                  \"type\": \"TextBlock\",\r\n                  \"text\": \"40 - 7\",\r\n                  \"size\": \"ExtraLarge\",\r\n                  \"horizontalAlignment\": \"Center\"\r\n                }\r\n              ]\r\n            },\r\n            {\r\n              \"type\": \"Column\",\r\n              \"width\": \"auto\",\r\n              \"separator\": true,\r\n              \"spacing\": \"Medium\",\r\n              \"items\": [\r\n                {\r\n                  \"type\": \"Image\",\r\n                  \"url\": \"../hostedContents/2/$value\",\r\n                  \"size\": \"Medium\",\r\n                  \"horizontalAlignment\": \"Center\"\r\n                },\r\n                {\r\n                  \"type\": \"TextBlock\",\r\n                  \"text\": \"SKINS\",\r\n                  \"horizontalAlignment\": \"Center\",\r\n                  \"weight\": \"Bolder\"\r\n                }\r\n              ]\r\n            }\r\n          ]\r\n        }\r\n      ]\r\n    }\r\n  ]\r\n}",
        "name": null,
        "thumbnailUrl": null
    }],
    "hostedContents": [{
        "@microsoft.graph.temporaryId": "1",
        "contentBytes": "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",
        "contentType": "image/png"
    }, {
        "@microsoft.graph.temporaryId": "2",
        "contentBytes": "iVBORw0KGgoAAAANSUhEUgAAASkAAAEpCAYAAADPmdSCAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAZdEVYdFNvZnR3YXJlAHBhaW50Lm5ldCA0LjAuMTZEaa/1AAAg2UlEQVR4Xu3dz8tcVZ4G8P4TspulWfTGzZiFCxHBgDKCGTAQXgQXmhaMMy70deGq0xJbuwMBMTpCuwgmoIhIhKAuGiPdIQ7NRKF5m1YztJoOiI5gYwdnwMXA1Hyf1zpvyvM+VXV/nO+559z7BD7+OO9bVfd+7zlP7j116tZPZrNZI0888cQes98cM4fNXvZ7Uj8c2/kxxrE+aPaw3xPJgTbGrJNummtmFrlg1IFHAsfSnJwf29gx9hgRb7RxETpn1FljV80+9liphx1DBNTW/Jguc4Y9VsQTbQysU+K0n3XWGM6yDrPnkPLZsds3P4bs2Mb2s+cQ8UIbA+uQy079lznJnkfKZccMl/LsWC5zjj2PiBfaGFiHxJwT66iraJ6qAjhG5sz8mLVxgT2fiBfaGKBDRh20Kc1TFcyODS7j180/LaOQkqxoY4AOGXXQNjRPVSA7JlhG0nT+iVFISVa0MUCHjDpoF3pHqBB2LNrOPzEKKcmKNgbokFEH7QqXFpqnGghqb7rMPzEKKcmKNgbokFEH7QOXGJqnygw1N13nnxiFlGRFGwN0yKiDpqB5qkys1vhIS5/5J0YhJVnRxgAdMuqgqWieypnVeN0nBbpSSElWtDFAh4w6aEq4BNGHlBOzmmL+6dy8xh4UUpIVbQzQIaMOmhouRfQxi0SslqnnnxiFlGRFGwN0yKiDetlkry/NWQ095p8YhZRkRRsDdMiog3rCW+RaptCB1a3tZyz7UEhJVrQxQIeMOqg3zVO1YLXC/FPuY6SQkqxoY4AOGXXQHDRP1YDVCPNP+Iwkq6EnhZRkRRsDdMiog+akO0EuYbXBrX1zzD8xCinJijYG6JBRB80Nb6VrnmqB1SPn/BOjkJKsaGOADhl10CFgnmryH6exGgwx/8QopCQr2higQ0YddCi4tDnItrGNL7/8svOkvD220xld18ctsn1vc3tfbwopyYo2BuiQUQcdWud5KguLM+aaaX1WNn/slmkVOPj9+eM6fwzI9hnzT6wWQ1FISVa0MUCHjDpoCVrPUyEkzGyuVVBFj20cVPi9+e+Hx7YOKtvPVLdXSUkhJVnRxgAdMuqgpWh8e2KEw0JQBI2Cyn6HPXZtUOHn89+LH9soqGzfMP/k/fGWrhRSkhVtDNAhow5aEszRrLztC0IhColFK4PKfrbqsUuDCu3zn7PHwcqgsn3qe3tfbwopyYo2BuiQUQctEf0aLYRBFA4MDSpra/LYXUGF/5+3s99fRIPK9iXF7X29KaQkK9oYoENGHbRU2M6dwEAIRKGwyo+Cyv67zWN3ggr/nv8/+z1mJ6iw7abE+SdGISVZ0cYAHTLqoCXbnqfC4I/CoIntoDJdHotg2jv/N/v5KgimPl8vNQSFlGRFGwN0yKiDFu2ZZ5757urVq/9LwqBYL7zwwv+wfSlY8pC6dus/7DVnzIUJOWf0GdUGaGOADhl10OKdOHFiduXKFRoIpTl9+jTdh8IlCykbpCGcZhOGwFJYrUAbA3TIqINWoYagqjSgoHdI2aBUOO2msFqCNgbokFEHrUbJQVVxQEHnkLJBqHBaT2EVoY0BOmTUQatSYlBVHlDQOqRs0Cmc2lNYzdHGAB0y6qDVKSmoRhBQ0DikbJApnPqbfFjRxgAdMuqgVSohqEYSULA2pGxQKZzSm2xY0cYAHTLqoNUaMqhGFFCwNKRsEA0ZThjEXVw17PlKhW2eVFjRxgAdMuqgVbt06RINEW9sWyq2K6Rs0AwZTnjdXl/eYY8/bBRWhaKNATpk1EGrppBKYiekbJBUHU4xez6FVYFoY4AOGXXQqimkksCgGFU4xez5FVYFoY0BOmTUQaumkOrnmUf/dfbBP9/8dTQ4cnEPp5i9nsKqALQxsI6pkEqAbUtNEE4XD97KBkQO2cMpZq+vsBoQbQysgyqkEmDbUoOph1PMtkdhNQDaGFhHVUglwLalZAqn1Wz7FFYZoeBsh0RyKz6cYra9NYZVdRRSMrTqwilm26+w8nNBISVDqT6cYrY/Cqt0di5PFVKS2+jCKWb7p7DqbtfcmUJKchl9OMVsfxVWzS2d2FdIibfJhVPM9l9htdzadx0VUuJl8uEUs3oorK5rvCRCISWpXTb/yDqb/MDqM+WwahxOgUJKPFwzxwz9Knr5gdVnSmHVOpwChZR4Ulg1YPUZc1h1DqdAISU5KKwasPqMKax6h1OgkJKcFFYNWH1qDqtk4RQopGQICqsGrD41hVXycAoUUjIkhVUDVp+Sw8otnAKFlJRAYdWA1aeksHIPp0AhJSVRWMkuCikpkcJKdiikpGQKK1FISRUUVhOmkJKaKKwmSCElNVJYTYhCSmqmsJoAhBQOMnX+0O1X3773n2Zj8flTm7NvnnsyO7YttRrwq65WQVhh3c4U4D5dkwpl2hg8oe/dS4JtS63+7cj9LCTEHxZxHmbjdOxoY2CdUiGVANuWWimksptsOAW0MbBOqZBKgG1LrRRS2Uw+nALaGFinVEglwLalVgopdwqnCG0MrFMqpBJg21IrhZQbhdMStDGwTqmQSoBtS60UUskpnNagjYF1ymJC6pFHHpk98MADO/D/7PdWqSWkNjc3f7SvDz30EP29IZz8l8PfR4NMulE4NUQbA+uUg4cUBunNN988u+GGG3ZBO37OHseUHlII3ttvv53u64033jjb2Nigj8sMa3XGdC/u3BROLdHGAB0y6qBZ3XnnnXTAxjYaDt6SQwr78NOf/pTu3yKEGHt8RhdC/8Bgmw+6xUEonMKpI9oYoENGHTSbu+++mw7SZTYaBFWpIYWzQbZPywwcVDshFWDwzQdhPDBF4dQbbQzQIaMOmgUue9jgXAVnIevmqUoNKVzKsX1a5b777qPPlcGukAowGOeDkg3WqVE4JUIbA3TIqINmsWxeZh2cfbHnC0oMqQ07A2T7ss5NN91Eny+DpSEVYHDOB2k8cKdA4ZQYbQzQIaMOmkWTuRlm3cAtMaRuvfVWui9N4F1A9pzO1oZUgME6H7RsMI+NwskJbQzQIaMOmgUbkE2x5wtKDKll71w20eadzYQah1SAwTsfxGxw107h5Iw2BuiQUQfNgg3IptjzBQqpJFqHVGCDef/YsP2UtGhjgA4ZddAs2IBsij1foJBKonNIiXRBGwN0yKiDZsEGZFPs+QKFVBIKKcmKNgbokFEHzYINyKbY8wUKqSQUUpIVbQzQIaMOmgUbkE2x5wsUUkkopCQr2higQ0YdNAs2IJtizxcopJJQSElWtDFAh4w6aBZsQDbFni9QSCWhkJKsaGOADhl10CzYgGyKPV+gkEpiy+yf01dJiTvaGFgnVEglwLYlqDCklkFfgZPmmEGI7WP9SqQN2hjMOx3rkK66fOAWMODZ8wUlhlTXzykCe75C4ezrnAnhpTMwaYw2BtaZBgmppveRit1zzz30+YISQwpnQ2xf1sFn/tjzVeSqQXBtGp1xyVK0MbDOM0hI4YOzbT9kjLOvdR+4LTGkoMslX0m3FE7kmlFoyS60MbDOMkhIwUbLW5g0GbSlhhTug9UmlNedMY4EzrQwv3WQ9U2ZDtoYWAcZLKQAQbVu8OLnTSeQSw0pQMg2mYubSEDFcJZ1xiiwJog2BtYpBg0pwFkG5qjiAYz/x03u2txTqeSQAuwLQgj3xVrcVwQxJtjX3Xl0IkJg6Q4EE0EbA+sIg4dUW7/61a9mr7766uz999+fffrpp7Pvvvtux7dv/Xb29V33ZvW348//aBuwTR9++OHs7Nmz29vK9kEawyUh3jHcy/qvjANtDOzgVxNSCKY4lJicQRUHFPPFF19sB9YvfvELul/SGCbddXY1QrQxsINefEghnDDQWQAskyOomgTUom+++Wb2zjvvKKz6w9nVYaO1WCNBGwM70MWG1LPPPtvozGkZz6BqG1CLELgvvvgi3WdpBXNXuBRUWFWONgZ2gIsMKVwesQHelkdQ9QmoRe+99x7dd2lNYVU52hjYgS0upDAhzgZ1VymDKlVABX/+8591+ZeOwqpStDGwA1pUSKUOqCBFUKUOqACXtAqqpBRWlaGNgR3IYkLKK6CCPkHlFVABgorVRHpBWOmrqCpAGwM7iEWEVKo5qHW6BJV3QAUIaVYb6W37/lis/0sZaGNgB2/wkMK7eGzQemkTVLkCKjh16hStkSSBdVa6BCwQbQzsoA0eUn2WGXTVJKhyBxRgLZXmp1zhEnCTjQUZDm0M7IANGlJYqMkGaw6rgmqIgAqw4JPVSpJCv9ftYgpBG4P5wWIHMYu2K8lTY0E1ZEAFOpvK5hgbF5IXbQzsIA0WUkOeRS1aDKoSAgp0NpUVJtb1AeYB0cZgfoDYgXOHhYxsgA4BQVVKQAHOMFnNxI2WKwyINoIdFNyzhx0wd7iFCRucch3e9WS1E1d6B3AAtNEOxGABBaVc6pVMl3yDwV0WNKme0a4GOwCDBhR4ry4fA1wOs9pJNrr8y+RH/2OFHzygoKT5qJKx2klWZxbHj/jY+Q8UPDoAg2EDUnbTUoQi4M0lzVM52v6HFbmYgAI2IGU33RyvGJqnclRcQAEbkLKbQqooWKagDyo7QEgNthZqGTYgZTeFVJE0oZ4YQmqPKSqo2ICU3RRSxVJQJbT9DytqUUHFBqTspu/tK5re+Utk5z+sqAiqIuanhv5gcS1Y7aQoCqoEdjVYYU9Ghc5O66TW0y2Fq6Gg6ok2WmHx5Yqs4FngIx9sYMp1up1wVRRUPdBGsMLuM3hblRXdVe5bBtcIn29ktZNiKag6oo2BFXavGWRCXfNSq2m1eZUUVB3QxpgVN/s8Fb7Blw1O+W724Ycf0ppJFXS3z5ZoI2PFPWiyXf7pnlLLaX1U9bSOqgXauIwVF5d/2W4prFu27KZbtIyGgqoh2riOFXgzKrgLnE3ha5zYYJ0qnUWNBq5K9KHkBmhjEyiwcT+r0nKE6zBPx2ok1UJQ6Use1qCNbViRcVblOlelxZ0/fPmC3tEbJd2Pag3a2JYVGXNVuEk9Owi9YXBO+bIP+64vXhi1c2xcyQ9oY1dW7P0GNwBjB6IXDNKpBtWpU6doTWRUtDRhCdrYlxUcH6tJfgk4taDCvmpl+aTopnkEbUzBCo67KhwzScMKQYUP17JB7QVBgbOZnAGpS7xJ0kQ6QRtTsqInDyvMUeVYQ4XJ6sWgwJKIHAGJNwo0ST5ZF9g4mjLa6MGKnzyssGbI6zN+WPqwLCjOnj3rclalyzuZ0/zUAtroyQ4Awuq3CwekNwzsFGGFkMBapCZ3vESAIchShBW2HcGnsydZoPmpOdrozQ4AzqjYgekFl2YImTaBhZDBB3YRdF1DAvNVuPxsE1jYRjxG79zJEniXXOunDG30ZsV3CalFCBxcDuIMBWc8MYSDx8Q0zsLw3Ow1AdvU5ExNxJxk42dqaKM3K757SImMxOQv+2ijNyu8Qkqkmclf9tFGb1Z0hZRIc5O+7KON3qzoSULql7/85ezo0aP0ZyIjM9nLPtrozQreO6ROnz49+/LLL7dtbW1tT0qj7cSJE/T3RSq3xcbSFNBGb1bwXiG1GFDLXLp0aTu4Xnvttdnzzz8/e/rpp+lz5YCzPWwDtgXbhG27fPmyAlXa2mTjaexoozcrdueQahJQq+CsCyFx/vz52ZtvvrntpZde2g6RoOkl5OJjIDxfCCK8FtuG4MqVKwoqaQOf1pjcJDpt9GaF7hxSGNQY3GzQ1wYhpjk1aWlyX4tFG71ZoXtd7o0hqBRQ0sOk7pRAG71ZkXtPnNccVAoo6WlSd0qgjd6syL1DCmoMKgWUJDKZJQm00ZsVOElIQU1BpYCShCZzNkUbvVmBk4UU1BBUCihxMImzKdrozYqbNKSg5KBSQImTSZxN0UZvVtzkIQUXL16kITE0LOJk2yuSwOjPpmijNyts8pDC4kwWEKXAIlS23SI9jf5sijZ6s8ImDanSAypQUImTfWycjQVt9GZFTRZStQRUoKASB6NehU4bvVlRk4RUbQEVKKjEwWhXodNGb1bQ3iFVa0AFCipJbLRfg0UbvaGgUYFbqT2gAgWVJHSNjbUxoI3erKCdQwq3QmEDvla4xQvbT5EODrPxVjva6M2K2TmksCgSiyPZgK8NzgjZPop0NMrlCLTRmxWz1+XeGIJKASVORjeBThu9WSF7T5zXHFQKKHE0um+WoY3erJC9QwpqDCoFlDi7ysZczWijNytkkpCCmoJKASWZjOrzfLTRmxUxWUhBDUGlgJKMRrUCnTZ6syImDSkoOagUUJLZqNZM0UZvVsTkIQVYc8RCYmhsW0WcHWRjr0a00ZsVUCEl4ms07/LRRm9WQIWUiK/RvMtHG71ZARVSIv5GcZ8p2ujNiqeQEvG3ycZfbWijNyueQkrE3yg+y0cbvVnxFFIieexhY7AmtNGbFU4hJZJH9UsRaKM3K5xCSiSP6pci0EZvVjiFlEge1c9L0UZvVjiFlEgm8firDW30ZoVTSInkU/VdEWijNyuaQkokn6rXS9FGb1Y0hZRIPufYOKwFbfRmRVNIieSzxcZhLWijNyuaQkoko3gM1oQ2erOiKaRE8qp28pw2erOCKaRE8qr2i0NpozcrmEJKJK9jbCzWgDZ6Q8GiAiahkBJZqtqV57TRmxVMISWSV7Xv8NFGb1YwhZRIZvE4rAVt9GYFU0iJ5FflvaVoozcrlkJKJL8qlyHQRm9WLIWUSH4KqaasWAopkfyqXIZAG72hWFHxklBIiaykkGoKxYqKl4RCSmSls2w8lo42erNiKaRE8vtPNh5LRxu9WbEUUiL5VfnV67TRmxVLISWS39dsPJaONnqzYimkRPL7OxuPpaON3qxYCimRAcRjsQa00ZsVSyElMoB4LNaANnqzYimkRAYQj8Ua0EZvViyFlMgA4rFYA9rozYqlkBIZQDwWa0AbPVmh9plri4VLRSGVxiOPPELbZRSqu9c5bfRiBXILKFBIpaGQGr2qgoo2erDCuAYUKKTSUEhNQjVBRRtTs4K4BxQopNJQSE1GFUFFG1OyQmQJKFBIpfHwww/Tdhml4oOKNqZiBcgWUKCQSuP++++n7TJaRQcVbUzBdjxrQIFCKg2F1CQVG1S0MQXb6atREdwppNLY2Nig7TJ6Rd4DnTamYDusM6k5tq0lO3ToEG2XUTvDxnEJaGMqtuOakzJsW0t2991303YZrWIDCmhjSlYAvbtHtrVkd9111+zxxx+nP5PRKTqggDamZoXIElQKqTQQUkeOHKE/k1EpPqCANnqwgrgHlUIqDYTUvffeS38mo1FFQAFt9GKFcQ0qhVQaCKkDBw7Qn8koVBNQQBs9WYHcgkohlQZC6rbbbqM/k+pVFVBAGz1ZkRRShUNI3XLLLfoM3zgppFaxAulyrwIhpO677z76c6meLvcYK4wmzisRQgr/Zj+XUdDE+SIriHtAgUIqjRBSoPVSo1ZFUNHGlKwQWQIKFFJpLIaUPmw8esUHFW1MxQqQLaBAIZXGYkjpkm8Sig4q2piC7XjWgAKFVBqLIQWPPvoo/T0ZlWKDijamYDt9ISqCO4VUGnFIafX5ZEzuVi17zNZCAdwppNKIQ0oLOydheje9A9vxrEGlkEojDinQBPqoTfP2wYEVIFtQnThxgobE0Ni2loyF1P79++nvSvWm/UUMgRUiW1CxkBga286SsZACnU2NTvEBBbTRgxUkS1CxkBga286SLQspnU2NShUBBbTRixXGPaguXbpEg2JIbDtLtiykQGdTo1BNQAFt9GQFcg2q8+fP06AYEtvOkq0KKZxN6aMyVSsioGxc7DP7zWGzOf9vugRiV0MOVqhjUeGSOX36NA2KIbHtLNmqkAKtm6pXPBZzsrFw0Jwz18LYWGLLILj24HH0ybxZsdxCqsR3+Nh2lmxdSGHdlFah1ykeiznYGEA4XV0cEw0hzI7RJ/VmxXILKbh8+TLb4cGwbSzZupAC/A57rJQtHouerO/vMThzouOiKfrk3qxYriFV2rwU28aSNQkp0E3x6hOPRS/W7xFQuGyjY6IN+gLerFiuIfXSSy/RnR0K28aSNQ0pXfbVJx6LHqzPJwsooC/izYrlGlJQ0iUf276SNQ0puOOOO+hzSJnisejB+vyFeAz0QV/EmxXLPaTefPNNusNDYNtXsjYhBYcOHaLPI+WJx2Jq1t+Pxf2/L/pC3qxY7iH19NNP0x0eAtu+krUNKdAizzrEYzEl6+u4zFu3vKA1+mLerFjuIQWlTKCzbStZl5ACfQVW+eKxmJL19eRnUUBfzJsVK0tIlXI2xbatZF1DChPpCqqyxWMxJevrXdZCrUVfzJsVK0tIQQlnU2y7StY1pAAT6frYTLnisZiK9XN8zIX2/77oC3qzYmULqaNHj86uXLlCdz4Xtl0l6xNSoKAqVzwWU7F+7nKpB/QFvVmxsoUUvPbaa3Tnc2HbVLK+IQUKqjLFYzEV6+dn4n6fCn1Bb1asrCEFQ97ChW1PyVKEFCioyhOPxVSsnyddG7WIvqA3K1b2kBryso9tT8lShRRoMr0s8VhMxfq5QiqFob6ogW1LyVKGFCCojhw5Ql9L8orHYirWzxVSqQxxvym2HSVLHVKBPpA8vHgspmL9PPkizoC+oDcr1mAhBbmXJbBtKJlXSME999yjeaoBxWMxBevjWGlO+34K9EW9WbEGDSnIGVTs9UvmGVKAWxBrnmoY8VhMwfo4bmpH+34K9EW9WbEGDynIFVTstUvmHVKBbkOcXzwWU7A+7rb8AOiLerNiFRFSkGOOir1uyXKFFGCZgibV84nHYl/Wv10v9YC+sDcrVjEhBbhJnufyBPaaJcsZUoHmqvKIx2Jf1r/dVpoH9IW9WbGKCinAh5G3trZokfpir1eyIUIKsFQBl4AKKz/xWOzD+rbb5/UW0Rf3ZsUqLqQC3Cwv9VkVe52SDRVSgcLK1T42Jtuyfp30FsGr0A3wZoUqNqQAZ1UXL16kBeuCvUbJhg6pAGGFu37qPupJHWNjsi3r166T5YvoBnhDoaLCFQkr1FN85o89d8lKCalFBw4cmD344IN0e6WVq2b7Sze7sP6MM6hsAQV0Q7xZkaoIqQBh1We5AnvOkpUYUgHOrjDJrsDq5Qwbl+tYX8YcVJZLvEV0Y7xZkaoKqQAfUsZtX9qeXbHnKlnJIbUIgYUzLNxfXYtDW2scVNaHcfbk/i7eMnSjvFmBqgypRQgsLF1455131oYWe3zJagmpGEIL245Jd5xpKbjWwqXfYTZGrd8imLCSPOulHbNr41KyF9hrsKNI4ZMGn5S+8PHHH1/FwAZcRuEdNSyqPHHiBCtkFRBap06d2t6f3//+99vf+xeEfcVkPPYVZ2O4hGTPUwLPkMJzP/bYY7OXX3552x/+8AcKNcLPf/3rX29PnGPBZ1cKq0b+fvz48f/4zW9+s/W73/3u87/85S9f21iloZEbDZeu7AmRvocNvv+986eiMaDRSfEuGylmMcKZVJ8vIsXaLDxHSQGdOqR+/vOfz15//fXZH//4R1qDJkqs09jhL16cPHzyySdudzhogoZNW/ZE+43LaSECC4ViRRwCghODxWOFOsIO4YzOwV47lxQhtbGxsX0m1CfAl8Fz4ox06DpNCc787ezqe3Y8vNHQacqeAOHkdrOrReiYQ4YVwinXB5IRgEMOwj4hhXB6++236X6lNnSdpgZ1zjUGFtHwWcceiLkmXNLRJ/WE0/6c8zk4MBgIbFu8YRAOEcxdQwpnTh5nmOvgNXEGyvZF0kOfZMfBCw2hVexBm2bQa1TAJZf336CY//C4XGkLl7w55+fahtTPfvazXvNNqeAvsNLnMccCfymwY+CBBhFjv5x9pek6np0y50FoAmcLmKhn25pam5A6fvw43d6hDHX2OUUpPzq2Cg2kmP0iAir7StMm0ClTv+MzxHV3UzkGYNOQyjX31AUu0dm+STq4kslxeU9DaZH9EpbCu3zHe0opBi+Knutvhz4Qomz7U2kSUiUHVOBdJ8kzP0WDKbBfwAT54PNPTfW9HMLcD3veEnkOwHUhVUNABQoqf95nUzScwH5Y7CXeMn0u/Uq+xFvG69JvVUjVFFCBLv184U0sVvdETtKAAvthlvVPqSGo2r7rN9QSgxQ8lmMsC6nSJsnbyPWmwxShD7KaJ4CTpD3LAmqwTzyngMs2VkzGscBZdAnldVhIYZkBe/1aoE5anuCH1bwnTDNt30WUBVSW+xZ7a7K4D4O7hHVQfbUJ5SZYSJWwDqqv1HWS6xzG0c7dGVhIVTUPtUyTvzmdr6WzSnk5E4cUVpKz16yRVqb7SPym08nFTIoDCncwYA+q0qp3dhBg7DG1wt9kKS/7QkDhs3gIfPaaNfK4PJakIbXrZnyLAYV386pZbtDUsonlGt/NWyfVu1hPPfXUTkjV+G7eOnq3L71EIUXvFrrzH/YLozqLCrA4My7o2M6iApwlxPvaxSuvvLJzFsVep3Y6m0qP1bmlpbcz3vkP+6XiV5V3Fc9NjfEsKui7duq5557bCakzZ87Q1xgDzU2lg7WJrMYtrLzf+vY/7JdwXyj24FFYPL3H36BjmmOJ4UPXix2orbfeemsnpMZcJ8zhsf2X9np+GP9Hk+TM9j/sF4u6u0Fqix0yx2eNhtZnPdBXX321HVK45S977jHRrYjTwF+MrL5rYP6bfglEbPsf8wewJxqN0CFr+ABxX10vZbCMAX8QUmOcMI9pAr2/jouhscyp8de9I6BGsXhznTBwx3wJE7A3C5r4/PPPrU/8EFJjWOS6Tt9LY+n0rh6+NarVNygjpHCnTfZko4KBm2CCrwpd3uXDXFT4c+7cOfq8Y8RqIc20nIvC2dN+6140iFYZ/XxUgDODKcxHBW3mW/CO3uKf9957jz7nGHl8QHsK0L8aXpVgKmnTuhUNoCYQUlXe7aCLmu920FbTj8kgoL7//nvrC9f//OlPf6LPOUZaitBew4BCOOFGBa0u7RiEFHuBUer4LkSVmkwKI8jigMKfTz75hD7nGGnyvB2cef71r3/9P1bLOay3xMLw3uEUKKRGatXge/LJJ2fvvvuuHX/+54svvqDPOUa6c2czWF+44koEZ02YNmr8jl0bCqmRwh0e4o6GcMIE+bfffmvHfvmfKYWUbt+yGsIJc7mfffbZf0e1w0Q43qnrNBnexqRC6uOPP6btY4RAxuUc4Kzpo48+suPd7I9CapqwCBiXc/DGG298+8EHH/yXXdr9zfrDv1utEEhYCeAeSj82+8n/A1GsifSVBvjAAAAAAElFTkSuQmCC",
        "contentType": "image/png"
    }]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-chatmessage-6-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-chatmessage-6-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-chatmessage-6-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-chatmessage-6-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/post-chatmessage-6-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-chatmessage-6-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#teams('fbe2bf47-16c8-47cf-b4a5-4b9b187c508b')/channels('19%3A4a95f7d8db4c4e7fae857bcebe0623e6%40thread.tacv2')/messages/$entity",
    "id": "1616992043931",
    "replyToId": null,
    "etag": "1616992043931",
    "messageType": "message",
    "createdDateTime": "2021-03-29T04:27:23.931Z",
    "lastModifiedDateTime": "2021-03-29T04:27:23.931Z",
    "lastEditedDateTime": null,
    "deletedDateTime": null,
    "subject": null,
    "summary": null,
    "chatId": null,
    "importance": "normal",
    "locale": "en-us",
    "webUrl": "https://teams.microsoft.com/l/message/19%3A4a95f7d8db4c4e7fae857bcebe0623e6%40thread.tacv2/1616992043931?groupId=fbe2bf47-16c8-47cf-b4a5-4b9b187c508b&tenantId=2432b57b-0abd-43db-aa7b-16eadd115d34&createdTime=1616992043931&parentMessageId=1616992043931",
    "policyViolation": null,
    "eventDetail": null,
    "from": {
        "application": null,
        "device": null,
        "user": {
            "id": "8ea0e38b-efb3-4757-924a-5f94061cf8c2",
            "displayName": "Robin Kline",
            "userIdentityType": "aadUser"
        }
    },
    "body": {
        "contentType": "html",
        "content": "<attachment id=\"74d20c7f34aa4a7fb74e2b30004247c5\"></attachment>"
    },
    "channelIdentity": {
        "teamId": "fbe2bf47-16c8-47cf-b4a5-4b9b187c508b",
        "channelId": "19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2"
    },
    "attachments": [
        {
            "id": "74d20c7f34aa4a7fb74e2b30004247c5",
            "contentType": "application/vnd.microsoft.card.adaptive",
            "contentUrl": null,
            "content": "{  \"type\": \"AdaptiveCard\",  \"body\": [    {      \"items\": [        {          \"columns\": [            {              \"width\": \"auto\",              \"items\": [                {                  \"size\": \"medium\",                  \"url\": \"https://graph.microsoft.com/beta/teams/fbe2bf47-16c8-47cf-b4a5-4b9b187c508b/channels/19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2/messages/1616992043931/hostedContents/aWQ9LHR5cGU9MSx1cmw9aHR0cHM6Ly91cy1hcGkuYXNtLnNreXBlLmNvbS92MS9vYmplY3RzLzAtd3VzLWQyLWEyNDc1OWVjOGZiZDRmOWFjYTkxN2M5N2EyOGNlNTQ1L3ZpZXdzL2ltZ28=/$value\",                  \"height\": \"auto\",                  \"type\": \"Image\"                },                {                  \"horizontalAlignment\": \"center\",                  \"text\": \"SHADES\",                  \"weight\": \"bolder\",                  \"type\": \"TextBlock\"                }              ],              \"type\": \"Column\"            },            {              \"width\": \"stretch\",              \"items\": [                {                  \"horizontalAlignment\": \"center\",                  \"text\": \"08/31/2019 19:30:00\",                  \"type\": \"TextBlock\"                },                {                  \"horizontalAlignment\": \"center\",                  \"text\": \"Final\",                  \"spacing\": \"None\",                  \"type\": \"TextBlock\"                },                {                  \"horizontalAlignment\": \"center\",                  \"size\": \"extraLarge\",                  \"text\": \"40 - 7\",                  \"type\": \"TextBlock\"                }              ],              \"spacing\": \"Medium\",              \"separator\": true,              \"type\": \"Column\"            },            {              \"width\": \"auto\",              \"items\": [                {                  \"horizontalAlignment\": \"center\",                  \"size\": \"medium\",                  \"url\": \"https://graph.microsoft.com/beta/teams/fbe2bf47-16c8-47cf-b4a5-4b9b187c508b/channels/19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2/messages/1616992043931/hostedContents/aWQ9LHR5cGU9MSx1cmw9aHR0cHM6Ly91cy1hcGkuYXNtLnNreXBlLmNvbS92MS9vYmplY3RzLzAtd3VzLWQ1LTg1ZmNmMDQyNDc3MDJjNjkxODdiOTMwZjcwNTY3OTFhL3ZpZXdzL2ltZ28=/$value\",                  \"height\": \"auto\",                  \"type\": \"Image\"                },                {                  \"horizontalAlignment\": \"center\",                  \"text\": \"SKINS\",                  \"weight\": \"bolder\",                  \"type\": \"TextBlock\"                }              ],              \"spacing\": \"Medium\",              \"separator\": true,              \"type\": \"Column\"            }          ],          \"type\": \"ColumnSet\"        }      ],      \"type\": \"Container\"    }  ],  \"speak\": \"The Seattle Seahawks beat the Carolina Panthers 40-7\",  \"$schema\": \"http://adaptivecards.io/schemas/adaptive-card.json\",  \"version\": \"1.2\"}",
            "name": null,
            "thumbnailUrl": null
        }
    ],
    "onBehalfOf": null,
    "mentions": [],
    "reactions": [],
    "messageHistory": []
}
```

### Example 7 : @mention a channel in a channel message

#### Request
The following is an example of the request. For information about how to get a list of channels in a team, see [List channels](../api/channel-list.md).

> Note: **conversationIdentityType** must be set to `channel` to @mention a channel.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_chatmessage_atmentionchannel",
  "sampleKeys": ["68a3e365-f7d9-4a56-b499-24332a9cc572", "19:0b50940236084d258c97b21bd01917b0@thread.skype"]
}-->
```http
POST https://graph.microsoft.com/beta/teams/68a3e365-f7d9-4a56-b499-24332a9cc572/channels/19:0b50940236084d258c97b21bd01917b0@thread.skype/messages
Content-type: application/json

{
    "body": {
        "contentType": "html",
        "content": "<div><div><at id=\"0\">General</at>&nbsp;Hello there!</div></div>"
    },
    "mentions": [
        {
            "id": 0,
            "mentionText": "General",
            "mentioned": {
                "conversation": {
                    "id": "19:0b50940236084d258c97b21bd01917b0@thread.skype",
                    "displayName": "General",
                    "conversationIdentityType": "channel"
                }
            }
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-chatmessage-atmentionchannel-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-chatmessage-atmentionchannel-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-chatmessage-atmentionchannel-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-chatmessage-atmentionchannel-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/post-chatmessage-atmentionchannel-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-chatmessage-atmentionchannel-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#teams('68a3e365-f7d9-4a56-b499-24332a9cc572')/channels('19%3A0b50940236084d258c97b21bd01917b0%40thread.skype')/messages/$entity",
    "id": "1625727486746",
    "replyToId": null,
    "etag": "1625727486746",
    "messageType": "message",
    "createdDateTime": "2021-07-08T06:58:06.746Z",
    "lastModifiedDateTime": "2021-07-08T06:58:06.746Z",
    "lastEditedDateTime": null,
    "deletedDateTime": null,
    "subject": null,
    "summary": null,
    "chatId": null,
    "importance": "normal",
    "locale": "en-us",
    "webUrl": "https://teams.microsoft.com/l/message/19%3A0b50940236084d258c97b21bd01917b0%40thread.skype/1625727486746?groupId=68a3e365-f7d9-4a56-b499-24332a9cc572&tenantId=2432b57b-0abd-43db-aa7b-16eadd115d34&createdTime=1625727486746&parentMessageId=1625727486746",
    "policyViolation": null,
    "eventDetail": null,
    "from": {
        "application": null,
        "device": null,
        "user": {
            "id": "8ea0e38b-efb3-4757-924a-5f94061cf8c2",
            "displayName": "Robin Kline",
            "userIdentityType": "aadUser"
        }
    },
    "body": {
        "contentType": "html",
        "content": "<div><div><at id=\"0\">General</at>&nbsp;Hello there!</div></div>"
    },
    "channelIdentity": {
        "teamId": "68a3e365-f7d9-4a56-b499-24332a9cc572",
        "channelId": "19:0b50940236084d258c97b21bd01917b0@thread.skype"
    },
    "attachments": [],
    "mentions": [
        {
            "id": 0,
            "mentionText": "General",
            "mentioned": {
                "application": null,
                "device": null,
                "user": null,
                "tag": null,
                "conversation": {
                    "id": "19:0b50940236084d258c97b21bd01917b0@thread.skype",
                    "displayName": "General",
                    "conversationIdentityType": "channel"
                }
            }
        }
    ],
    "reactions": [],
    "messageHistory": []
}
```

### Example 8: @mention a team in a channel message

#### Request
The following is an example of the request.

> Note: **conversationIdentityType** must be set to `team` to @mention a team.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_chatmessage_atmentionteam",
  "sampleKeys": ["68a3e365-f7d9-4a56-b499-24332a9cc572", "19:0b50940236084d258c97b21bd01917b0@thread.skype"]
}-->
```http
POST https://graph.microsoft.com/beta/teams/68a3e365-f7d9-4a56-b499-24332a9cc572/channels/19:0b50940236084d258c97b21bd01917b0@thread.skype/messages
Content-type: application/json

{
    "body": {
        "contentType": "html",
        "content": "<div><div><at id=\"0\">GraphTesting</at>&nbsp;Hello team</div></div>"
    },
    "mentions": [
        {
            "id": 0,
            "mentionText": "GraphTesting",
            "mentioned": {
                "conversation": {
                    "id": "68a3e365-f7d9-4a56-b499-24332a9cc572",
                    "displayName": "GraphTesting",
                    "conversationIdentityType": "team"
                }
            }
        }
    ],
    "reactions": [],
    "messageHistory": []
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-chatmessage-atmentionteam-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-chatmessage-atmentionteam-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-chatmessage-atmentionteam-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-chatmessage-atmentionteam-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/post-chatmessage-atmentionteam-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-chatmessage-atmentionteam-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#teams('68a3e365-f7d9-4a56-b499-24332a9cc572')/channels('19%3A0b50940236084d258c97b21bd01917b0%40thread.skype')/messages/$entity",
    "id": "1625727671938",
    "replyToId": null,
    "etag": "1625727671938",
    "messageType": "message",
    "createdDateTime": "2021-07-08T07:01:11.938Z",
    "lastModifiedDateTime": "2021-07-08T07:01:11.938Z",
    "lastEditedDateTime": null,
    "deletedDateTime": null,
    "subject": null,
    "summary": null,
    "chatId": null,
    "importance": "normal",
    "locale": "en-us",
    "webUrl": "https://teams.microsoft.com/l/message/19%3A0b50940236084d258c97b21bd01917b0%40thread.skype/1625727671938?groupId=68a3e365-f7d9-4a56-b499-24332a9cc572&tenantId=2432b57b-0abd-43db-aa7b-16eadd115d34&createdTime=1625727671938&parentMessageId=1625727671938",
    "policyViolation": null,
    "eventDetail": null,
    "from": {
        "application": null,
        "device": null,
        "user": {
            "id": "8ea0e38b-efb3-4757-924a-5f94061cf8c2",
            "displayName": "Robin Kline",
            "userIdentityType": "aadUser"
        }
    },
    "body": {
        "contentType": "html",
        "content": "<div><div><at id=\"0\">GraphTesting</at>&nbsp;Hello team</div></div>"
    },
    "channelIdentity": {
        "teamId": "68a3e365-f7d9-4a56-b499-24332a9cc572",
        "channelId": "19:0b50940236084d258c97b21bd01917b0@thread.skype"
    },
    "attachments": [],
    "mentions": [
        {
            "id": 0,
            "mentionText": "GraphTesting",
            "mentioned": {
                "application": null,
                "device": null,
                "user": null,
                "tag": null,
                "conversation": {
                    "id": "68a3e365-f7d9-4a56-b499-24332a9cc572",
                    "displayName": "GraphTesting",
                    "conversationIdentityType": "team"
                }
            }
        }
    ],
    "reactions": [],
    "messageHistory": []
}
```

### Example 9 : @mention a tag in a channel message

#### Request
The following is an example of the request. For information about how to get a list of tags in a team, see [List teamworkTags](../api/teamworktag-list.md).


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_chatmessage_atmentiontag",
  "sampleKeys": ["fbe2bf47-16c8-47cf-b4a5-4b9b187c508b", "19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2"]
}-->
```http
POST https://graph.microsoft.com/beta/teams/fbe2bf47-16c8-47cf-b4a5-4b9b187c508b/channels/19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2/messages
Content-type: application/json

{
    "body": {
        "contentType": "html",
        "content": "<div><div><at id=\"0\">TestTag</at>&nbsp;Testing Tags</div></div>"
    },
    "mentions": [
        {
            "id": 0,
            "mentionText": "TestTag",
            "mentioned": {
                "tag": {
                    "id": "MjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyM2OGEzZTM2NS1mN2Q5LTRhNTYtYjQ5OS0yNDMzMmE5Y2M1NzIjI3RTMERJZ1Z1ZQ==",
                    "displayName": "TestTag"
                }
            }
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-chatmessage-atmentiontag-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-chatmessage-atmentiontag-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-chatmessage-atmentiontag-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-chatmessage-atmentiontag-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/post-chatmessage-atmentiontag-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-chatmessage-atmentiontag-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#teams('fbe2bf47-16c8-47cf-b4a5-4b9b187c508b')/channels('19%3A4a95f7d8db4c4e7fae857bcebe0623e6%40thread.tacv2')/messages/$entity",
    "id": "1625726986373",
    "replyToId": null,
    "etag": "1625726986373",
    "messageType": "message",
    "createdDateTime": "2021-07-08T06:49:46.373Z",
    "lastModifiedDateTime": "2021-07-08T06:49:46.373Z",
    "lastEditedDateTime": null,
    "deletedDateTime": null,
    "subject": null,
    "summary": null,
    "chatId": null,
    "importance": "normal",
    "locale": "en-us",
    "webUrl": "https://teams.microsoft.com/l/message/19%3A4a95f7d8db4c4e7fae857bcebe0623e6%40thread.tacv2/1625726986373?groupId=fbe2bf47-16c8-47cf-b4a5-4b9b187c508b&tenantId=2432b57b-0abd-43db-aa7b-16eadd115d34&createdTime=1625726986373&parentMessageId=1625726986373",
    "policyViolation": null,
    "eventDetail": null,
    "from": {
        "application": null,
        "device": null,
        "user": {
            "id": "8ea0e38b-efb3-4757-924a-5f94061cf8c2",
            "displayName": "Robin Kline",
            "userIdentityType": "aadUser"
        }
    },
    "body": {
        "contentType": "html",
        "content": "<div><div><at id=\"0\">TestTag</at>&nbsp;Testing Tags</div></div>"
    },
    "channelIdentity": {
        "teamId": "fbe2bf47-16c8-47cf-b4a5-4b9b187c508b",
        "channelId": "19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2"
    },
    "attachments": [],
    "mentions": [
        {
            "id": 0,
            "mentionText": "TestTag",
            "mentioned": {
                "application": null,
                "device": null,
                "user": null,
                "conversation": null,
                "tag": {
                    "id": "MjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyM2OGEzZTM2NS1mN2Q5LTRhNTYtYjQ5OS0yNDMzMmE5Y2M1NzIjI3RTMERJZ1Z1ZQ==",
                    "displayName": "TestTag"
                }
            }
        }
    ],
    "reactions": [],
    "messageHistory": []
}
```

### Example 10: Send message that contains cards that are attributed to a Teams app

#### Request

The following is an example of the request.

> **Note:** When specifying a Teams app to attribute a card to, the Azure AD app ID used to make the call must match the Azure AD app ID of the Teams app. The Azure AD app ID of the Teams app can be specified in the *webApplicationInfo* section of the app's manifest. Refer to the following documentation on the current [Teams app manifest schema](/microsoftteams/platform/resources/schema/manifest-schema).
>
> Furthermore, the app specified in the payload must be installed either for the user sending the message or in the chat or channel in which the message is being sent.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_chatmessage_10",
  "sampleKeys": ["fbe2bf47-16c8-47cf-b4a5-4b9b187c508b", "19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2"]
}-->

```http
POST https://graph.microsoft.com/beta/teams/fbe2bf47-16c8-47cf-b4a5-4b9b187c508b/channels/19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2/messages
Content-type: application/json

{
    "subject": null,
    "body": {
        "contentType": "html",
        "content": "<attachment id=\"74d20c7f34aa4a7fb74e2b30004247c5\"></attachment>"
    },
    "attachments": [
        {
            "id": "74d20c7f34aa4a7fb74e2b30004247c5",
            "contentType": "application/vnd.microsoft.card.thumbnail",
            "contentUrl": null,
            "content": "{\r\n  \"title\": \"This is an example of posting a card\",\r\n  \"subtitle\": \"<h3>This is the subtitle</h3>\",\r\n  \"text\": \"Here is some body text. <br>\\r\\nAnd a <a href=\\\"http://microsoft.com/\\\">hyperlink</a>. <br>\\r\\nAnd below that is some buttons:\",\r\n  \"buttons\": [\r\n    {\r\n      \"type\": \"messageBack\",\r\n      \"title\": \"Login to FakeBot\",\r\n      \"text\": \"login\",\r\n      \"displayText\": \"login\",\r\n      \"value\": \"login\"\r\n    }\r\n  ]\r\n}",
            "name": null,
            "thumbnailUrl": null,
            "teamsAppId": "881b8843-fd91-49e5-9ac2-47ec497ffbe5"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-chatmessage-10-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-chatmessage-10-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-chatmessage-10-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-chatmessage-10-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/post-chatmessage-10-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-chatmessage-10-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#teams('fbe2bf47-16c8-47cf-b4a5-4b9b187c508b')/channels('19%3A4a95f7d8db4c4e7fae857bcebe0623e6%40thread.tacv2')/messages/$entity",
    "id": "1616991851162",
    "replyToId": null,
    "etag": "1616991851162",
    "messageType": "message",
    "createdDateTime": "2021-03-29T04:24:11.162Z",
    "lastModifiedDateTime": "2021-03-29T04:24:11.162Z",
    "lastEditedDateTime": null,
    "deletedDateTime": null,
    "subject": null,
    "summary": null,
    "chatId": null,
    "importance": "normal",
    "locale": "en-us",
    "webUrl": "https://teams.microsoft.com/l/message/19%3A4a95f7d8db4c4e7fae857bcebe0623e6%40thread.tacv2/1616991851162?groupId=fbe2bf47-16c8-47cf-b4a5-4b9b187c508b&tenantId=2432b57b-0abd-43db-aa7b-16eadd115d34&createdTime=1616991851162&parentMessageId=1616991851162",
    "policyViolation": null,
    "eventDetail": null,
    "from": {
        "application": null,
        "device": null,
        "user": {
            "id": "8ea0e38b-efb3-4757-924a-5f94061cf8c2",
            "displayName": "Robin Kline",
            "userIdentityType": "aadUser"
        }
    },
    "body": {
        "contentType": "html",
        "content": "<attachment id=\"74d20c7f34aa4a7fb74e2b30004247c5\"></attachment>"
    },
    "channelIdentity": {
        "teamId": "fbe2bf47-16c8-47cf-b4a5-4b9b187c508b",
        "channelId": "19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2"
    },
    "attachments": [
        {
            "id": "74d20c7f34aa4a7fb74e2b30004247c5",
            "contentType": "application/vnd.microsoft.card.thumbnail",
            "contentUrl": null,
            "content": "{  \"title\": \"This is an example of posting a card\",  \"subtitle\": \"<h3>This is the subtitle</h3>\",  \"text\": \"Here is some body text. <br>\\\\And a <a href=\\\"http://microsoft.com/\\\">hyperlink</a>. <br>\\\\And below that is some buttons:\",  \"buttons\": [    {      \"type\": \"messageBack\",      \"title\": \"Login to FakeBot\",      \"text\": \"login\",      \"displayText\": \"login\",      \"value\": \"login\"    }  ]}",
            "name": null,
            "thumbnailUrl": null,
            "teamsAppId": "881b8843-fd91-49e5-9ac2-47ec497ffbe5"
        }
    ],
    "onBehalfOf": null,
    "mentions": [],
    "reactions": [],
    "messageHistory": []
}
```

### Example 11: Send message that contains announcement

#### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_chatmessage_11",
  "sampleKeys": ["5c884e2f-83f8-4cff-af8e-0177f260b9f8", "19:81f49626414645c99469ee65a1a7e1a4@thread.tacv2"]
}-->

```http
POST https://graph.microsoft.com/beta/teams/5c884e2f-83f8-4cff-af8e-0177f260b9f8/channels/19:81f49626414645c99469ee65a1a7e1a4@thread.tacv2/messages
Content-type: application/json

{
    "subject": "Announcement Subheading",
    "body": {
        "contentType": "text",
        "content": "<attachment id=\"d7ddbf876ae340c3a03bada395ec7da7\"></attachment>Announcement text"
    },
    "attachments": [
        {
            "id": "d7ddbf876ae340c3a03bada395ec7da7",
            "contentType": "application/vnd.microsoft.teams.messaging-announcementBanner",
            "contentUrl": null,
            "content": "{\"title\":\"Announcement heading\",\"cardImageType\":\"uploadedImage\",\"cardImageDetails\":{\"uploadedImageDetail\":{\"originalImage\":{\"source\":\"../hostedContents/1/$value\",\"width\":1379,\"height\":268,\"croppedWidth\":918.0,\"croppedHeight\":178.4075416968818,\"leftMargin\":0.0,\"topMargin\":90.7962291515591,\"imageContentType\":\"image/png\"},\"croppedImage\":{\"source\":\"../hostedContents/2/$value\"}}}}",
            "name": null,
            "thumbnailUrl": null
        }
    ],
    "hostedContents": [
        {
            "@microsoft.graph.temporaryId": "1",
            "contentBytes": "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",
            "contentType": "image/png"
        },
        {
            "@microsoft.graph.temporaryId": "2",
            "contentBytes": "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",
            "contentType": "image/png"
        }
    ]
}
```

# [C#](#tab/csharp)

# [JavaScript](#tab/javascript)

# [Java](#tab/java)

# [Go](#tab/go)

# [PowerShell](#tab/powershell)

# [PHP](#tab/php)

---

#### Response

The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#teams('5c884e2f-83f8-4cff-af8e-0177f260b9f8')/channels('19%3A81f49626414645c99469ee65a1a7e1a4%40thread.tacv2')/messages/$entity",
    "id": "1675104302171",
    "replyToId": null,
    "etag": "1675104302171",
    "messageType": "message",
    "createdDateTime": "2023-01-30T18:45:02.171Z",
    "lastModifiedDateTime": "2023-01-30T18:45:02.171Z",
    "lastEditedDateTime": null,
    "deletedDateTime": null,
    "subject": "Announcement Subheading",
    "summary": null,
    "chatId": null,
    "importance": "normal",
    "locale": "en-us",
    "webUrl": "https://teams.microsoft.com/l/message/19%3A81f49626414645c99469ee65a1a7e1a4%40thread.tacv2/1675104302171?groupId=5c884e2f-83f8-4cff-af8e-0177f260b9f8&tenantId=2432b57b-0abd-43db-aa7b-16eadd115d34&createdTime=1675104302171&parentMessageId=1675104302171",
    "onBehalfOf": null,
    "policyViolation": null,
    "eventDetail": null,
    "from": {
        "application": null,
        "device": null,
        "user": {
            "id": "28c10244-4bad-4fda-993c-f332faef94f0",
            "displayName": "Sumana Chakrabarti",
            "userIdentityType": "aadUser"
        }
    },
    "body": {
        "contentType": "text",
        "content": "<attachment id=\"d7ddbf876ae340c3a03bada395ec7da7\"></attachment>Announcement text"
    },
    "channelIdentity": {
        "teamId": "5c884e2f-83f8-4cff-af8e-0177f260b9f8",
        "channelId": "19:81f49626414645c99469ee65a1a7e1a4@thread.tacv2"
    },
    "attachments": [
        {
            "id": "d7ddbf876ae340c3a03bada395ec7da7",
            "contentType": "application/vnd.microsoft.teams.messaging-announcementBanner",
            "contentUrl": null,
            "content": "{\"title\":\"Announcement heading\",\"cardImageType\":\"uploadedImage\",\"cardImageDetails\":{\"uploadedImageDetail\":{\"originalImage\":{\"source\":\"https://graph.microsoft.com/beta/teams/5c884e2f-83f8-4cff-af8e-0177f260b9f8/channels/19:81f49626414645c99469ee65a1a7e1a4@thread.tacv2/messages/1675104302171/hostedContents/aWQ9LHR5cGU9MSx1cmw9aHR0cHM6Ly91cy1hcGkuYXNtLnNreXBlLmNvbS92MS9vYmplY3RzLzAtd3VzLWQyLTY3OTJlM2ExMzFmNzc4YjY5NWMwYTE5ZGRkZmIwYWNiL3ZpZXdzL2ltZ28=/$value\",\"width\":1379,\"height\":268,\"croppedWidth\":918.0,\"croppedHeight\":178.4075416968818,\"leftMargin\":0.0,\"topMargin\":90.7962291515591,\"imageContentType\":\"image/png\"},\"croppedImage\":{\"source\":\"https://graph.microsoft.com/beta/teams/5c884e2f-83f8-4cff-af8e-0177f260b9f8/channels/19:81f49626414645c99469ee65a1a7e1a4@thread.tacv2/messages/1675104302171/hostedContents/aWQ9LHR5cGU9MSx1cmw9aHR0cHM6Ly91cy1hcGkuYXNtLnNreXBlLmNvbS92MS9vYmplY3RzLzAtd3VzLWQzLTAwYjhhNWZiZTA0MGRmY2MzMWZkNzM1ZDE4Yjk4NTM5L3ZpZXdzL2ltZ28=/$value\"}}}}",
            "name": null,
            "thumbnailUrl": null,
            "teamsAppId": null
        }
    ],
    "mentions": [],
    "reactions": []
}

```
### Example 12: Send message with emojis

#### Request

The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_chatmessage_12",
  "sampleKeys": ["19:7fb82b685f9c457296a0ab6a1d98b4c1@thread.v2"]
}-->

```http
POST https://graph.microsoft.com/beta/chats/19:7fb82b685f9c457296a0ab6a1d98b4c1@thread.v2/messages
Content-type: application/json

{
    "body": {
        "contentType": "html",
        "content": "<emoji alt=\"😶‍🌫️\"></emoji>"
    }
}
```

# [C#](#tab/csharp)

# [JavaScript](#tab/javascript)

# [Java](#tab/java)

# [Go](#tab/go)

# [PowerShell](#tab/powershell)

# [PHP](#tab/php)

---

#### Response

The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://canary.graph.microsoft.com/testprodbetateamsgraphsumanach/$metadata#chats('19%3A7fb82b685f9c457296a0ab6a1d98b4c1%40thread.v2')/messages/$entity",
    "id": "1675459162626",
    "replyToId": null,
    "etag": "1675459162626",
    "messageType": "message",
    "createdDateTime": "2023-02-03T21:19:22.626Z",
    "lastModifiedDateTime": "2023-02-03T21:19:22.626Z",
    "lastEditedDateTime": null,
    "deletedDateTime": null,
    "subject": null,
    "summary": null,
    "chatId": "19:7fb82b685f9c457296a0ab6a1d98b4c1@thread.v2",
    "importance": "normal",
    "locale": "en-us",
    "webUrl": null,
    "channelIdentity": null,
    "onBehalfOf": null,
    "policyViolation": null,
    "eventDetail": null,
    "from": {
        "application": null,
        "device": null,
        "user": {
            "id": "28c10244-4bad-4fda-993c-f332faef94f0",
            "displayName": "Test User",
            "userIdentityType": "aadUser"
        }
    },
    "body": {
        "contentType": "html",
        "content": "<emoji id=\"faceinclouds\" alt=\"😶‍🌫️\" title=\"Face in clouds\"></emoji>"
    },
    "attachments": [],
    "mentions": [],
    "reactions": []
}
```
## See also

- [Cards reference](/microsoftteams/platform/concepts/cards/cards-reference)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Send message",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
