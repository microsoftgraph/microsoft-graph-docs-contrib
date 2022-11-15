---
title: "skypeForBusinessUserConversationMember resource type"
description: "Represents a Skype for Business user in a chat"
author: "RamjotSingh"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# skypeForBusinessUserConversationMember resource type

Namespace: microsoft.graph

Represents a Skype for Business user in a chat. 

For information about Teams and Skype for Business interoperability, see [Understand Microsoft Teams and Skype for Business coexistence and interoperability](/microsoftteams/teams-and-skypeforbusiness-coexistence-and-interoperability).

Inherits from [conversationMember](../resources/conversationmember.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name of the user. Inherited from [conversationMember](../resources/conversationmember.md).|
|id|String|Membership ID that represents this resource. Inherited from [entity](../resources/entity.md).|
|roles|String collection|Special roles for this user. Inherited from [conversationMember](../resources/conversationmember.md).|
|tenantId|String|ID of the tenant that the user belongs to.|
|userId|String|Azure Active Directory ID of the user.|
|visibleHistoryStartDateTime|DateTimeOffset|The timestamp denoting how far back a conversation's history is shared with the conversation member. Inherited from [conversationMember](../resources/conversationmember.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.skypeForBusinessUserConversationMember",
  "baseType": "microsoft.graph.conversationMember",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.skypeForBusinessUserConversationMember",
  "id": "String (identifier)",
  "roles": [
    "String"
  ],
  "displayName": "String",
  "visibleHistoryStartDateTime": "String (timestamp)",
  "userId": "String",
  "tenantId": "String"
}
```

