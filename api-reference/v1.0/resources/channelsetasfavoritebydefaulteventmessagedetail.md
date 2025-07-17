---
title: "channelSetAsFavoriteByDefaultEventMessageDetail resource type"
description: "Represents the details of an event message about a channel set as favorite by default."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# channelSetAsFavoriteByDefaultEventMessageDetail resource type

Namespace: microsoft.graph

Represents the details of an event message about a [channel](../resources/channel.md) that the flag `isFavoriteByDefault` is set.

A **channel** is visible to all team members in the list of **channels** under a [team](../resources/team.md) if the flag `isFavoriteByDefault` is `true`.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|channelId|String|Unique identifier of the **channel**.|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.channelSetAsFavoriteByDefaultEventMessageDetail",
  "baseType": "microsoft.graph.eventMessageDetail"
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


## Related content
- [Example response for an event message about a **channel** set as favorite by default](/graph/system-messages/#channel-set-as-favorite-by-default)
- For more information about other types of events, see [System messages](/graph/system-messages).
