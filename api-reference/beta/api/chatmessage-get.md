---
title: "Get chatMessage in a channel or chat"
description: "Retrieve a single message (without its replies) in a channel or a chat."
author: "RamjotSingh"
ms.localizationpriority: high
ms.subservice: "teams"
doc_type: apiPageType
---

# Get chatMessage in a channel or chat

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a single [message](../resources/chatmessage.md) or a [message reply](../resources/chatmessage.md) in a [channel](../resources/channel.md) or a [chat](../resources/chat.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### Permissions for channel
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
|Delegated (work or school account)| ChannelMessage.Read.All, Group.Read.All, Group.ReadWrite.All |
|Delegated (personal Microsoft account)|Not supported.|
|Application| ChannelMessage.Read.Group, ChannelMessage.Read.All, Group.Read.All, Group.ReadWrite.All |

> **Note:** The Group.Read.All and Group.ReadWrite.All permissions are supported only for backward compatibility. We recommend that you update your solutions to use an alternative permission listed in the previous table and avoid using these permissions going forward.

### Permissions for chat
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
|Delegated (work or school account)| Chat.Read, Chat.ReadWrite|
|Delegated (personal Microsoft account)|Not supported.|
|Application| ChatMessage.Read.Chat, Chat.Read.All, Chat.ReadWrite.All|

> [!NOTE]
> The ChannelMessage.Read.Group and ChatMessage.Read.Chat permissions use [resource-specific consent]( https://aka.ms/teams-rsc).

## HTTP request

**Get message in a channel**
<!-- { "blockType": "ignored" } -->
```http
GET /teams/{team-id}/channels/{channel-id}/messages/{message-id}
GET /teams/{team-id}/channels/{channel-id}/messages/{message-id}/replies/{reply-id}
```

**Get message in a chat**
<!-- { "blockType": "ignored" } -->
```http
GET /chats/{chat-id}/messages/{message-id}
GET /users/{user-id | user-principal-name}/chats/{chat-id}/messages/{message-id}
GET /me/chats/{chat-id}/messages/{message-id}
```

## Optional query parameters
This method doesn't support the [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers
| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [chatmessage](../resources/chatmessage.md) object in the response body.

## Examples

### Example 1: Get a message in a chat
#### Request
The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_chatmessagechannel_1",
  "sampleKeys": ["19:8ea0e38b-efb3-4757-924a-5f94061cf8c2_97f62344-57dc-409c-88ad-c4af14158ff5@unq.gbl.spaces", "1612289992105"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/chats/19:8ea0e38b-efb3-4757-924a-5f94061cf8c2_97f62344-57dc-409c-88ad-c4af14158ff5@unq.gbl.spaces/messages/1612289992105
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-chatmessagechannel-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-chatmessagechannel-1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-chatmessagechannel-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-chatmessagechannel-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-chatmessagechannel-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-chatmessagechannel-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-chatmessagechannel-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-chatmessagechannel-1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.`chatId` identifies the [chat](../resources/chat.md) that contains this message.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#chats('19%3A8ea0e38b-efb3-4757-924a-5f94061cf8c2_97f62344-57dc-409c-88ad-c4af14158ff5%40unq.gbl.spaces')/messages/$entity",
    "id": "1612289992105",
    "replyToId": null,
    "etag": "1612289992105",
    "messageType": "message",
    "createdDateTime": "2021-02-02T18:19:52.105Z",
    "lastModifiedDateTime": "2021-02-02T18:19:52.105Z",
    "lastEditedDateTime": null,
    "deletedDateTime": null,
    "subject": null,
    "summary": null,
    "chatId": "19:8ea0e38b-efb3-4757-924a-5f94061cf8c2_97f62344-57dc-409c-88ad-c4af14158ff5@unq.gbl.spaces",
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
        "conversation": null,
        "user": {
            "@odata.type": "#microsoft.graph.teamworkUserIdentity",
            "id": "8ea0e38b-efb3-4757-924a-5f94061cf8c2",
            "displayName": "Robin Kline",
            "userIdentityType": "aadUser",
            "tenantId": "e61ef81e-8bd8-476a-92e8-4a62f8426fca"
        }
    },
    "body": {
        "contentType": "text",
        "content": "test"
    },
    "attachments": [],
    "mentions": [],
    "reactions": [],
    "messageHistory": []
}
```

### Example 2: Get a message in a channel
#### Request
The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_chatmessagechannel_2",
  "sampleKeys": ["fbe2bf47-16c8-47cf-b4a5-4b9b187c508b", "19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2", "1614618259349"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/teams/fbe2bf47-16c8-47cf-b4a5-4b9b187c508b/channels/19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2/messages/1614618259349
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-chatmessagechannel-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-chatmessagechannel-2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-chatmessagechannel-2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-chatmessagechannel-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-chatmessagechannel-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-chatmessagechannel-2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-chatmessagechannel-2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-chatmessagechannel-2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.`channelIdentity` identifies the [team](../resources/team.md) and [channel](../resources/channel.md) that contains this message.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#teams('fbe2bf47-16c8-47cf-b4a5-4b9b187c508b')/channels('19%3A4a95f7d8db4c4e7fae857bcebe0623e6%40thread.tacv2')/messages/$entity",
    "id": "1614618259349",
    "replyToId": null,
    "etag": "1614618259349",
    "messageType": "message",
    "createdDateTime": "2021-03-01T17:04:19.349Z",
    "lastModifiedDateTime": "2021-03-01T17:04:19.349Z",
    "lastEditedDateTime": null,
    "deletedDateTime": null,
    "subject": null,
    "summary": null,
    "chatId": null,
    "importance": "normal",
    "locale": "en-us",
    "webUrl": "https://teams.microsoft.com/l/message/19%3A4a95f7d8db4c4e7fae857bcebe0623e6%40thread.tacv2/1614618259349?groupId=fbe2bf47-16c8-47cf-b4a5-4b9b187c508b&tenantId=2432b57b-0abd-43db-aa7b-16eadd115d34&createdTime=1614618259349&parentMessageId=1614618259349",
    "policyViolation": null,
    "eventDetail": null,
    "from": {
        "application": null,
        "device": null,
        "conversation": null,
        "user": {
            "@odata.type": "#microsoft.graph.teamworkUserIdentity",
            "id": "8ea0e38b-efb3-4757-924a-5f94061cf8c2",
            "displayName": "Robin Kline",
            "userIdentityType": "aadUser",
            "tenantId": "e61ef81e-8bd8-476a-92e8-4a62f8426fca"
        }
    },
    "body": {
        "contentType": "html",
        "content": "<div><div><div><span><img height=\"250\" src=\"https://graph.microsoft.com/beta/teams/fbe2bf47-16c8-47cf-b4a5-4b9b187c508b/channels/19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2/messages/1614618259349/hostedContents/aWQ9eF8wLXd1cy1kOS1jZTI3NDkxOTIzMTJjYWI5NDczMWQwYTgzNTFjN2VhNSx0eXBlPTEsdXJsPWh0dHBzOi8vdXMtYXBpLmFzbS5za3lwZS5jb20vdjEvb2JqZWN0cy8wLXd1cy1kOS1jZTI3NDkxOTIzMTJjYWI5NDczMWQwYTgzNTFjN2VhNS92aWV3cy9pbWdv/$value\" width=\"424.6575342465753\" style=\"vertical-align:bottom; width:424px; height:250px\"></span></div></div></div>"
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

### Example 3: Get reply to a message in a channel
#### Request
The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_chatmessagechannel_3",
  "sampleKeys": ["fbe2bf47-16c8-47cf-b4a5-4b9b187c508b", "19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2", "1612509044972", "1613671348387"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/teams/fbe2bf47-16c8-47cf-b4a5-4b9b187c508b/channels/19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2/messages/1612509044972/replies/1613671348387
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-chatmessagechannel-3-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-chatmessagechannel-3-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-chatmessagechannel-3-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-chatmessagechannel-3-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-chatmessagechannel-3-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-chatmessagechannel-3-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-chatmessagechannel-3-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-chatmessagechannel-3-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.`replyToId` contains the `id` of the root message.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#teams('fbe2bf47-16c8-47cf-b4a5-4b9b187c508b')/channels('19%3A4a95f7d8db4c4e7fae857bcebe0623e6%40thread.tacv2')/messages('1612509044972')/replies/$entity",
    "id": "1613671348387",
    "replyToId": "1612509044972",
    "etag": "1613671348387",
    "messageType": "message",
    "createdDateTime": "2021-02-18T18:02:28.387Z",
    "lastModifiedDateTime": "2021-02-18T18:02:28.387Z",
    "lastEditedDateTime": null,
    "deletedDateTime": null,
    "subject": null,
    "summary": null,
    "chatId": null,
    "importance": "normal",
    "locale": "en-us",
    "webUrl": "https://teams.microsoft.com/l/message/19%3A4a95f7d8db4c4e7fae857bcebe0623e6%40thread.tacv2/1613671348387?groupId=fbe2bf47-16c8-47cf-b4a5-4b9b187c508b&tenantId=2432b57b-0abd-43db-aa7b-16eadd115d34&createdTime=1613671348387&parentMessageId=1612509044972",
    "policyViolation": null,
    "eventDetail": null,
    "from": {
        "application": null,
        "device": null,
        "conversation": null,
        "user": {
            "@odata.type": "#microsoft.graph.teamworkUserIdentity",
            "id": "8ea0e38b-efb3-4757-924a-5f94061cf8c2",
            "displayName": "Robin Kline",
            "userIdentityType": "aadUser",
            "tenantId": "e61ef81e-8bd8-476a-92e8-4a62f8426fca"
        }
    },
    "body": {
        "contentType": "html",
        "content": "<div><div>Test</div></div>"
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
### Example 4: Get a chat message with custom emojis and reactions

The following example shows a request to get a chat message that contains custom emojis in the message body and includes custom reactions.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_chatmessage_4",
  "sampleKeys": ["19:bcf84b15c2994a909770f7d05bc4fe16@thread.v2", "1706763669648"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/chats/19:bcf84b15c2994a909770f7d05bc4fe16@thread.v2/messages/1706763669648
```

#### Response

The following example shows the response. The message body contains a `<customemoji></customemoji>` tag, and the message includes a custom reaction indicated by `"reactionType": "custom"`. You can access both custom emojis and reactions as content hosted within a chat message.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/testprodbetateamsgraphdev/$metadata#chats('19%3Abcf84b15c2994a909770f7d05bc4fe16%40thread.v2')/messages/$entity",
    "id": "1706763669648",
    "replyToId": null,
    "etag": "1707948456260",
    "messageType": "message",
    "createdDateTime": "2024-02-01T05:01:09.648Z",
    "lastModifiedDateTime": "2024-02-14T22:07:36.26Z",
    "lastEditedDateTime": null,
    "deletedDateTime": null,
    "subject": null,
    "summary": null,
    "chatId": "19:bcf84b15c2994a909770f7d05bc4fe16@thread.v2",
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
            "@odata.type": "#microsoft.graph.teamworkUserIdentity",
            "id": "670374fa-3b0e-4a3b-9d33-0e1bc5ff1956",
            "displayName": "Sumana NonAdmin",
            "userIdentityType": "aadUser",
            "tenantId": "2432b57b-0abd-43db-aa7b-16eadd115d34"
        }
    },
    "body": {
        "contentType": "html",
        "content": "<p>I am looking&nbsp;<emoji id=\"1f440_eyes\" alt=\"👀\" title=\"Eyes\"></emoji><customemoji id=\"dGVzdHNjOzAtd3VzLWQyLTdiNWRkZGQ2ZGVjMDNkYzIwNTgxY2NkYTE1MmEyZTM4\" alt=\"testsc\" source=\"https://graph.microsoft.com/beta/chats/19:bcf84b15c2994a909770f7d05bc4fe16@thread.v2/messages/1706638496169/hostedContents/aWQ9LHR5cGU9MSx1cmw9aHR0cHM6Ly91cy1jYW5hcnkuYXN5bmNndy50ZWFtcy5taWNyb3NvZnQuY29tL3YxL29iamVjdHMvMC13dXMtZDItN2I1ZGRkZDZkZWMwM2RjMjA1ODFjY2RhMTUyYTJlMzgvdmlld3MvaW1ndDJfYW5pbQ==/$value\"></customemoji></p>"
    },
    "attachments": [],
    "mentions": [],
    "reactions": [
        {
            "reactionType": "💯",
            "reactionContentUrl": null,
            "createdDateTime": "2024-02-14T22:07:36.3Z",
            "user": {
                "application": null,
                "device": null,
                "user": {
                    "@odata.type": "#microsoft.graph.teamworkUserIdentity",
                    "id": "670374fa-3b0e-4a3b-9d33-0e1bc5ff1956",
                    "displayName": null,
                    "userIdentityType": "aadUser"
                }
            }
        },
        {
            "reactionType": "custom",
            "reactionContentUrl": "https://graph.microsoft.com/beta/chats/19:bcf84b15c2994a909770f7d05bc4fe16@thread.v2/messages/1706763669648/hostedContents/aWQ9MC13dXMtZDExLTc3ZmI2NmY4MTMwMGI2OGEzYzRkOWUyNmU1YTc5ZmMyLHR5cGU9MSx1cmw9/$value",
            "createdDateTime": "2024-02-14T22:07:02.288Z",
            "user": {
                "application": null,
                "device": null,
                "user": {
                    "@odata.type": "#microsoft.graph.teamworkUserIdentity",
                    "id": "28c10244-4bad-4fda-993c-f332faef94f0",
                    "displayName": null,
                    "userIdentityType": "aadUser"
                }
            }
        }
    ]
}
```

## Related content

- [List messages in a channel](channel-list-messages.md)
- [List messages in a chat](chat-list-messages.md)
- [Send message in a channel or a chat](chatmessage-post.md)
- [Microsoft Graph service-specific throttling limits](/graph/throttling-limits#microsoft-teams-service-limits)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Retrieve a single message (without its replies) in a channel or a chat.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
