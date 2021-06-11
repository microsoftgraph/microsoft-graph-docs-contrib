---
title: "conversationMemberRoleUpdatedEventMessageDetail resource type"
description: "Represents details for conversation member role updated event."
author: "harshnat"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# conversationMemberRoleUpdatedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details for conversation member role updated event.

This message is generated when conversation member user's role is updated.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|conversationMemberRoles|String collection|Roles for the coversation member user.|
|conversationMemberUser|[identity](../resources/identity.md)|Identity of the conversation member user.|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.conversationMemberRoleUpdatedEventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.conversationMemberRoleUpdatedEventMessageDetail",
  "conversationMemberRoles": [
    "String"
  ],
  "converstaionMemberUser": {
    "@odata.type": "microsoft.graph.identity"
  },
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

