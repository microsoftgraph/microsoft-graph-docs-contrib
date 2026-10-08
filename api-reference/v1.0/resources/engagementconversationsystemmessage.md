---
title: "engagementConversationSystemMessage resource type"
description: "Represents an individual system message in a Viva Engage conversation."
author: "aditijha"
ms.date: 06/16/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: resourcePageType
---

# engagementConversationSystemMessage resource type

Namespace: microsoft.graph

Represents an individual system message in a Viva Engage conversation.

Inherits from [engagementConversationMessage](../resources/engagementconversationmessage.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|body|[itemBody](../resources/itembody.md)|The main content of the message. Inherited from [engagementConversationMessage](../resources/engagementconversationmessage.md).|
|createdDateTime|DateTimeOffset|The date and time when the message was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [engagementConversationMessage](../resources/engagementconversationmessage.md).|
|creationMode|[engagementCreationMode](../resources/engagementconversationmessage.md#engagementcreationmode-values)|Indicates how the message was created. The possible values are: `none`, `migration`, `unknownFutureValue`. Inherited from [engagementConversationMessage](../resources/engagementconversationmessage.md).|
|from|[engagementIdentitySet](../resources/engagementidentityset.md)|Identity of the sender of the message. Inherited from [engagementConversationMessage](../resources/engagementconversationmessage.md).|
|id|String|Unique ID of a Viva Engage conversation message. Inherited from [engagementConversationMessage](../resources/engagementconversationmessage.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when message was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [engagementConversationMessage](../resources/engagementconversationmessage.md).|
|replyToId|String|The ID of the parent message to which this message is a reply, if applicable. Inherited from [engagementConversationMessage](../resources/engagementconversationmessage.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|conversation|[engagementConversation](../resources/engagementconversation.md)|The Viva Engage conversation to which this message belongs. This relationship establishes the thread context for the message. Inherited from [engagementConversationMessage](../resources/engagementconversationmessage.md).|
|reactions|[engagementConversationMessageReaction](../resources/engagementconversationmessagereaction.md) collection|A collection of reactions (such as like and smile) that users have applied to this message. Inherited from [engagementConversationMessage](../resources/engagementconversationmessage.md).|
|replies|[engagementConversationMessage](../resources/engagementconversationmessage.md) collection|A collection of messages that are replies to this message and form a threaded discussion. Inherited from [engagementConversationMessage](../resources/engagementconversationmessage.md).|
|replyTo|[engagementConversationMessage](../resources/engagementconversationmessage.md)|The parent message to which this message is a reply, if it is part of a reply chain. Inherited from [engagementConversationMessage](../resources/engagementconversationmessage.md).|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.engagementConversationSystemMessage",
  "baseType": "microsoft.graph.engagementConversationMessage",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.engagementConversationDiscussionMessage",
  "body": {"@odata.type": "microsoft.graph.itemBody"},
  "createdDateTime": "String (timestamp)",
  "creationMode": "String",
  "from": {"@odata.type": "microsoft.graph.engagementIdentitySet"},
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "replyToId": "String"
}
```

