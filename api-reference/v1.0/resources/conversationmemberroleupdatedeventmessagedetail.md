---
title: "conversationMemberRoleUpdatedEventMessageDetail resource type"
description: "Represents the details of an event message about an updated role of a conversation member in a channel or a team."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# conversationMemberRoleUpdatedEventMessageDetail resource type

Namespace: microsoft.graph

Represents the details of an event message about an updated role of a [conversation member](../resources/conversationMember.md) in a [channel](../resources/channel.md) or a [team](../resources/team.md).
This message is generated when the role of a **member** in a **channel** or a **team** is updated.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|
|conversationMemberRoles|String collection|Roles for the **coversation member** user.|
|conversationMemberUser|[teamworkUserIdentity](../resources/teamworkuseridentity.md)|Identity of the **conversation member** user.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.conversationMemberRoleUpdatedEventMessageDetail",
  "baseType": "microsoft.graph.eventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.conversationMemberRoleUpdatedEventMessageDetail",
  "conversationMemberRoles": [
    "String"
  ],
  "converstaionMemberUser": {
    "@odata.type": "microsoft.graph.teamworkUserIdentity"
  },
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```


## See also
- [Example response for an event message about an updated role of a **conversation member** in a **channel** or a **team**](/graph/system-messages/#conversation-member-role-updated)
- For more information about other types of events, see [System messages](/graph/system-messages).
