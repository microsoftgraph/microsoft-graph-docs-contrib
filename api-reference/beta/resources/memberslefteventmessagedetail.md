---
title: "membersLeftEventMessageDetail resource type"
description: "Represents the details of an event message about members left."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# membersLeftEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of an event message about members left.
This message is generated when members leave a meeting chat.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|
|members|[teamworkUserIdentity](../resources/teamworkuseridentity.md) collection|List of members who left the chat.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.membersLeftEventMessageDetail",
  "baseType": "microsoft.graph.eventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.membersLeftEventMessageDetail",
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
- [Example response for an event message about members left](/graph/system-messages/#members-left)
- For more information about other types of events, see [System messages](/graph/system-messages).
