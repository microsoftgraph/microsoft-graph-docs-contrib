---
title: "callTranscriptEventMessageDetail resource type"
description: "Represents the details of an event message about call transcript."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# callTranscriptEventMessageDetail resource type

Namespace: microsoft.graph

Represents the details of an event message about call transcript.
This message is generated when transcript is available for a call.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|callId|String|Unique identifier of the call.|
|callTranscriptICalUid|String|Unique identifier for a call transcript.|
|meetingOrganizer|[identitySet](../resources/identityset.md)|The organizer of the meeting.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callTranscriptEventMessageDetail",
  "baseType": "microsoft.graph.eventMessageDetail"
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


## Related content
- [Example response for an event message about call transcript](/graph/system-messages/#call-transcript)
- For more information about other types of events, see [System messages](/graph/system-messages).
