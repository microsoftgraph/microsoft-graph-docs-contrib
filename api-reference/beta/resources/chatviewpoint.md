---
title: "chatViewpoint resource type"
description: "Represents user specific properties of a chat"
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# chatViewpoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents user specific properties of a [chat](../resources/chat.md). These properties may change based on who the caller of the API is.

> Note: chatViewpoint is only populated in [list chats API](../api/chat-list.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|lastMessageReadDateTime|DateTimeOffset|Represents the datetime up until which calling user has read [chatMessages](../resources/chatmessage.md) in a specific chat.|

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
  "lastMessageReadDateTime": "String (timestamp)"
}
```

