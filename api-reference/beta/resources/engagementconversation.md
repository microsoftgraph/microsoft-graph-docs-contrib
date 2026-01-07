---
title: "engagementConversation resource type"
description: "An abstract type that represents a conversation in Viva Engage."
author: "aditijha4"
ms.date: 05/21/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: resourcePageType
---

# engagementConversation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents a conversation in Viva Engage. 

A Viva Engage conversation is a threaded discussion within a Viva Engage scope, such as a community or a storyline, that enables users to post messages, reply, react, and share content in a structured, persistent format for enterprise social collaboration.

Base type of [onlineMeetingEngagementConversation](../resources/onlinemeetingengagementconversation.md).

Inherits from [entity](../resources/entity.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|creationMode|[engagementCreationMode](../resources/engagementconversationmessage.md#engagementcreationmode-values)|Don't use. This property is managed at [engagementConversationMessage](../resources/engagementconversationmessage.md) level.|
|id|String|The unique ID of a conversation in Viva Engage. Inherited from [entity](../resources/entity.md).|
|starterId|String|The unique ID of the first message in a Viva Engage conversation.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|messages|[engagementConversationMessage](../resources/engagementconversationmessage.md) collection|The messages in a Viva Engage conversation.|
|starter|[engagementConversationMessage](../resources/engagementconversationmessage.md)|The first message in a Viva Engage conversation.|

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
``` json
{
  "@odata.type": "#microsoft.graph.engagementConversation",
  "creationMode": "String",
  "id": "String (identifier)",
  "starterId": "String"
}
```
