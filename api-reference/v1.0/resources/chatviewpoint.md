---
title: "chatViewpoint resource type"
description: "Represents user-specific properties of a chat."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# chatViewpoint resource type

Namespace: microsoft.graph

Represents user-specific properties of a [chat](../resources/chat.md). These properties might change based on who the caller of the API is.

> **Note:** Currently, only the [List chats](../api/chat-list.md) operation supports **chatViewpoint**.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isHidden|Boolean|Indicates whether the chat is hidden for the current user.|
|lastMessageReadDateTime|DateTimeOffset|Represents the dateTime up until which the current user has read [chatMessages](../resources/chatmessage.md) in a specific chat.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.chatViewpoint"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.chatViewpoint",
  "isHidden": "Boolean",
  "lastMessageReadDateTime": "String (timestamp)"
}
```

