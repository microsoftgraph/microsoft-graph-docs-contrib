---
title: "channelSharingUpdatedEventMessageDetail resource type"
description: "Represents the details of an event message about sharing a channel."
author: "AgnesLiu"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# channelSharingUpdatedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of an event message about sharing a channel.
This message is generated when a shared channel is shared.

Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|initiator|[identitySet](../resources/intune-identityset.md)| Initiator of the event. |
|ownerTeamId|String| The Id for the team which shared channel belongs to. |
|ownerTenantId|String| The Id for the tenant which shared channel belongs to. |
|sharedChannelId|String| The Id for the thread which is shared. |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.channelSharingUpdatedEventMessageDetail",
  "baseType": "microsoft.graph.eventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.channelSharingUpdatedEventMessageDetail",
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "sharedChannelId": "String",
  "ownerTeamId": "String",
  "ownerTenantId": "String"
}
```

