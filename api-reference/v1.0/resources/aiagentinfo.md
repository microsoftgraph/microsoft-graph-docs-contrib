---
title: "aiAgentInfo resource type"
description: "Represents information about an AI agent that participated in the preparation of the message."
author: "PatilAishwarya95"
ms.date: 01/16/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# aiAgentInfo resource type

Namespace: microsoft.graph

Represents information about an AI agent that participated in the preparation of the message recorded in the [processConversationMetadata](../resources/processconversationmetadata.md) object.

Inherits from [aiInteractionEntity](../resources/aiinteractionentity.md).

## Properties

| Property    | Type   | Description                                                                                                       |
| :---------- | :----- | :---------------------------------------------------------------------------------------------------------------- |
| blueprintId | String | The unique identifier of the [parent agent blueprint](/graph/api/resources/agentidentityblueprint) that defines the identity and configuration of this agent instance.|
| identifier  | String | The unique identifier of this AI agent. Inherited from [aiInteractionEntity](../resources/aiinteractionentity.md). |
| name        | String | The display name of the AI agent. Inherited from [aiInteractionEntity](../resources/aiinteractionentity.md).      |
| version     | String | The version number  of Itthe AI agent used. Inherited from [aiInteractionEntity](../resources/aiinteractionentity.md).      |

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
