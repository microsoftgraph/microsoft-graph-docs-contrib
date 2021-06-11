---
title: "callEndedEventMessageDetail resource type"
description: "Represents details for call ended event message."
author: "harshnat"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# callEndedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details for call ended event message.

This message is generated when a call has ended.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|callDuration|Duration|Duration of the call.|
|callId|String|Unique identifier of the call.|
|callParticipants|[callParticipantInfo](../resources/callparticipantinfo.md) collection|List of call participants.|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callEndedEventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.callEndedEventMessageDetail",
  "callId": "String",
  "callParticipants": [
    {
      "@odata.type": "microsoft.graph.callParticipantInfo"
    }
  ],
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "callDuration": "String (duration)"
}
```

