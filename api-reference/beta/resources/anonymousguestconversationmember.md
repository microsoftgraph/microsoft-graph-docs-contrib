---
title: "anonymousGuestConversationMember resource type"
description: "Represents an anonymous guest in a chat."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# anonymousGuestConversationMember resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an anonymous guest in a chat. 

Anonymous users do not have a Microsoft Teams identity and can join meetings using meeting join links. For more details, see [Anonymous users](/microsoftteams/non-standard-users#anonymous-users).


Inherits from [conversationMember](../resources/conversationmember.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|anonymousGuestId|String|Unique ID that represents the user. **Note:** This ID can change if the user leaves and rejoins the meeting, or joins from a different device.|
|displayName|String|Name provided by the user when joining the meeting. Inherited from [conversationMember](../resources/conversationmember.md).|
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
  "@odata.type": "microsoft.graph.anonymousGuestConversationMember",
  "baseType": "microsoft.graph.conversationMember",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.anonymousGuestConversationMember",
  "id": "String (identifier)",
  "roles": [
    "String"
  ],
  "displayName": "String",
  "visibleHistoryStartDateTime": "String (timestamp)",
  "anonymousGuestId": "String"
}
```

