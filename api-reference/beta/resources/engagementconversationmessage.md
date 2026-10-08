---
title: "engagementConversationMessage resource type"
description: "Represents an individual message posted in a Viva Engage conversation, which can be a starter post, a reply, or a reply to a reply."
author: "PV-work-25"
ms.date: 05/21/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: resourcePageType
---

# engagementConversationMessage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an individual message posted in a Viva Engage conversation, which can be a starter post, a reply, or a reply to a reply.  

Base type of [engagementConversationDiscussionMessage](../resources/engagementconversationdiscussionmessage.md), [engagementConversationQuestionMessage](../resources/engagementconversationquestionmessage.md), and [engagementConversationSystemMessage](../resources/engagementconversationsystemmessage.md).

Inherits from [entity](../resources/entity.md).

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|body|[itemBody](../resources/itembody.md)|The main content of the message.|
|createdDateTime|DateTimeOffset|The date and time when the message was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
|creationMode|[engagementCreationMode](../resources/engagementconversationmessage.md#engagementcreationmode-values)|Indicates how the message was created. The possible values are: `none`, `migration`, `unknownFutureValue`.|
|from|[engagementIdentitySet](../resources/engagementidentityset.md)|Identity of the sender of the message.|
|id|String|Unique ID of a Viva Engage conversation message. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when message was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|replyToId|String|The ID of the parent message to which this message is a reply, if applicable.|

### engagementCreationMode values

| Member             | Description                                                  |
|:-------------------|:-------------------------------------------------------------|
| none               | Unspecified creation mechanism. Default.                     |
| migration          | Indicates that the creation mechanism was through migration. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.             |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|conversation|[engagementConversation](../resources/engagementconversation.md)|The Viva Engage conversation to which this message belongs. This relationship establishes the thread context for the message.|
|reactions|[engagementConversationMessageReaction](../resources/engagementconversationmessagereaction.md) collection|A collection of reactions (such as like and smile) that users have applied to this message.|
|replies|[engagementConversationMessage](../resources/engagementconversationmessage.md) collection|A collection of messages that are replies to this message and form a threaded discussion.|
|replyTo|[engagementConversationMessage](../resources/engagementconversationmessage.md)|The parent message to which this message is a reply, if it is part of a reply chain.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.engagementConversationMessage",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.engagementConversationMessage",
  "body": {"@odata.type": "microsoft.graph.itemBody"},
  "createdDateTime": "String (timestamp)",
  "creationMode": "String",
  "from": {"@odata.type": "microsoft.graph.engagementIdentitySet"},
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "replyToId": "String"
}
```
