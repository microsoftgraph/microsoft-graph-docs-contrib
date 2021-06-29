---
title: "channelUnsetAsFavoriteByDefaultEventMessageDetail resource type"
description: "Represents details for channel unset as favorite by default event."
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# channelUnsetAsFavoriteByDefaultEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details of a channel for which 'favorite by default' flag has been unset. 
When the flag is unset for a specific channel, it will no longer be visible to all team members by default in the channel list under a team.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|channelId|String|Unique identifier of the channel.|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.channelUnsetAsFavoriteByDefaultEventMessageDetail",
  "baseType": "microsoft.graph.eventmessagedetail"
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


## See also
- [Example response](/graph/system-messages/#10.-Channel-unset-as-favorite-by-default)
- For more information about other types of events, see [System Messages](/graph/system-messages)