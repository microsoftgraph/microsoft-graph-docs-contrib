---
title: "aiInteraction resource type"
description: "Represents an individual AI Interaction."
doc_type: resourcePageType
ms.localizationpriority: medium
author: "bkeerthivasa"
ms.subservice: "teams"
---

# aiInteraction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an aiInteraction between Copilot and User.

## Properties

| Property   | Type | Description |
|:---------------|:--------|:----------|
| Id | String | Identifier of the message. |
| sessionId | String | This is the thread id/conversation id. This maps to every copilot session user has. |
| requestId | String | This is supposed to group user prompt and ai response. |
| Contexts | Collection of [aiInteractionContext](../resources/aiInteractionContext) | This captures all contexts associated with interaction. |
| appClass | String | The data source for Copilot data. Examples: IPM.SkypeTeams.Message.Copilot.Excel, IPM.SkypeTeams.Message.Copilot.Loop |
| interactionType | [aiInteractionType](../resources/aiInteractionType) | Can be UserPrompt, AiResponse or UnknownFutureValue. UserPrompt - User message/prompt. AiResponse - Copilot Response. UnknownFutureValue – None of them. |
| conversationType | String | Type of thread. Examples: appchat or bizchat. |
| From | [identitySet](../resources/identityset.md)  | User/Application/Device associated with this interaction |
| etag | String | Epoch timestamp representation of LastModifiedTime |
| createdDateTime | DateTime | The time at which the message was created. |
| body | [itemBody](../resources/itembody.md) | The body of the message. It specifies the body as well as declares the kind of body it is. |
| attachments | Collection of [aiInteractionAttachment](../resources/aiInteractionAttachment) | Describes a message attachment like cards, images etc. |
| links | Collection of [aiInteractionLink](../resources/aiInteractionLink) | The links that are part of the interaction. |
| mentions | Collection of [aiInteractionMention](../resources/aiInteractionMention) | This lists the entities (users, bots etc.) that were mentioned in the interaction. |
| locale | String | Sender’s locale |
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
