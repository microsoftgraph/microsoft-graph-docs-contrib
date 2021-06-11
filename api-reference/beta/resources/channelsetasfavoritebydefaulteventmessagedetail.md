---
title: "channelSetAsFavoriteByDefaultEventMessageDetail resource type"
description: "Reperesents details for channel set as favorite by default event. "
author: "harshnat"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# channelSetAsFavoriteByDefaultEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Reperesents details for channel set as favorite by default event.

This message is generated when a channel is set to be automatically shown in the channels list for all members.


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
  "@odata.type": "microsoft.graph.channelSetAsFavoriteByDefaultEventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.channelSetAsFavoriteByDefaultEventMessageDetail",
  "channelId": "String",
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

