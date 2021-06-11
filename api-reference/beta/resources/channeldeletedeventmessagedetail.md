---
title: "channelDeletedEventMessageDetail resource type"
description: "Represents details for a channel deleted event"
author: "harshnat"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# channelDeletedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details for a channel deleted event.

This message is generated when a standard channel is deleted from a team.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|channelDisplayName|String|Display name of the channel.|
|channelId|String|Unique identifier of the channel.|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.channelDeletedEventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.channelDeletedEventMessageDetail",
  "channelId": "String",
  "channelDisplayName": "String",
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

