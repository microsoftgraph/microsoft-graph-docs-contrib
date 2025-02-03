---
title: "pinnedChatMessageInfo resource type"
description: "Represents an individual pinned message in a chat entity."
author: "sumanac"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# pinnedChatMessageInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an individual pinned message in a [chat](chat.md).


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List pinned messages](../api/chat-list-pinnedmessages.md)|[pinnedChatMessageInfo](../resources/pinnedchatmessageinfo.md) collection|Get a list of pinned messages in a chat.|
|[Pin message](../api/chat-post-pinnedmessages.md)|[pinnedChatMessageInfo](../resources/pinnedchatmessageinfo.md)|Pin a chat message in a chat.|
|[Unpin message](../api/chat-delete-pinnedmessages.md)|None|Unpin a message from a chat.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
| id| String| The ID of the [chatMessage](../resources/chatmessage.md). Read-only. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
| message | [chatMessage](../resources/chatmessage.md) | Represents details about the chat message that is pinned.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.pinnedChatMessageInfo",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.pinnedChatMessageInfo",
  "id": "String (identifier)"
}
```

