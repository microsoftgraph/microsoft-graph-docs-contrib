---
title: "membersJoinedEventMessageDetail resource type"
description: "Represents the details of an event message about members joined."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# membersJoinedEventMessageDetail resource type

Namespace: microsoft.graph

Represents the details of an event message about [members](../resources/conversationMember.md) joined.
This message is generated when **members** join a meeting [chat](../resources/chat.md).


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|
|members|[teamworkUserIdentity](../resources/teamworkuseridentity.md) collection|List of **members** who joined the **chat**.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.membersJoinedEventMessageDetail",
  "baseType": "microsoft.graph.eventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.membersJoinedEventMessageDetail",
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
- [Example response for an event message about **members** joined](/graph/system-messages/#members-joined)
- For more information about other types of events, see [System messages](/graph/system-messages).
