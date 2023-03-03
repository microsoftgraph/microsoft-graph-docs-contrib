---
title: "microsoftAccountUserConversationMember resource type"
description: "Represents a personal Microsoft account user in a chat."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# microsoftAccountUserConversationMember resource type

Namespace: microsoft.graph

Represents a personal Microsoft account user in a chat.


Inherits from [conversationMember](../resources/conversationmember.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name of the user. Inherited from [conversationMember](../resources/conversationmember.md).|
|id|String|Membership ID that represents this resource. Inherited from [entity](../resources/entity.md).|
|roles|String collection|Special roles for this user. Inherited from [conversationMember](../resources/conversationmember.md).|
|userId|String|Microsoft Account ID of the user.|
|visibleHistoryStartDateTime|DateTimeOffset|The timestamp denoting how far back a conversation's history is shared with the conversation member. Inherited from [conversationMember](../resources/conversationmember.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.microsoftAccountUserConversationMember",
  "baseType": "microsoft.graph.conversationMember",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftAccountUserConversationMember",
  "id": "String (identifier)",
  "roles": [
    "String"
  ],
  "displayName": "String",
  "visibleHistoryStartDateTime": "String (timestamp)",
  "userId": "String"
}
```

