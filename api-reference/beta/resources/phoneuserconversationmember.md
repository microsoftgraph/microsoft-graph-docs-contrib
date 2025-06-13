---
title: "phoneUserConversationMember resource type"
description: "Represents a phone user in a chat"
author: "RamjotSingh"
ms.date: 06/10/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# phoneUserConversationMember resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a phone user in a chat.


Inherits from [conversationMember](../resources/conversationmember.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name, always set to null. Inherited from [conversationMember](../resources/conversationmember.md).|
|id|String|Membership ID that represents this resource. Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|phoneNumber|String|Phone number of the conversation member.|
|roles|String collection|Special roles for this conversation member. Inherited from [conversationMember](../resources/conversationmember.md).|
|visibleHistoryStartDateTime|DateTimeOffset|The timestamp denoting how far back a conversation's history is shared with the conversation member. Inherited from [conversationMember](../resources/conversationmember.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.phoneUserConversationMember",
  "baseType": "microsoft.graph.conversationMember",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.phoneUserConversationMember",
  "id": "String (identifier)",
  "roles": [
    "String"
  ],
  "displayName": "String",
  "visibleHistoryStartDateTime": "String (timestamp)",
  "phoneNumber": "String"
}
```

