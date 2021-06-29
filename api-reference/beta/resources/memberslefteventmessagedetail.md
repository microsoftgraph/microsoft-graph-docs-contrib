---
title: "membersLeftEventMessageDetail resource type"
description: "Represents details for members left event message."
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# membersLeftEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details for members left event message.
This message is generated when members leave a meeting chat.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|
|members|[teamworkUserIdentity](../resources/teamworkuseridentity.md) collection|List of members who left the chat.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.membersLeftEventMessageDetail",
  "baseType": "microsoft.graph.eventmessagedetail"
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


## See also
- [Example response](/graph/system-messages/#17.-Members-left)
- For more information about other types of events, see [System Messages](/graph/system-messages)