---
title: "chatMessageProperties resource type"
description: "Formatting and metadata properties of a plannerChatMessage, including @mentions and reactions."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# chatMessageProperties resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **properties** property of the [plannerChatMessage](plannerchatmessage.md) resource uses this type.

Formatting and metadata properties of a [plannerChatMessage](plannerchatmessage.md), including @mentions and reactions.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|mentions|[chatMention](../resources/chatmention.md) collection|Collection of @mentions in the message.|
|reactions|[chatReaction](../resources/chatreaction.md) collection|Collection of reactions applied to the message.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.chatMessageProperties"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.chatMessageProperties",
  "mentions": [
    {
      "@odata.type": "microsoft.graph.chatMention"
    }
  ],
  "reactions": [
    {
      "@odata.type": "microsoft.graph.chatReaction"
    }
  ]
}
```

