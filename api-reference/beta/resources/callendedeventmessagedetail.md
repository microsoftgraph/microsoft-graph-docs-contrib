---
title: "callEndedEventMessageDetail resource type"
description: "Represents the details of an event message about an ended call."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# callEndedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of an event message about an ended call.
This message is generated when a call ends.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|callDuration|Duration|Duration of the call.|
|callEventType|teamworkCallEventType|Represents the call event type. The possible values are: `call`, `meeting`, `screenShare`, `unknownFutureValue`.|
|callId|String|Unique identifier of the call.|
|callParticipants|[callParticipantInfo](../resources/callparticipantinfo.md) collection|List of call participants.|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callEndedEventMessageDetail",
  "baseType": "microsoft.graph.eventMessageDetail"
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
  "callDuration": "String (duration)",
  "callEventType": "String"
}
```

## Related content
- [Example response for an event message about an ended call](/graph/system-messages/#call-ended)
- For more information about other types of events, see [System messages](/graph/system-messages).

