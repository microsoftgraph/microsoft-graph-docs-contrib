---
title: "skypeUserConversationMember resource type"
description: "Represents a Skype user in a chat"
author: "RamjotSingh"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# skypeUserConversationMember resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Skype (consumer) user in a chat. 

For information about Teams and Skype for Business interoperability, see [Understand Microsoft Teams and Skype for Business coexistence and interoperability](/microsoftteams/teams-and-skypeforbusiness-coexistence-and-interoperability).

Inherits from [conversationMember](../resources/conversationmember.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name of the user. Inherited from [conversationMember](../resources/conversationmember.md).|
|id|String|Membership ID that represents this resource. Inherited from [entity](../resources/entity.md).|
|roles|String collection|Special roles for this user. Inherited from [conversationMember](../resources/conversationmember.md).|
|skypeId|String|Skype ID of the user.|
|visibleHistoryStartDateTime|DateTimeOffset|The timestamp denoting how far back a conversation's history is shared with the conversation member. Inherited from [conversationMember](../resources/conversationmember.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.skypeUserConversationMember",
  "baseType": "microsoft.graph.conversationMember",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.skypeUserConversationMember",
  "id": "String (identifier)",
  "roles": [
    "String"
  ],
  "displayName": "String",
  "visibleHistoryStartDateTime": "String (timestamp)",
  "skypeId": "String"
}
```

