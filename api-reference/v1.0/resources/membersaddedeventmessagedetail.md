---
title: "membersAddedEventMessageDetail resource type"
description: "Represents the details of an event message about members added."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# membersAddedEventMessageDetail resource type

Namespace: microsoft.graph

Represents the details of an event message about [members](../resources/conversationMember.md) added.
This message is generated when **members** are added to a [chat](../resources/chat.md), a [channel](../resources/channel.md), or a [team](../resources/team.md).
The **visibleHistoryStartDateTime** property for an event about **members** added to a **channel** is always set to `0001-01-01T00:00:00Z`, which indicates that all history is shared.

> **Note**: The **visibleHistoryStartDateTime** property for a [conversationMember](conversationmember.md) and the **membersAddedEventMessageDetail** message might have different values if the selected **shareHistoryTime** value for **members** in a **chat** is earlier than the initiator’s visible history time.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|
|members|[teamworkUserIdentity](../resources/teamworkuseridentity.md) collection|List of **members** added.|
|visibleHistoryStartDateTime|DateTimeOffset|The timestamp that denotes how far back a conversation's history is shared with the conversation members.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.membersAddedEventMessageDetail",
  "baseType": "microsoft.graph.eventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.membersAddedEventMessageDetail",
  "members": [
    {
      "@odata.type": "microsoft.graph.teamworkUserIdentity"
    }
  ],
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "visibleHistoryStartDateTime": "String (timestamp)"
}
```


## See also
- [Example response for an event message about **members** added](/graph/system-messages/#members-added)
- For more information about other types of events, see [System messages](/graph/system-messages).
