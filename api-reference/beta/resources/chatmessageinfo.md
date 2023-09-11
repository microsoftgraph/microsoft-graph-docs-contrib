---
title: "chatMessageInfo resource type"
description: "Represents a preview of a chatMessage resource."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# chatMessageInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a preview of a [chatMessage](../resources/chatmessage.md) resource. This object can only be fetched as part of a list of [chats](../resources/chat.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|body|[itemBody](../resources/itembody.md)|Body of the [chatMessage](../resources/chatmessage.md). This will still contain markers for @mentions and attachments even though the object does not return @mentions and attachments.|
|createdDateTime|DateTimeOffset|Date time object representing the time at which message was created.|
|eventDetail|[eventMessageDetail](../resources/eventmessagedetail.md)|Read-only.  If present, represents details of an event that happened in a chat, a channel, or a team, for example, members were added, and so on. For event messages, the **messageType** property will be set to `systemEventMessage`.|
|from|[chatMessageFromIdentitySet](../resources/chatmessagefromidentityset.md)|Information about the sender of the message.|
|id|String|ID of the [chatMessage](../resources/chatmessage.md).|
|isDeleted|Boolean|If set to `true`, the original message has been deleted.|
|messageType|chatMessageType|The type of chat message. The possible values are: `message`, `unknownFutureValue`, `systemEventMessage`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.chatMessageInfo",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.chatMessageInfo",
  "id": "String (identifier)",
  "body": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "from": {
    "@odata.type": "microsoft.graph.chatMessageFromIdentitySet"
  },
  "createdDateTime": "String (timestamp)",
  "isDeleted": "Boolean",
  "messageType": "String",
  "eventDetail": {
    "@odata.type": "microsoft.graph.eventMessageDetail"
  }
}
```

## See also

- [chat](../resources/chat.md)
- [chatMessage](../resources/chatmessage.md)

