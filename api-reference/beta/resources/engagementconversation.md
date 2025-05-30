---
title: "engagementConversation resource type"
description: "Represents a conversation in Viva Engage."
author: "aditijha4"
ms.date: 05/21/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: resourcePageType
---

# engagementConversation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Conversation in Viva Engage. 

A Viva Engage conversation is a threaded discussion within a Viva Engage scope, e.g. a community or storyline, enabling users to post messages, reply, react, and share content in a structured, persistent format for enterprise social collaboration.

This is an abstract type.

Inherits from [entity](../resources/entity.md).

<!--
## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/engagementconversation-list.md)|[engagementConversation](../resources/engagementconversation.md) collection|Get a list of the engagementConversation objects and their properties.|
|[Get](../api/engagementconversation-get.md)|[engagementConversation](../resources/engagementconversation.md)|Read the properties and relationships of an engagementConversation object.|
|[Update](../api/engagementconversation-update.md)|[engagementConversation](../resources/engagementconversation.md)|Update the properties of an engagementConversation object.|
|[Delete](../api/engagementconversation-delete.md)|None|Delete an engagementConversation object.|
|[List messages](../api/engagementconversation-list-messages.md)|[engagementConversationMessage](../resources/engagementconversationmessage.md) collection|**TODO: Add a useful description.**|
|[Create engagementConversationMessage](../api/engagementconversation-post-messages.md)|[engagementConversationMessage](../resources/engagementconversationmessage.md)|Create a new engagementConversationMessage object.|
|[List engagementConversationMessage](../api/engagementconversation-list-starter.md)|[engagementConversationMessage](../resources/engagementconversationmessage.md) collection|**TODO: Add a useful description.**|
|[Create engagementConversationMessage](../api/engagementconversation-post-starter.md)|[engagementConversationMessage](../resources/engagementconversationmessage.md)|Create a new engagementConversationMessage object.|
-->

## Properties

|Property|Type|Description|
|:---|:---|:---|
<!--|creationMode|engagementCreationMode|Specifies how a Viva Engage conversation was initiated. The possible values are: `none`, `migration`, `unknownFutureValue`.|-->
|id|String|The unique ID of a conversation in Viva Engage. Inherited from [entity](../resources/entity.md).|
|starterId|String|The unique ID of the first message in a Viva Engage conversation|


## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|messages|[engagementConversationMessage](../resources/engagementconversationmessage.md) collection|The messages in a Viva Engage conversation|
|starter|[engagementConversationMessage](../resources/engagementconversationmessage.md)|The first message in a Viva Engage conversation|


## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.engagementConversation",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

<!-- 
``` json
{
  "@odata.type": "#microsoft.graph.engagementConversation",
  "id": "String (identifier)",
  "creationMode": "String",
  "starterId": "String"
}
```
-->

``` json
{
  "@odata.type": "#microsoft.graph.engagementConversation",
  "id": "String (identifier)",
  "starterId": "String"
}
```

