---
title: "aiInteractionMentionedIdentitySet resource type"
description: "Represents an entity mentioned in a message."
ms.date: 11/18/2024
doc_type: resourcePageType
ms.localizationpriority: medium
author: "bkeerthivasa"
ms.subservice: "teams"
toc.title: "AI interaction mentioned identity set"
---

# aiInteractionMentionedIdentitySet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an entity mentioned in a message.

Inherits from [identitySet](../resources/identityset.md).

## Properties

| Property   | Type | Description |
|:---------------|:--------|:----------|
| conversation | [teamworkConversationIdentity](../resources/teamworkconversationidentity.md) | The conversation details. |
| tag | [teamworkTagIdentity](../resources/teamworktagidentity.md) | The tag details. |

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.identitySet",
  "@odata.type": "microsoft.graph.aiInteractionMentionedIdentitySet"
}-->

```json
{
  "conversation": {"@odata.type": "microsoft.graph.teamworkConversationIdentity"},
  "tag": {"@odata.type": "microsoft.graph.teamworkTagIdentity"}
}
```
