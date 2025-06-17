---
title: "engagementConversationDiscussionMessage resource type"
description: "Represents a starter message for a discussion post in a Viva Engage conversation."
author: "aditijha"
ms.date: 06/16/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: resourcePageType
---

# engagementConversationDiscussionMessage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a starter message for a discussion post in a Viva Engage conversation.


Inherits from [engagementConversationMessage](../resources/engagementconversationmessage.md).


## Methods

None.

<!--|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/engagementconversationdiscussionmessage-list.md)|[engagementConversationDiscussionMessage](../resources/engagementconversationdiscussionmessage.md) collection|Get a list of the engagementConversationDiscussionMessage objects and their properties.|
|[Get](../api/engagementconversationdiscussionmessage-get.md)|[engagementConversationDiscussionMessage](../resources/engagementconversationdiscussionmessage.md)|Read the properties and relationships of an engagementConversationDiscussionMessage object.|
|[Update](../api/engagementconversationdiscussionmessage-update.md)|[engagementConversationDiscussionMessage](../resources/engagementconversationdiscussionmessage.md)|Update the properties of an engagementConversationDiscussionMessage object.|
|[Delete](../api/engagementconversationdiscussionmessage-delete.md)|None|Delete an engagementConversationDiscussionMessage object.|
|[List engagementConversation](../api/engagementconversationdiscussionmessage-list-conversation.md)|[engagementConversation](../resources/engagementconversation.md) collection|**TODO: Add a useful description.**|
|[Add engagementConversation](../api/engagementconversationdiscussionmessage-post-conversation.md)|[engagementConversation](../resources/engagementconversation.md)|Add conversation by posting to the conversation collection.|
|[Remove engagementConversation](../api/engagementconversationdiscussionmessage-delete-conversation.md)|None|Remove an [engagementConversation](../resources/engagementconversation.md) object.|
|[List reactions](../api/engagementconversationdiscussionmessage-list-reactions.md)|[engagementConversationMessageReaction](../resources/engagementconversationmessagereaction.md) collection|**TODO: Add a useful description.**|
|[Create engagementConversationMessageReaction](../api/engagementconversationdiscussionmessage-post-reactions.md)|[engagementConversationMessageReaction](../resources/engagementconversationmessagereaction.md)|Create a new engagementConversationMessageReaction object.|
|[List replies](../api/engagementconversationdiscussionmessage-list-replies.md)|[engagementConversationMessage](../resources/engagementconversationmessage.md) collection|**TODO: Add a useful description.**|
|[Create engagementConversationMessage](../api/engagementconversationdiscussionmessage-post-replies.md)|[engagementConversationMessage](../resources/engagementconversationmessage.md)|Create a new engagementConversationMessage object.|
|[List engagementConversationMessage](../api/engagementconversationdiscussionmessage-list-replyto.md)|[engagementConversationMessage](../resources/engagementconversationmessage.md) collection|**TODO: Add a useful description.**|
|[Add engagementConversationMessage](../api/engagementconversationdiscussionmessage-post-replyto.md)|[engagementConversationMessage](../resources/engagementconversationmessage.md)|Add replyTo by posting to the replyTo collection.|
|[Remove engagementConversationMessage](../api/engagementconversationdiscussionmessage-delete-replyto.md)|None|Remove an [engagementConversationMessage](../resources/engagementconversationmessage.md) object.|
-->

## Properties
|Property|Type|Description|
|:---|:---|:---|
|body|[itemBody](../resources/itembody.md)|The main content of the discussion post message on Viva Engage.|
|createdDateTime|DateTimeOffset|The date and time when the message was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
|creationMode|[engagementCreationMode](../resources/engagementconversationmessage.md#engagementcreationmode-values)|Indicates how the message was created. The possible values are: `none`, `migration`, `unknownFutureValue`.|
|from|[engagementIdentitySet](../resources/engagementidentityset.md)|Identity of the sender of the message.|
|id|String|Unique ID of a Viva Engage conversation message. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when message was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|replyToId|String|The ID of the parent message to which this message is a reply, if applicable.|

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
  "@odata.type": "microsoft.graph.engagementConversationDiscussionMessage",
  "baseType": "microsoft.graph.engagementConversationMessage",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.engagementConversationDiscussionMessage",
  "id": "String (identifier)",
  "body": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "replyToId": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "from": {
    "@odata.type": "microsoft.graph.engagementIdentitySet"
  }
}
```

