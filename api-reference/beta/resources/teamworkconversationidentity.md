---
title: "teamworkConversationIdentity resource type"
description: "Represents a conversation in Microsoft Teams."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamworkConversationIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a **conversation** (chat, team, or channel) in Microsoft Teams.

Inherits from [identity](../resources/identity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|conversationIdentityType|teamworkConversationIdentityType|Type of conversation. Possible values are: `team`, `channel`, and `chat`.|
|displayName|String|Inherited from [identity](../resources/identity.md). Display name of the conversation. Optional.|
|id|String|Inherited from [identity](../resources/identity.md). ID of the conversation.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkConversationIdentity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkConversationIdentity",
  "id": "String (identifier)",
  "displayName": "String",
  "conversationIdentityType": "String"
}
```

