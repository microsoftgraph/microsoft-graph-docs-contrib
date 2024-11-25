---
title: "aiInteraction resource type"
description: "Represents an interaction between a user and Copilot."
ms.date: 11/18/2024
doc_type: resourcePageType
ms.localizationpriority: medium
author: "bkeerthivasa"
ms.subservice: "teams"
toc.title: "AI interaction"
---

# aiInteraction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an interaction between a user and Copilot.

## Methods

None.

## Properties 

| Property   | Type | Description |
|:---------------|:--------|:----------|
| appClass | String | The data source for Copilot data. For example, `IPM.SkypeTeams.Message.Copilot.Excel` or `IPM.SkypeTeams.Message.Copilot.Loop`. |
| attachments | [aiInteractionAttachment](../resources/aiinteractionattachment.md) collection | The collection of documents attached to the interaction, such as cards and images. |
| body | [itemBody](../resources/itembody.md) | The body of the message, including the text of the body and its body type. |
| contexts | [aiInteractionContext](../resources/aiinteractioncontext.md) collection | The identifer that maps to all contexts associated with an interaction. |
| conversationType | String | The type of the conversation. For example, `appchat` or `bizchat`. |
| createdDateTime | DateTime | The time when the interaction was created. |
| etag | String | The timestamp of when the interaction was last modified. |
| from | [identitySet](../resources/identityset.md)  | The user, application, or device that is associated with this interaction. |
| id | String | The identifier for the message. |
| interactionType | [aiInteractionType](#aiinteractiontype-values) | Indicates whether the interaction is a prompt or a Copilot response. Possible values are `userPrompt`, `aiResponse`, `unknownFutureValue`. |
| links | [aiInteractionLink](../resources/aiinteractionlink.md) collection | The collection of links that appear in the interaction. |
| locale | String | The locale of the sender. |
| mentions | [aiInteractionMention](../resources/aiinteractionmention.md) collection | The collection of the entities that were mentioned in the interaction, including users, bots, and so on. |
| requestId | String | The identifier that groups a user prompt with its Copilot response. |
| sessionId | String | The thread ID or conversation identifier that maps to all Copilot sessions for the user. |

### aiInteractionType values

| Member | Description |
| ---------- | ---------- |
| userPrompt | A user prompt in the interaction. |
| aiResponse | A Copilot response to the prompt. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

## Relationships

None.

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
  "appClass": "String",
  "attachments": [{"@odata.type": "microsoft.graph.aiInteractionAttachment"}],
  "body": {"@odata.type": "microsoft.graph.itemBody"},
  "contexts": [{"@odata.type": "microsoft.graph.aiInteractionContext"}],
  "conversationType": "String",
  "createdDateTime": "String (timestamp)",
  "etag": "String",
  "from": {"@odata.type": "microsoft.graph.identitySet"},
  "id": "String (identifier)",
  "interactionType": "String",
  "links": [{"@odata.type": "microsoft.graph.aiInteractionLink"}],
  "locale": "String",
  "mentions": [{"@odata.type": "microsoft.graph.aiInteractionMention"}],
  "requestId": "String",
  "sessionId": "String"
}
```
