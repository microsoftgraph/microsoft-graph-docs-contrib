---
title: "aiInteractionMentionedIdentitySet resource type"
description: "Represents an entity mentioned in a message."
ms.date: 11/18/2024
doc_type: resourcePageType
ms.localizationpriority: medium
author: "bkeerthivasa"
ms.subservice: "teams"
---

# aiInteractionMentionedIdentitySet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an entity mentioned in a message.

## Properties

| Property   | Type | Description |
|:---------------|:--------|:----------|
| conversation | TeamworkConversationIdentity | The conversation details. |
| tag | TeamworkTagIdentity | The tag details. |

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.aiInteractionMentionedIdentitySet"
}-->

```json
{
  "conversation": {"@odata.type": "microsoft.graph.TeamworkConversationIdentity"},
  "tag": {"@odata.type": "microsoft.graph.TeamworkTagIdentity"},
}
```
