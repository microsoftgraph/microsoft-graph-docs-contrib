---
title: "channelDeletedEventMessageDetail resource type"
description: "Represents the details of an event message about a channel deleted from a team."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# channelDeletedEventMessageDetail resource type

Namespace: microsoft.graph

Represents the details of an event message about a [channel](../resources/channel.md) deleted from a [team](../resources/team.md).
This message is generated when a standard **channel** is deleted from a **team**.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|channelDisplayName|String|Display name of the **channel**.|
|channelId|String|Unique identifier of the **channel**.|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.channelDeletedEventMessageDetail",
  "baseType": "microsoft.graph.eventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.channelDeletedEventMessageDetail",
  "channelDisplayName": "String",
  "channelId": "String",
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```


## See also
- [Example response for an event message about a **channel** deleted from a **team**](/graph/system-messages/#channel-deleted)
- For more information about other types of events, see [System messages](/graph/system-messages).
