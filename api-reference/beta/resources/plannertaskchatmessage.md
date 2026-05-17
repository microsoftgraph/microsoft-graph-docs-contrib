---
title: "plannerTaskChatMessage resource type"
description: "Represents a chat message associated with a planner task."
author: "pavlodatsiuk"
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 01/23/2026
---

# plannerTaskChatMessage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a chat message associated with a [plannerTask](plannertask.md). Task chat messages allow users to communicate and collaborate directly within the context of a task.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
| [List messages](../api/plannertask-list-messages.md) | [plannerTaskChatMessage](plannertaskchatmessage.md) collection | Get the chat messages associated with a Planner task. |
| [Create message](../api/plannertask-post-messages.md) | [plannerTaskChatMessage](plannertaskchatmessage.md) | Create a new chat message on a Planner task. |
| [Update message](../api/plannertaskchatmessage-update.md) | [plannerTaskChatMessage](plannertaskchatmessage.md) | Update the properties of a chat message. |
| [Delete message](../api/plannertaskchatmessage-delete.md) | None | Delete a chat message from a Planner task. |
| [Set reaction](../api/plannertaskchatmessage-setreaction.md) | None | Set a reaction to a chat message. |
| [Unset reaction](../api/plannertaskchatmessage-unsetreaction.md) | None | Remove a reaction from a chat message. |

## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| content | String | The content of the chat message. Supports plain text and sanitized HTML. |
| createdBy | [identitySet](identityset.md) | The identity of the user who created the message. |
| createdDateTime | DateTimeOffset | The date and time when the message was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
| deletedTime | DateTimeOffset | The date and time when the message was deleted. `null` if the message hasn't been deleted. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. |
| editedTime | DateTimeOffset | The date and time when the message was last edited. `null` if the message hasn't been edited. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. |
| id | String | Read-only. The unique identifier of the message. |
| mentions | [plannerTaskChatMention](plannertaskchatmention.md) collection | The list of mentions in the message. |
| messageType | plannerTaskChatMessageType | The type of message. The possible values are: `richTextHtml`, `unknownFutureValue`. |
| parentEntityId | String | The ID of the parent plannerTask that this message belongs to. |
| reactions | [plannerTaskChatReaction](plannertaskchatreaction.md) collection | The reactions on the message. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.plannerTaskChatMessage",
  "baseType": "microsoft.graph.entity"
}-->

```json
{
  "@odata.type": "#microsoft.graph.plannerTaskChatMessage",
  "content": "String",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "deletedTime": "String (timestamp)",
  "editedTime": "String (timestamp)",
  "id": "String (identifier)",
  "mentions": [{"@odata.type": "microsoft.graph.plannerTaskChatMention"}],
  "messageType": "String",
  "parentEntityId": "String",
  "reactions": [{"@odata.type": "microsoft.graph.plannerTaskChatReaction"}]
}
```

<!-- {
  "type": "#page.annotation",
  "description": "plannerTaskChatMessage resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
