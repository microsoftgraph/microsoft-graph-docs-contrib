---
title: "messageUnpinnedEventMessageDetail resource type"
description: "Represents the details of an event message about an unpinned chat message."
author: "sumanac"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# messageUnpinnedEventMessageDetail resource type

Namespace: microsoft.graph

Represents the details of an event message about an unpinned [chatMessage](../resources/chatmessage.md). This message is generated when a chat message is unpinned.

Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|eventDateTime|DateTimeOffset|Date and time when the event occurred.|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.messageUnpinnedEventMessageDetail",
  "baseType": "microsoft.graph.eventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.messageUnpinnedEventMessageDetail",
  "eventDateTime": "String (timestamp)",
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

## Related content
- [Example response for an event message about an unpinned chat message](/graph/system-messages/#message-unpinned)
- [System messages](/graph/system-messages)
