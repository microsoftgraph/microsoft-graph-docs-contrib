---
title: "engagementConversationMessageReaction resource type"
description: "Represents a reaction (such as like, love, or celebrate) to a message in a Viva Engage conversation."
author: "PV-work-25"
ms.date: 05/21/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: resourcePageType
---

# engagementConversationMessageReaction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a reaction (such as like, love, or celebrate) to a message in a Viva Engage conversation.


Inherits from [entity](../resources/entity.md).


## Methods

No Methods supported at this time.
<!--|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/engagementconversationarticlemessage-list-reactions.md)|[engagementConversationMessageReaction](../resources/engagementconversationmessagereaction.md) collection|Get a list of the engagementConversationMessageReaction objects and their properties.|
|[Create](../api/engagementconversationarticlemessage-post-reactions.md)|[engagementConversationMessageReaction](../resources/engagementconversationmessagereaction.md)|Create a new engagementConversationMessageReaction object.|
|[Get](../api/engagementconversationmessagereaction-get.md)|[engagementConversationMessageReaction](../resources/engagementconversationmessagereaction.md)|Read the properties and relationships of an engagementConversationMessageReaction object.|
|[Update](../api/engagementconversationmessagereaction-update.md)|[engagementConversationMessageReaction](../resources/engagementconversationmessagereaction.md)|Update the properties of an engagementConversationMessageReaction object.|
|[Delete](../api/engagementconversationarticlemessage-delete-reactions.md)|None|Delete an engagementConversationMessageReaction object.|-->

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Timestamp of when the reaction was added.|
|id|String|Unique identifier of a reaction posted to a Viva Engage conversation message. Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|reactionBy|[engagementIdentitySet](../resources/engagementidentityset.md)|Identity of the user who added the reaction.|
|reactionType|engagementConversationMessageReactionType|Type of reaction.The possible values are: `like`, `love`, `celebrate`, `thank`, `laugh`, `sad`, `happy`, `excited`, `smile`, `silly`, `intenseLaugh`, `starStruck`, `goofy`, `thinking`, `surprised`, `mindBlown`, `scared`, `crying`, `shocked`, `angry`, `agree`, `praise`, `takingNotes`, `heartBroken`, `support`, `confirmed`, `watching`, `brain`, `medal`, `bullseye`, `unknownFutureValue`.|
|creationMode|[engagementCreationMode](../resources/engagementCreationMode.md)|Indicates how the reaction was created. The possible values are: `none`, `migration`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.engagementConversationMessageReaction",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.engagementConversationMessageReaction",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "reactionType": "String",
  "reactionBy": {
    "@odata.type": "microsoft.graph.engagementIdentitySet"
  }
}
```

