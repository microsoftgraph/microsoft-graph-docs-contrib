---
title: "membersDeletedEventMessageDetail resource type"
description: "Represents the details of an event message about members deleted."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# membersDeletedEventMessageDetail resource type

Namespace: microsoft.graph

Represents the details of an event message about [members](../resources/conversationMember.md) deleted.
This message is generated when **members** are removed from a [chat](../resources/chat.md), a [channel](../resources/channel.md), or a [team](../resources/team.md).


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|
|members|[teamworkUserIdentity](../resources/teamworkuseridentity.md) collection|List of **members** deleted.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.membersDeletedEventMessageDetail",
  "baseType": "microsoft.graph.eventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.membersDeletedEventMessageDetail",
  "members": [
    {
      "@odata.type": "microsoft.graph.teamworkUserIdentity"
    }
  ],
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```


## Related content
- [Example response for an event message about **members** deleted](/graph/system-messages/#members-deleted)
- For more information about other types of events, see [System messages](/graph/system-messages).
