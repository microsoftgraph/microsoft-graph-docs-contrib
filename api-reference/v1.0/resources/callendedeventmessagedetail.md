---
title: "callEndedEventMessageDetail resource type"
description: "Represents the details of an event message about an ended call."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# callEndedEventMessageDetail resource type

Namespace: microsoft.graph

Represents the details of an event message about an ended call.
This message is generated when a call ends.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|callDuration|Duration|Duration of the call.|
|callEventType|teamworkCallEventType|Represents the call event type. Possible values are: `call`, `meeting`, `screenShare`, `unknownFutureValue`.|
|callId|String|Unique identifier of the call.|
|callParticipants|[callParticipantInfo](../resources/callparticipantinfo.md) collection|List of call participants.|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callEndedEventMessageDetail",
  "baseType": "microsoft.graph.eventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.callEndedEventMessageDetail",
  "callDuration": "String (duration)",
  "callEventType": "String",
  "callId": "String",
  "callParticipants": [
    {
      "@odata.type": "microsoft.graph.callParticipantInfo"
    }
  ],
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

## See also
- [Example response for an event message about an ended call](/graph/system-messages/#call-ended)
- For more information about other types of events, see [System messages](/graph/system-messages).

