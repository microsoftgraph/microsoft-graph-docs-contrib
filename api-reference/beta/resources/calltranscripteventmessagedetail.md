---
title: "callTranscriptEventMessageDetail resource type"
description: "Represents details for call transcript event message."
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# callTranscriptEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details for call transcript event message.
This message is generated when transcript is available for a call.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|callId|String|Unique identifier of the call.|
|callTranscriptICalUid|String|Unique identifier for a call transcript.|
|meetingOrganizer|[identitySet](../resources/identityset.md)|The organizer of the meeting.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callTranscriptEventMessageDetail",
  "baseType": "microsoft.graph.eventmessagedetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.callTranscriptEventMessageDetail",
  "callId": "String",
  "callTranscriptICalUid": "String",
  "meetingOrganizer": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```


## See also
- [Example response](/graph/system-messages/#4.-Call-transcript)
- For more information about other types of events, see [System Messages](/graph/system-messages)