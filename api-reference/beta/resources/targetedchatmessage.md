---
title: "targetedChatMessage resource type"
description: "Represents a targeted message in Microsoft Teams that is visible only to a specified recipient within a group chat or channel."
author: "devjha-ms"
ms.date: 02/16/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# targetedChatMessage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a targeted message in Microsoft Teams that is visible only to a specified recipient. Unlike regular messages that are visible to all participants in a group chat or channel, targeted messages provide privacy for bot interactions and app-to-user communications that require user-specific information.

Targeted messages are used in scenarios such as:
- Bot authentication requests in group contexts, where credentials should only be visible to the requesting user.
- Chat summaries for new members, visible only to the joining member.
- Proactive and reactive bot messages that contain sensitive or user-specific information.

Inherits from [chatMessage](../resources/chatmessage.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get all targeted messages](../api/userteamwork-getalltargetedmessages.md)|[targetedChatMessage](../resources/targetedchatmessage.md) collection|Get all [targeted messages](../resources/targetedchatmessage.md) sent to a specific user in group chats and channels.|
|[Get all retained targeted messages](../api/userteamwork-getallretainedtargetedmessages.md)|[targetedChatMessage](../resources/targetedchatmessage.md) collection|Get all retained [targeted messages](../resources/targetedchatmessage.md) sent to a specific user in group chats and channels.|
|[Delete targeted message for channel](../api/userteamwork-deletetargetedmessage.md)|None|Delete a specific [targeted message](../resources/targetedchatmessage.md) from a channel context.|
|[Delete targeted message for chat](../api/chat-delete-targetedmessages.md)|None|Delete a specific [targeted message](../resources/targetedchatmessage.md) from a chat context. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attachments|[chatMessageAttachment](../resources/chatmessageattachment.md) collection|References to attached objects like files, tabs, meetings, or other items. Inherited from [chatMessage](../resources/chatmessage.md).|
|body|[itemBody](../resources/itembody.md)|The content of the message. Inherited from [chatMessage](../resources/chatmessage.md).|
|channelIdentity|[channelIdentity](../resources/channelidentity.md)|The channel and team information if the targeted message was sent in a channel context. Contains the **channelId** and **teamId** properties. Inherited from [chatMessage](../resources/chatmessage.md).|
|chatId|String|The unique identifier of the chat if the targeted message was sent in a group chat context. Inherited from [chatMessage](../resources/chatmessage.md).|
|createdDateTime|DateTimeOffset|The date and time when the message was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is `2014-01-01T00:00:00Z`. Inherited from [chatMessage](../resources/chatmessage.md).|
|deletedDateTime|DateTimeOffset|The date and time when the message was deleted. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is `2014-01-01T00:00:00Z`. Only applicable for retained messages. Inherited from [chatMessage](../resources/chatmessage.md).|
|etag|String|Version number of the message. Inherited from [chatMessage](../resources/chatmessage.md).|
|eventDetail|[eventMessageDetail](../resources/eventmessagedetail.md)|Details about the event if this message represents a system event. Inherited from [chatMessage](../resources/chatmessage.md).|
|from|[chatMessageFromIdentitySet](../resources/chatmessagefromidentityset.md)|Details about the sender of the targeted message. Inherited from [chatMessage](../resources/chatmessage.md).|
|id|String|Unique identifier of the message. The message ID is only unique within the context of a single conversation (chat or channel) for a specific user. Inherited from [chatMessage](../resources/chatmessage.md).|
|importance|chatMessageImportance|The importance of the message. The possible values are: `normal`, `high`, `urgent`. Inherited from [chatMessage](../resources/chatmessage.md).|
|lastEditedDateTime|DateTimeOffset|Date and time when the message was last edited. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is `2014-01-01T00:00:00Z`. Inherited from [chatMessage](../resources/chatmessage.md).|
|lastModifiedDateTime|DateTimeOffset|Date and time when the message or any of its properties was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is `2014-01-01T00:00:00Z`. Inherited from [chatMessage](../resources/chatmessage.md).|
|locale|String|The locale of the message as set by the client, formatted as `en-us`. Inherited from [chatMessage](../resources/chatmessage.md).|
|mentions|[chatMessageMention](../resources/chatmessagemention.md) collection|List of entities mentioned in the message. Inherited from [chatMessage](../resources/chatmessage.md).|
|messageHistory|[chatMessageHistoryItem](../resources/chatmessagehistoryitem.md) collection|History of edits applied to the message. Inherited from [chatMessage](../resources/chatmessage.md).|
|messageType|chatMessageType|The type of message. The possible values are: `message`, `chatEvent`, `typing`, `unknownFutureValue`, `systemEventMessage`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `systemEventMessage`. Inherited from [chatMessage](../resources/chatmessage.md).|
|onBehalfOf|[chatMessageFromIdentitySet](../resources/chatmessagefromidentityset.md)|Information about the user on whose behalf the message was sent. Inherited from [chatMessage](../resources/chatmessage.md).|
|policyViolation|[chatMessagePolicyViolation](../resources/chatmessagepolicyviolation.md)|Information about policy violations applied to the message by data loss prevention (DLP) applications. Inherited from [chatMessage](../resources/chatmessage.md).|
|reactions|[chatMessageReaction](../resources/chatmessagereaction.md) collection|The reactions applied to the message (for example, like, heart, laugh). Inherited from [chatMessage](../resources/chatmessage.md).|
|recipient|[identity](../resources/identity.md)|The intended recipient of the targeted message.|
|replyToId|String|The ID of the parent message or root message of the thread. Inherited from [chatMessage](../resources/chatmessage.md).|
|subject|String|The subject of the message. Inherited from [chatMessage](../resources/chatmessage.md).|
|summary|String|Summary text of the message that can be used for notifications or summary views. Inherited from [chatMessage](../resources/chatmessage.md).|
|webUrl|String|The link to the message in Microsoft Teams. Inherited from [chatMessage](../resources/chatmessage.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|hostedContents|[chatMessageHostedContent](../resources/chatmessagehostedcontent.md) collection|Content hosted in the message, such as images or code snippets. Inherited from [chatMessage](../resources/chatmessage.md).|
|replies|[chatMessage](../resources/chatmessage.md) collection|Replies to the message. Currently not supported for targeted messages. Inherited from [chatMessage](../resources/chatmessage.md).|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.targetedChatMessage",
  "baseType": "microsoft.graph.chatMessage",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.targetedChatMessage",
  "attachments": [{"@odata.type": "microsoft.graph.chatMessageAttachment"}],
  "body": {"@odata.type": "microsoft.graph.itemBody"},
  "channelIdentity": {"@odata.type": "microsoft.graph.channelIdentity"},
  "chatId": "String",
  "createdDateTime": "String (timestamp)",
  "deletedDateTime": "String (timestamp)",
  "etag": "String",
  "eventDetail": {"@odata.type": "microsoft.graph.eventMessageDetail"},
  "from": {"@odata.type": "microsoft.graph.chatMessageFromIdentitySet"},
  "id": "String (identifier)",
  "importance": "String",
  "lastEditedDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "locale": "String",
  "mentions": [{"@odata.type": "microsoft.graph.chatMessageMention"}],
  "messageHistory": [{"@odata.type": "microsoft.graph.chatMessageHistoryItem"}],
  "messageType": "String",
  "onBehalfOf": {"@odata.type": "microsoft.graph.chatMessageFromIdentitySet"},
  "policyViolation": {"@odata.type": "microsoft.graph.chatMessagePolicyViolation"},
  "reactions": [{"@odata.type": "microsoft.graph.chatMessageReaction"}],
  "recipient": {"@odata.type": "microsoft.graph.identity"},
  "replyToId": "String",
  "subject": "String",
  "summary": "String",
  "webUrl": "String"
}
```
