---
title: "channelRenamedEventMessageDetail resource type"
description: "Represents details for channel renamed event message"
author: "harshnat"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# channelRenamedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details for channel renamed event message.

This message is generated when a channel's name is updated.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|channelDisplayName|String|Updated name of the channel.|
|channelId|String|Unique identifier of the channel.|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.channelRenamedEventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.channelRenamedEventMessageDetail",
  "channelId": "String",
  "channelDisplayName": "String",
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

