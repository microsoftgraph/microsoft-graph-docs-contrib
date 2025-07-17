---
title: "messagePinnedEventMessageDetail resource type"
description: "Represents the details of an event message about a pinned chat message."
author: "sumanac"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# messagePinnedEventMessageDetail resource type

Namespace: microsoft.graph

Represents the details of an event message about a pinned [chatMessage](../resources/chatmessage.md). This message is generated when a chat message is pinned.

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
  "@odata.type": "microsoft.graph.messagePinnedEventMessageDetail",
  "baseType": "microsoft.graph.eventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.messagePinnedEventMessageDetail",
  "eventDateTime": "String (timestamp)",
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

## Related content
- [Example response for an event message about a pinned chat message](/graph/system-messages/#message-pinned)
- [System messages](/graph/system-messages)
