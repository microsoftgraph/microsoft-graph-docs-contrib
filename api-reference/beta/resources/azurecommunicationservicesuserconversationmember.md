---
title: "azureCommunicationServicesUserConversationMember resource type"
description: "Represents an Azure Communication Services user in a chat."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# azureCommunicationServicesUserConversationMember resource type

Namespace: microsoft.graph

Represents an Azure Communication Services user in a chat. 

Azure Communication Services users can join Teams meetings and Teams chats as an external user.

Inherits from [conversationMember](../resources/conversationmember.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|azureCommunicationServicesId|String|Azure Communication Services ID of the user.|
|displayName|String|Display name of the user. Inherited from [conversationMember](../resources/conversationmember.md).|
|id|String|Membership ID that represents this resource. Inherited from [entity](../resources/entity.md).|
|roles|String collection|Special roles for this user. Inherited from [conversationMember](../resources/conversationmember.md).|
|visibleHistoryStartDateTime|DateTimeOffset|The timestamp denoting how far back a conversation's history is shared with the conversation member. Inherited from [conversationMember](../resources/conversationmember.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.azureCommunicationServicesUserConversationMember",
  "baseType": "microsoft.graph.conversationMember",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureCommunicationServicesUserConversationMember",
  "id": "String (identifier)",
  "roles": [
    "String"
  ],
  "displayName": "String",
  "visibleHistoryStartDateTime": "String (timestamp)",
  "azureCommunicationServicesId": "String"
}
```
