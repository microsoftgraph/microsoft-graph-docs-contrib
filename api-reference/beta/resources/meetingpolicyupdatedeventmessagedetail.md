---
title: "meetingPolicyUpdatedEventMessageDetail resource type"
description: "Represents the details of an event message about an updated meeting policy."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# meetingPolicyUpdatedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of an event message about an updated meeting policy.
This message is generated when the meeting option **Allow meeting chat** is updated.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|
|meetingChatEnabled|Boolean|Represents whether the meeting chat is enabled or not.|
|meetingChatId|String|Unique identifier of the meeting chat.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.meetingPolicyUpdatedEventMessageDetail",
  "baseType": "microsoft.graph.eventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.meetingPolicyUpdatedEventMessageDetail",
  "meetingChatId": "String",
  "meetingChatEnabled": "Boolean",
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```


## Related content
- [Example response for an event message about an updated meeting policy](/graph/system-messages/#meeting-policy-updated)
- For more information about other types of events, see [System messages](/graph/system-messages).
