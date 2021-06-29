---
title: "callStartedEventMessageDetail resource type"
description: "Represents details for call started event message."
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# callStartedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details for call started event message.
This message is generated when a call has started.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|callEventType|teamworkCallEventType|Represents the call event type. Possible values are: `call`, `meeting`, `screenShare`, `unknownFutureValue`.|
|callId|String|Unique identifier of the call.|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callStartedEventMessageDetail",
  "baseType": "microsoft.graph.eventmessagedetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.callStartedEventMessageDetail",
  "callId": "String",
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "callEventType": "String"
}
```


## See also
- [Example response](/graph/system-messages/#3.-Call-started)
- For more information about other types of events, see [System Messages](/graph/system-messages)