---
title: "chatMessage resource type"
description: "Represents an individual chat message within a channel or chat entity. The chat message can be a root chat message or part of a thread that is defined by the **replyToId** property in the chat message."
doc_type: resourcePageType
localization_priority: Normal
author: "nkramer"
ms.prod: "microsoft-teams"
---

# chatMessage resource type

Namespace: microsoft.graph

Represents an individual chat message within a [channel](./channel.md) or [chat](/graph/api/resources/chat?view=graph-rest-beta). The chat message can be a root chat message or part of a reply thread that is defined by the **replyToId** property in the chat message.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|**Channel messages**| | |
|[List channel chatMessage](/graph/api/channel-list-messages?view=graph-rest-beta) | [chatMessage](#chatmessage-resource-type) collection |List of all root chat messages in a channel.  |
|[Get chatMessages in a channel delta](/graph/api/chatmessage-delta?view=graph-rest-beta) | [chatMessage](#chatmessage-resource-type) |Retrieve  chat messages (without replies) in a channel.|
|[Create subscription for new channel messages](../api/subscription-post-subscriptions.md)  | [subscription](./subscription.md)  |  Listen for new and edited channel messages and reactions. |
|[Get channel chatMessage](/graph/api/channel-get-message?view=graph-rest-beta) | [chatMessage](#chatmessage-resource-type)  | Retrieve a single chat message (without replies) from a channel. |  
|[Create chatMessage in a channel](../api/channel-post-messages.md) | [chatMessage](#chatmessage-resource-type)| Create a new top-level chat message in a channel.|
|**Channel message replies**| | |
|[List replies to a chatMessage](/graph/api/channel-list-messagereplies?view=graph-rest-beta)]| [chatMessage](#chatmessage-resource-type) collection | List all replies to a chat message in a channel. |
|[Get a reply to a chatMessage](/graph/api/channel-get-messagereply?view=graph-rest-beta)| [chatMessage](#chatmessage-resource-type) |Retrieve a single reply to a chat message in a channel. |
|[Reply to a chatMessage in a channel](../api/channel-post-messagereply.md) | [chatMessage](#chatmessage-resource-type)| Reply to an existing chat message in a channel.|
|**1:1 and group chat messages**| | |
|[Create chatMessage in a chat](/graph/api/chat-post-messages?view=graph-rest-beta) | [chatMessage](#chatmessage-resource-type) | Send a chat message in an existing 1:1 or group chat conversation. |
|[List chatMessages in a chat](/graph/api/chatmessage-list?view=graph-rest-beta) |[chatMessage](#chatmessage-resource-type)|List chat messages in a 1:1 or group chat.|
|[Create subscription for new chat messages](../api/subscription-post-subscriptions.md) |[subscription](./subscription.md)|Listen for new and edited chat messages and reactions.|
|[Get chatMessage in chat](/graph/api/chatmessage-get?view=graph-rest-beta)  |[chatMessage](#chatmessage-resource-type) |Retrieve a single chat message in a chat.|
|**Hosted content**| | |
|[List all hosted content](/graph/api/chatmessage-list-chatmessagehostedcontents?view=graph-rest-beta) |[chatMessageHostedContent](/graph/api/resources/chatmessagehostedcontent?view=graph-rest-beta) collection |Retrieve all hosted content in a chat message. |
|[Get hosted content](/graph/api/chatmessagehostedcontent-get?view=graph-rest-beta) | [chatMessageHostedContent](/graph/api/resources/chatmessagehostedcontent?view=graph-rest-beta) |Retrieve hosted content from a chat message.  |

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|id|String| Read-only. Unique Id of the message.|
|replyToId| string | Read-only. Id of the parent chat message or root chat message of the thread. (Only applies to chat messages in channels not chats) |
|from|[identitySet](identityset.md)| Read only. Details of the sender of the chat message.|
|etag| string | Read-only. Version number of the chat message. |
|messageType|string|The type of chat message. The possible values are: `message`.|
|createdDateTime|dateTimeOffset|Read only. Timestamp of when the chat message was created.|
|lastModifiedDateTime|dateTimeOffset|Read only. Timestamp of when the chat message is created or edited, including when a reply is made (if it's a root chat message in a channel) or a reaction is added or removed. |
|deletedDateTime|dateTimeOffset|Read only. Timestamp at which the chat message was deleted, or null if not deleted. |
|subject|string| The subject of the chat message, in plaintext.|
|body|[itemBody](itembody.md)|Plaintext/HTML representation of the content of the chat message. Representation is specified by the contentType inside the body. The content is always in HTML if the chat message contains a [chatMessageMention](chatmessagemention.md). |
|summary|string| Summary text of the chat message that could be used for push notifications and summary views or fall back views. Only applies to channel chat messages, not chat messages in a chat. |
|attachments|[chatMessageAttachment](chatmessageattachment.md) collection |Attached files. Attachments are currently read-only – sending attachments is not supported. |
|mentions|[chatMessageMention](chatmessagemention.md) collection| List of entities mentioned in the chat message. Currently supports user, bot, team, channel.|
|importance| string | The importance of the chat message. The possible values are: `normal`, `high`, `urgent`.|
|reactions| [chatMessageReaction](/graph/api/resources/chatmessagereaction?view=graph-rest-beta) collection | Reactions for this chat message (for example, Like).|
|locale|string|Locale of the chat message set by the client.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "deleted",
    "deletedDateTime",
    "attachments",
    "importance",
    "reactions",
    "mentions",
    "subject",
    "summary"
  ],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.chatMessage"
}-->

```json
{
  "id": "string (identifier)",
  "replyToId": "string (identifier)",
  "from": {"@odata.type": "microsoft.graph.identitySet"},
  "etag": "string",
  "messageType": "string",
  "createdDateTime": "string (timestamp)",
  "lastModifiedDateTime": "string (timestamp)",
  "deletedDateTime": "string (timestamp)",
  "subject": "string",
  "body": {"@odata.type": "microsoft.graph.itemBody"},
  "summary": "string",
  "attachments": [{"@odata.type": "microsoft.graph.chatMessageAttachment"}],
  "mentions": [{"@odata.type": "microsoft.graph.chatMessageMention"}],
  "importance": "string",
  "policyViolation": "string",
  "reactions":  "string",
  "locale": "string",
  "deleted": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "chat message resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
