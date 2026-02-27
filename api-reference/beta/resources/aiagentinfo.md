---
title: "aiAgentInfo resource type"
description: "Represents information about an AI agent that participated in the preparation of the message."
author: "PatilAishwarya95"
ms.date: 10/05/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# aiAgentInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about an AI agent that participated in the preparation of the message recorded in the [processConversationMetadata](../resources/processconversationmetadata.md) object.

Inherits from [aiInteractionEntity](../resources/aiinteractionentity.md).

## Properties

| Property    | Type   | Description                                                                                                       |
| :---------- | :----- | :---------------------------------------------------------------------------------------------------------------- |
| blueprintId | String | Identifier of the parent [agent blueprint](../resources/agentIdentityBlueprint.md) that defines the identity and configuration of the agent. |
| identifier  | String | The unique identifier of the AI agent. Inherited from [aiInteractionEntity](../resources/aiinteractionentity.md). |
| name        | String | The display name of the AI agent. Inherited from [aiInteractionEntity](../resources/aiinteractionentity.md).      |
| version     | String | The version of the AI agent used. Inherited from [aiInteractionEntity](../resources/aiinteractionentity.md).      |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.aiAgentInfo",
  "baseType": "microsoft.graph.aiInteractionEntity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.aiAgentInfo",
  "blueprintId": "String",
  "identifier": "String",
  "name": "String",
  "version": "String"
}
```
