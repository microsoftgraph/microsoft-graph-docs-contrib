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

## Methods

None.

## Properties

| Property   | Type | Description |
|:---------------|:--------|:----------|
| conversation | [teamworkConversationIdentity](../resources/teamworkconversationidentity.md) | The conversation details. |
| tag | [teamworkTagIdentity](../resources/teamworktagidentity.md) | The tag details. || application | [identity](identity.md) | Optional. The application associated with this action.  |
| applicationInstance | [identity](identity.md) | Optional. The application instance associated with this action.  |
| conversation| [identity](identity.md) | Optional. The team or channel associated with this action.       |
| conversationIdentityType| [identity](identity.md) | Optional. Indicates whether the **conversation** property identifies a team or channel.|
| device      | [identity](identity.md) | Optional. The device associated with this action.       |
| encrypted       | [identity](identity.md) | Optional. The encrypted identity associated with this action. |
| onPremises       | [identity](identity.md) | Optional. The on-premises identity associated with this action. |
| guest       | [identity](identity.md) | Optional. The guest identity associated with this action. |
| phone       | [identity](identity.md) | Optional. The phone number associated with this action. |
| user        | [identity](identity.md) | Optional. The user associated with this action.         |

## Relationships

None.

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
