---
title: "chatMessageHistoryItem resource type"
description: "Represents the edition history of a message in a chat or a channel."
author: "agnesliu"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# chatMessageHistoryItem resource type

Namespace: microsoft.graph

Represents activity history information for a message in a chat or a channel.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actions|chatMessageActions |The modification actions of a message item.The possible values are: `reactionAdded`, `reactionRemoved`, `actionUndefined`, `unknownFutureValue`. |
|modifiedDateTime|DateTimeOffset |The date and time when the message was modified. |
|reaction|[chatMessageReaction](../resources/chatmessagereaction.md) |The reaction in the modified message. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.chatMessageHistoryItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.chatMessageHistoryItem",
  "modifiedDateTime": "String (timestamp)",
  "actions": "String",
  "reaction": {
    "@odata.type": "microsoft.graph.chatMessageReaction"
  }
}
```

