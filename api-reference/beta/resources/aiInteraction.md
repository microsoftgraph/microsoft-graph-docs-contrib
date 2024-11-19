---
title: "aiInteraction resource type"
description: "Represents an individual AI Interaction."
ms.date: 11/18/2024
doc_type: resourcePageType
ms.localizationpriority: medium
author: "bkeerthivasa"
ms.subservice: "teams"
---

# aiInteraction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an interaction between a user and Copilot.

## Properties

| Property   | Type | Description |
|:---------------|:--------|:----------|
| ID | String | Identifier of the message. |
| sessionId | String | The thread ID/conversation identifier that maps to all copilot sessions for the user. |
| requestId | String | The identifier that groups a user prompt with its Copilot response. |
| Contexts | Collection of [aiInteractionContext](../resources/aiinteractioncontext.md) | The identifer that maps to all contexts associated with an interaction. |
| appClass | String | The data source for Copilot data. For example, `IPM.SkypeTeams.Message.Copilot.Excel` or `IPM.SkypeTeams.Message.Copilot.Loop` |
| interactionType | [aiInteractionType](#aiinteractiontype-values) | Indicates whether the interaction is a prompt or a Copilot response. Possible values are `UserPrompt`, `AiResponse`, or `UnknownFutureValue`. |
| conversationType | String | The type of the conversation. Examples: `appchat` or `bizchat`. |
| From | [identitySet](../resources/identityset.md)  | The user, application, or device that is associated with this interaction. |
| etag | String | The timestamp of when the interaction was last modified.. |
| createdDateTime | DateTime | The time that the interaction was created. |
| body | [itemBody](../resources/itembody.md) | The body of the message, including the text of the body and its body type. |
| attachments | Collection of [aiInteractionAttachment](../resources/aiinteractionattachment.md) | The collection of documents attached to the interaction, such as cards, images, and so on. |
| links | Collection of [aiInteractionLink](../resources/aiinteractionlink.md) | The collection of links that appear in the interaction. |
| mentions | Collection of [aiInteractionMention](../resources/aiinteractionmention.md) | The collection of the entities that were mentioned in the interaction, including users, bots, and so on. |
| locale | String | The locale of the sender. |

### aiInteractionType values

| Member |
| ------------------ |
| userPrompt |
| aiResponse |
| unknownFutureValue |

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.aiInteraction"
}-->

```json
{
  "Id": "String (identifier)",
  "sessionId": "String",
  "requestId": "String",
  "Contexts": {"@odata.type": "microsoft.graph.aiInteractionContext"},
  "appClass": "String",
  "interactionType": {"@odata.type": "microsoft.graph.aiInteractionType"},
  "conversationType": "String",
  "From": {"@odata.type": "microsoft.graph.identitySet"},
  "etag": "String",
  "createdDateTime": "String (timestamp)",
  "body": {"@odata.type": "microsoft.graph.itemBody"},
  "attachments": {"@odata.type": "microsoft.graph.aiInteractionAttachment"},
  "links": {"@odata.type": "microsoft.graph.aiInteractionLink"},
  "mentions": {"@odata.type": "microsoft.graph.aiInteractionMention"},
  "locale": "String"
}
```
