---
title: "callStartedEventMessageDetail resource type"
description: "Represents the details of an event message about call started."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# callStartedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of an event message about call started.
This message is generated when a call starts.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|callEventType|teamworkCallEventType|Represents the call event type. The possible values are: `call`, `meeting`, `screenShare`, `unknownFutureValue`.|
|callId|String|Unique identifier of the call.|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callStartedEventMessageDetail",
  "baseType": "microsoft.graph.eventMessageDetail"
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


## Related content
- [Example response for an event message about call started](/graph/system-messages/#call-started)
- For more information about other types of events, see [System messages](/graph/system-messages).
