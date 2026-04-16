---
title: "plannerTaskChatReaction resource type"
description: "Represents a reaction to a planner task chat message."
author: "pavlodatsiuk"
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 01/23/2026
---

# plannerTaskChatReaction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a reaction to a [plannerTaskChatMessage](plannertaskchatmessage.md). Users can react to task chat messages to express feedback without adding a new message.

## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|reactionType|String|The type of reaction, such as `like`, `heart`, or emoji characters.|
|users|[plannerTaskChatReactionEvent](plannertaskchatreactionevent.md) collection|The list of users who added this reaction and when they reacted.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerTaskChatReaction"
}-->

```json
{
  "@odata.type": "#microsoft.graph.plannerTaskChatReaction",
  "reactionType": "String",
  "users": [{"@odata.type": "microsoft.graph.plannerTaskChatReactionEvent"}]
}
```

<!-- {
  "type": "#page.annotation",
  "description": "plannerTaskChatReaction resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
