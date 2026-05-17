---
title: "plannerTaskChatMention resource type"
description: "Represents a mention in a planner task chat message."
author: "pavlodatsiuk"
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 01/23/2026
---

# plannerTaskChatMention resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a mention in a [plannerTaskChatMessage](plannertaskchatmessage.md). Mentions allow users to notify specific users within task chat messages.

## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| mentioned | String | The ID of the mentioned user. |
| mentionType | plannerTaskChatMentionType | The type of mention. The possible values are: `user`, `unknownFutureValue`. |
| position | Int32 | The zero-based position of the mention in the message content. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerTaskChatMention"
}-->

```json
{
  "@odata.type": "#microsoft.graph.plannerTaskChatMention",
  "mentioned": "String",
  "mentionType": "String",
  "position": "Int32"
}
```

<!-- {
  "type": "#page.annotation",
  "description": "plannerTaskChatMention resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
