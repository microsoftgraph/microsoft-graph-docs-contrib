---
title: "channelUnsetAsFavoriteByDefaultEventMessageDetail resource type"
description: "Represents the details of an event message about a channel unset as favorite by default."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# channelUnsetAsFavoriteByDefaultEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of an event message about a channel that the flag 'isFavoriteByDefault' is unset.
A channel is no longer visible to all team members in the list of channels under a team if it has the flag 'isFavoriteByDefault' set to false.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|channelId|String|Unique identifier of the channel.|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.channelUnsetAsFavoriteByDefaultEventMessageDetail",
  "baseType": "microsoft.graph.eventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.channelUnsetAsFavoriteByDefaultEventMessageDetail",
  "channelId": "String",
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```


## Related content
- [Example response for an event message about a channel unset as favorite by default](/graph/system-messages/#channel-unset-as-favorite-by-default)
- For more information about other types of events, see [System messages](/graph/system-messages).
