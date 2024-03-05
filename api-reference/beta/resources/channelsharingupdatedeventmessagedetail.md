---
title: "channelSharingUpdatedEventMessageDetail resource type"
description: "Represents the details of an event message about a shared channel."
author: "AgnesLiu"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# channelSharingUpdatedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of an event message about sharing a channel.
This message is generated when a channel with a **membershipType** of `shared` is shared.

Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|initiator|[identitySet](../resources/identityset.md)| Initiator of the event. |
|ownerTeamId|String| The ID of the team to which the shared channel belongs. |
|ownerTenantId|String| The ID of the tenant to which the shared channel belongs. |
|sharedChannelId|String| The ID of the shared channel. |

## JSON representation

The following JSON representation shows the resource type.

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
  "ownerTeamId": "String",
  "ownerTenantId": "String",
  "sharedChannelId": "String"
}
```

## Related content
- [Response example for an event message about a shared channel](/graph/system-messages/#channel-shared)
- [System messages](/graph/system-messages)
