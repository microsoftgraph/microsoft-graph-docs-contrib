---
title: "meetingPolicyUpdatedEventMessageDetail resource type"
description: "Represents details for meeting policy updated event message"
author: "harshnat"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# meetingPolicyUpdatedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details for meeting policy updated event message.

This message is generated when meeting option **Allow meeting chat** is updated.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|
|meetingChatEnabled|Boolean|Represents if the meeting chat is enabled or not.|
|meetingChatId|String|Unqiue identifier of the meeting chat.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.meetingPolicyUpdatedEventMessageDetail"
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

