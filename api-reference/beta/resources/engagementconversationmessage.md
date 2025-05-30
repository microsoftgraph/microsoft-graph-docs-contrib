---
title: "engagementConversationMessage resource type"
description: "Represents an individual message posted in a Viva Engage conversation"
author: "PV-work-25"
ms.date: 05/21/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: resourcePageType
---

# engagementConversationMessage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an individual message posted in a Viva Engage conversation, which can be a starter message, a reply, or a reply to a reply.


Inherits from [entity](../resources/entity.md).


## Methods

No Methods supported at this time.

<!--|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/onlinemeetingengagementconversation-list-starter.md)|[engagementConversationMessage](../resources/engagementconversationmessage.md) collection|Get a list of the engagementConversationMessage objects and their properties.|
|[Create](../api/onlinemeetingengagementconversation-post-starter.md)|[engagementConversationMessage](../resources/engagementconversationmessage.md)|Create a new engagementConversationMessage object.|
|[Get](../api/engagementconversationmessage-get.md)|[engagementConversationMessage](../resources/engagementconversationmessage.md)|Read the properties and relationships of an engagementConversationMessage object.|
|[Update](../api/engagementconversationmessage-update.md)|[engagementConversationMessage](../resources/engagementconversationmessage.md)|Update the properties of an engagementConversationMessage object.|
|[Delete](../api/onlinemeetingengagementconversation-delete-starter.md)|None|Delete an engagementConversationMessage object.|
|[List reactions](../api/engagementconversationmessage-list-reactions.md)|[engagementConversationMessageReaction](../resources/engagementconversationmessagereaction.md) collection|**TODO: Add a useful description.**|
|[Create engagementConversationMessageReaction](../api/engagementconversationmessage-post-reactions.md)|[engagementConversationMessageReaction](../resources/engagementconversationmessagereaction.md)|Create a new engagementConversationMessageReaction object.|
|[List replies](../api/engagementconversationmessage-list-replies.md)|[engagementConversationMessage](../resources/engagementconversationmessage.md) collection|**TODO: Add a useful description.**|
|[Create engagementConversationMessage](../api/engagementconversationmessage-post-replies.md)|[engagementConversationMessage](../resources/engagementconversationmessage.md)|Create a new engagementConversationMessage object.|
|[List engagementConversationMessage](../api/engagementconversationmessage-list-replyto.md)|[engagementConversationMessage](../resources/engagementconversationmessage.md) collection|**TODO: Add a useful description.**|
|[Add engagementConversationMessage](../api/engagementconversationmessage-post-replyto.md)|[engagementConversationMessage](../resources/engagementconversationmessage.md)|Add replyTo by posting to the replyTo collection.|
|[Remove engagementConversationMessage](../api/engagementconversationmessage-delete-replyto.md)|None|Remove an [engagementConversationMessage](../resources/engagementconversationmessage.md) object.|
-->

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique ID of a Viva Engage conversation message. Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|body|[itemBody](../resources/intune-itembody.md)|The main content of the message|
|createdDateTime|DateTimeOffset|Timestamp when the message was created.|
|creationMode|[engagementCreationMode](../resources/engagementCreationMode.md)|Indicates how the message was created. The possible values are: `none`, `migration`, `unknownFutureValue`.|
|from|[engagementIdentitySet](../resources/engagementidentityset.md)|Identity of the sender of the message.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of the last modification to the message.|
|replyToId|String|ID of the parent message this one is a reply to, if applicable.|
|attachments|[engagementConversationMessageAttachment](../resources/engagementconversationmessageattachment.md) collection|Collection of attachments included in the message, such as files or images.|
|mentions|[engagementConversationMessageMention](../resources/engagementconversationmessagemention.md) collection|Collection of user identities mentioned in the message.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|conversation|[engagementConversation](../resources/engagementconversation.md)|The Viva Engage conversation that this message belongs to. This establishes the thread context for the message.|
|reactions|[engagementConversationMessageReaction](../resources/engagementconversationmessagereaction.md) collection|A collection of reactions (such as like, smile, etc.) that users have applied to this message.|
|replies|[engagementConversationMessage](../resources/engagementconversationmessage.md) collection|A collection of messages that are replies to this message, forming a threaded discussion.|
|replyTo|[engagementConversationMessage](../resources/engagementconversationmessage.md)|The parent message that this one is replying to, if it is part of a reply chain.|

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
  "id": "String (identifier)",
  "creationMode": "String",
  "body": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "replyToId": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "from": {
    "@odata.type": "microsoft.graph.engagementIdentitySet"
  },
  "mentions": [
    {
      "@odata.type": "microsoft.graph.engagementConversationMessageMention"
    }
  ],
  "attachments": [
    {
      "@odata.type": "microsoft.graph.engagementConversationMessageAttachment"
    }
  ]
}
```